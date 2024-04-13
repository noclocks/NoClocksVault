

## Scripting Kit

### Error Codes

[[Shell Exit Codes]]

<details><summary>View Error Code Declarations Script</summary><p>

```shell
# ------------------------------------------------
# EXIT CODES
# ------------------------------------------------
EXIT_SUCCESS=0
EXIT_FAILURE=1
EXIT_USAGE=2
EXIT_DATAERR=65
EXIT_NOINPUT=66
EXIT_NOUSER=67
EXIT_NOHOST=68
EXIT_UNAVAILABLE=69
EXIT_SOFTWARE=70
EXIT_OSERR=71
EXIT_OSFILE=72
EXIT_CANTCREATE=73
EXIT_IOERR=74
EXIT_TEMPFAIL=75
EXIT_PROTOCOL=76
EXIT_NOPERM=77
EXIT_CONFIG=78
EXIT_QUIT=80
EXIT_KYC=81
EXIT_UPDATE=89
EXIT_CONFLICT=90
EXIT_UNLAWFUL=91
EXIT_PAYMENT_ISSUE=92
EXIT_QUOTA_ISSUE=93
EXIT_BUSY=100
EXIT_TIMEOUT=101
EXIT_LOCKOUT=102
EXIT_LOOP=103
EXIT_MOVED_PERMANENTLY=110
EXIT_MOVED_TEMPORARILY=111
EXIT_GONE=112
EXIT_FUTURE=119
EXIT_GIT_BISECT_SKIP=125
EXIT_COMMAND_FOUND_BUT_NOT_EXECUTABLE=126
EXIT_COMMAND_NOT_FOUND=127
EXIT_CODE_INVALID=128
```

</p></details>

### Input Output Helpers

- `out()`: Prints output message to stdout using `printf` for consistency across systems.
- `err()`: Prints error messages to stderr, using `printf` for better control over formatting.
- `die()`: Prints an error message to stderr and exits with a specified error code.
- `big()`: Prints a large banner to stdout, formatted for clear visibility and human readability.
- `log()`: Logs a message with a datestamp, unique random ID, hostname, and process ID.
- `zid()`: Generates a 32-bit secure random lowercase hexadecimal identifier.
- `ask()`: Prompts the user for input and returns a trimmed string.

<details><summary>View Input Output Helper Functions Script</summary><p>

```shell
out() {
        printf %s\\n "$*"
}

err() {
        >&2 printf %s\\n "$*"
}

die() {
       n="$1" ; shift ; >&2 printf %s\\n "$*" ; exit "$n"
}

big() {
        printf \\n###\\n#\\n#\ %s\\n#\\n###\\n\\n "$*"
}

log() {
        printf '%s %s %s %s\n' "$( now )" "$( zid )" "$( hostname )" $$ "$*"
}

zid() {
        hexdump -n 16 -v -e '16/1 "%02x" "\n"' /dev/random
}

ask() {
        read x ; echo "$x" | sed 's/^[[:space:]]*//; s/[[:space:]]*$//'
}
```

</p></details>

### Date-Time Helpers

- `now()`: Gets the current date and time in UTC in ISO format with nanosecond precision.
- `now_date()`: Retrieves the current date in UTC using ISO format YYYY-MM-DD.
- `sec()`: Returns the current time in POSIX seconds since the Unix epoch.
- `age()`: Calculates the age in seconds of a given timestamp from the current time.
- `newer()`: Checks if the age of a given timestamp is newer (less) than a specified number of seconds.
- `older()`: Determines if the age of a given timestamp is older (more) than a specified number of seconds.

<details><summary>View Date-Time Helpers Script</summary><p>

```shell
now() {
        date -u "+%Y-%m-%dT%H:%M:%S.%N+00:00" "$@" | sed 's/N/000000000/'
}

now_date() {
        date -u "+%Y-%m-%d" "$@"
}

sec() {
        date "+%s" "$@"
}

age() {
        printf %s\\n "$(( $(date "+%s") - $1 ))"
}

newer() {
        [ "$(( $(date "+%s") - $1 ))" -lt "$2" ]
}

older() {
        [ "$(( $(date "+%s") - $1 ))" -gt "$2" ]
}
```

</p></details>

### Todo

```shell
##
# Validation helpers
##

# directory_exists: does a directory exist?
#
# Example:
# ```
# directory_exists /usr
# => true
#
# directory_exists /loremipsum
# => false
# ```
directory_exists() {
        test -d "$1"
}

# directory_exists_or_die: ensure a directory exists.
#
# Example:
# ```
# directory_exists_or_die /usr
# => true
#
# directory_exists_or_die /loremipsum
# STDERR=> Directory needed: /loremipsum
# => exit $EXIT_IOERR
# ```
directory_exists_or_die() {
        directory_exists "$1" || die "$EXIT_IOERR" "Directory needed: $1"
}

# file_exists: does a file exist?
#
# Example:
# ```
# file_exists foo.txt
# => true
#
# file_exists loremipsum.txt
# => false
# ```
file_exists() {
        test -f "$1"
}

# file_exists_or_die: ensure a file exists.
#
# Example:
# ```
# file_exists_or_die foo.txt
# => true
#
# file_exists_or_die loremipsum.txt
# STDERR=> File needed: loremipsum.txt
# => exit $EXIT_IOERR
# ```
file_exists_or_die() {
        file_exists "$1" || die "$EXIT_IOERR" "File needed: $1"
}

# symlink_exists: does a symlink exist?
#
# Example:
# ```
# symlink_exists foo.txt
# => true
#
# symlink_exists loremipsum.txt
# => false
# ```
symlink_exists() {
        test -h "$1"
}

# symlink_exists_or_die: ensure a symlink exists.
#
# Example:
# ```
# symlink_exists_or_die foo.txt
# => true
#
# symlink_exists_or_die loremipsum.txt
# STDERR=> Symlink needed: loremipsum.txt
# => exit $EXIT_IOERR
# ```
symlink_exists_or_die() {
        symlink_exists "$1" || die "$EXIT_IOERR" "Symlink needed: $1"
}

# command_exists: does a command exist?
#
# Example:
# ```
# command_exists grep
# => true
#
# command_exists curl
# => false
# ```
command_exists() {
        command -v "$1" >/dev/null 2>&1
}

# command_exists_or_die: ensure a command exists.
#
# Example:
# ```
# command_exists_or_die grep
# => true
#
# command_exists_or_die loremipsum
# STDERR=> Command needed: loremipsum
# => exit 1
# ```
command_exists_or_die() {
        command_exists "$1" || die "$EXIT_UNAVAILABLE" "Command needed: $1"
}

# command_version_exists_or_die: ensure a command version exists.
#
# Example:
# ```
# command_version_exists_or_die grep 2.2 1.1
# => true
#
# version_or_die grep 2.2 3.3
# STDERR=> Command version needed: grep >= 3.x
# => exit 1
# ```
command_version_exists_or_die() {
        command_exists "$1" && version "$2" "$3" || die "$EXIT_UNAVAILABLE" "Command version needed: $1 >= $2 (not ${3:-?})"
}

# var_exists: does a variable exist?
#
# Example:
# ```
# var_exists HOME
# => true
#
# var_exists FOO
# => false
# ```
var() {
        ! eval 'test -z ${'$1'+x}'
}

# var_exists_or_die: ensure a variable exists.
#
# Example:
# ```
# var_exists_or_die HOME
# => true
#
# var_exists_or_die FOO
# STDERR=> Variable needed: FOO
# => exit 1
# ```
var_exists_or_die() {
        var_exists "$1" || die "$EXIT_CONFIG" "Variable needed: $1"
}

# version: is a version sufficient?
#
# Example:
# ```
# version 1.1 2.2
# => true
#
# version 3.3 2.2
# => false
# ```
version() {
        [ "$(cmp_digits "$1" "$2")" -le 0 ]
}

# version_or_die: ensure a version is sufficient.
#
# Example:
# ```
# version_or_die 1.1 2.2
# => true
#
# version_or_die 3.3 2.2
# STDERR=> Version needed: >= 3.3 (not 2.2)
# ```
version_or_die() {
        version "$1" "$2" || die "$EXIT_CONFIG" "Version needed: >= $1 (not ${2:-?})"
}

##
# Number helpers
##

# int: convert a number string to an integer number string.
#
# Example:
# ```
# int 1.23
# => 1
# ```
int() {
        printf %s\\n "$1" | awk '{ print int($0); exit }'
}

# sum: print the sum of numbers.
#
# Example:
# ```
# sum 1 2 3
# => 6
# ```
sum() {
        awk '{for(i=1; i<=NF; i++) sum+=$i; } END {print sum}'
}

##
# Comparison helpers
##

# cmp_alnums: compare alnums as groups, such as for word version strings.
#
# Example:
#
# ```
# cmp_alnums "a.b.c" "a.b.c"
# => 0 (zero means left == right)
#
# cmp_alnums "a.b.c" "a.b.d"
# => -1 (negative one means left < right)
#
# cmp_alnums "a.b.d" "a.b.c"
# => 1 (positive one means left > right)
# ```
#
cmp_alnums() {
        if [ "$1" = "$2" ]; then
                echo "0"; return 0
        fi
	a=$(printf %s\\n "$1" | sed 's/^[^[:alnum:]]*//')
	b=$(printf %s\\n "$2" | sed 's/^[^[:alnum:]]*//')
	while true; do
		x=$(printf %s\\n "$a" | sed 's/[^[:alnum:]].*//')
		y=$(printf %s\\n "$b" | sed 's/[^[:alnum:]].*//')
		if [ "$x" = "" ] && [ "$y" = "" ]; then
			echo "0"; return 0
		fi
		if [ "$x" = "" ] || [ "$(expr "$x" \< "$y")" = 1 ]; then
			echo "-1"; return 0
		fi
		if [ "$y" = "" ] || [ "$(expr "$x" \> "$y")" = 1 ]; then
			echo "1"; return 0
		fi
		a=$(printf %s\\n "$a" | sed 's/^[[:alnum:]]*[^[:alnum:]]*//')
		b=$(printf %s\\n "$b" | sed 's/^[[:alnum:]]*[^[:alnum:]]*//')
	done
}

# cmp_digits: compare digits as groups, such as for numeric version strings.
#
# Example:
#
# ```
# cmp_digits 1.2.3 1.2.3
# => 0 (zero means left == right)
#
# cmp_digits 1.2.3 1.2.4
# => -1 (negative one means left < right)
#
# cmp_digits 1.2.4 1.2.3
# => 1 (positive one means left > right)
# ```
#
cmp_digits() {
        if [ "$1" = "$2" ]; then
                echo "0"; return 0
        fi
	a=$(printf %s\\n "$1" | sed 's/^[^[:digit:]]*//')
	b=$(printf %s\\n "$2" | sed 's/^[^[:digit:]]*//')
	while true; do
		x=$(printf %s\\n "$a" | sed 's/[^[:digit:]].*//')
		y=$(printf %s\\n "$b" | sed 's/[^[:digit:]].*//')
		if [ "$x" = "" ] && [ "$y" = "" ]; then
			echo "0"; return 0
		fi
		if [ "$x" = "" ] || [ $x -lt $y ]; then
			echo "-1"; return 0
		fi
		if [ "$y" = "" ] || [ $x -gt $y ]; then
			echo "1"; return 0
		fi
		a=$(printf %s\\n "$a" | sed 's/^[[:digit:]]*[^[:digit:]]*//')
		b=$(printf %s\\n "$b" | sed 's/^[[:digit:]]*[^[:digit:]]*//')
	done
}

##
# Extensibility helpers
##

# dot_all: source all the executable files in a given directory and subdirectories.
#
# Example:
# ```
# dot_all ~/temp
# => . ~/temp/a.sh
# => . ~/temp/b.pl
# => . ~/temp/c.js
# ```
dot_all() {
        find "${1:-.}" -type f \( -perm -u=x -o -perm -g=x -o -perm -o=x \) -exec test -x {} \; -exec . {} \;
}

# run_all: run all the executable commands in a given directory and subdirectories.
#
# Example:
# ```
# run_all ~/temp
# => ~/temp/a.sh
# => ~/temp/b.pl
# => ~/temp/c.js
# ```
run_all() {
        find "${1:-.}" -type f \( -perm -u=x -o -perm -g=x -o -perm -o=x \) -exec test -x {} \; -exec {} \;
}

# sh_all: shell all the executable commands in a given directory and subdirectories.
#
# Example:
# ```
# sh_all ~/temp
# => sh -c ~/temp/a.sh
# => sh -c ~/temp/b.pl
# => sh -c ~/temp/c.js
# ```
sh_all() {
        find "${1:-.}" -type f \( -perm -u=x -o -perm -g=x -o -perm -o=x \) -exec test -x {} \; -print0 | xargs -0I{} -n1 sh -c "{}"
}

# rm_all: remove all files in a given directory and subdirectories-- use with caution.
#
# Example:
# ```
# rm_all ~/temp
# => rm ~/temp/a.sh
# => rm ~/temp/b.pl
# => rm ~/temp/c.js
# ```
rm_all() {
        find "${1:-.}" -type f -exec rm {} \;
}

##
# Text helpers
##

# trim: remove any space characters at the text's start or finish.
#
# Example:
# ```
# trim "  foo  "
# => foo
#```
trim() {
        printf %s\\n "$*" | sed 's/^[[:space:]]*//; s/[[:space:]]*$//'
}

# slug: convert a string from any characters to solely lowercase and single internal dash characters.
#
# Example:
# ```
# slug "**Foo** **Goo** **Hoo**"
# => foo-goo-hoo
#```
slug() {
        printf %s\\n "$*" | sed 's/[^[:alnum:]]/-/g; s/--*/-/g; s/^-*//; s/-*$//;' | tr '[[:upper:]]' '[[:lower:]]'
}

# slugs: convert a string from any characters to solely lowercase and single internal dash characters and slash characters.
#
# Example:
# ```
# slugs "**Foo** / **Goo** / **Hoo**"
# => foo/goo/hoo
#```
slugs(){
        printf %s\\n "$*" | sed 's/[^[:alnum:]\/]/-/g; s/--*/-/g; s/^-*//; s/-*$//; s/-*\/-*/\//g' | tr '[[:upper:]]' '[[:lower:]]'
}

# upper_format: convert text from any lowercase letters to uppercase letters.
#
# Example:
# ```
# upper_format AbCdEf
# => ABCDEF
#```
upper_format() {
        printf %s\\n "$*" | tr '[[:lower:]]' '[[:upper:]]'
}

# lower_format: convert text from any uppercase letters to lowercase letters.
#
# Example:
# ```
# lower_format AbCdEf
# => abcdef
#```
lower_format() {
        printf %s\\n "$*" | tr '[[:upper:]]' '[[:lower:]]'
}

# chain_format: convert a string from any characters to solely alphanumeric and single internal dash characters.
#
# Example:
# ```
# chain_format "**Foo** **Goo** **Hoo**"
# => Foo-Goo-Hoo
#```
chain_format() {
        printf %s\\n "$*" | sed 's/[^[:alnum:]]\{1,\}/-/g; s/-\{2,\}/-/g; s/^-\{1,\}//; s/-\{1,\}$//;'
}

# snake_format: convert a string from any characters to solely alphanumeric and single internal underscore characters.
#
# Example:
# ```
# snake_format "**Foo** **Goo** **Hoo**"
# => Foo_Goo_Hoo
#```
snake_format() {
        printf %s\\n "$*" | sed 's/[^[:alnum:]]\{1,\}/_/g; s/_\{2,\}/_/g; s/^_\{1,\}//; s/_\{1,\}$//;'
}

# space_format: convert a string from any characters to solely alphanumeric and single internal space characters.
#
# Example:
# ```
# space_format "**Foo** **Goo** **Hoo**"
# => Foo Goo Hoo
#```
space_format() {
        printf %s\\n "$*" | sed 's/[^[:alnum:]]\{1,\}/ /g; s/ \{2,\}/ /g; s/^ \{1,\}//; s/ \{1,\}$//;'
}

# touch_format: convert a string from any characters to solely a command "touch -t" timestamp format.
#
# Example:
# ```
# touch_format "Foo  2021-05-04 22:57:54 Goo"
# => 202105042257.54
#```
touch_format() {
        printf %s\\n "$*" | sed 's/[^[:digit:]]//g; s/^\([[:digit:]]\{12\}\)\([[:digit:]]\{2\}\)/\1.\2/;'
}

# select_character_class: get a string's characters that match a class, with optional offset and length.
#
# Syntax:
# ```
# select_character_class <string> <class> [offset [length]]
# ```
#
# Example with character class:
# ```
# select_character_class foo123goo456 alpha
# => foogoo
# ```
#
# Example with character class and substring offset:
# ```
# select_character_class foo123goo456 alpha 3
# => goo
# ```
#
# Example with character class and substring offset and length:
# ```
# select_character_class foo123goo456 alpha 3 1
# => g
# ```
select_character_class() {
	string=${1//[^[:$2:]]/}
	offset=${3:-0}
	length=${4:-${#string}}
	printf %s\\n ${string:$offset:$length}
}

# reject_character_class: get a string's characters that don't match a class, with optional offset and length.
#
# Syntax:
# ```
# reject_character_class <string> <class> [offset [length]]
# ```
#
# Example with character class:
# ```
# reject_character_class foo123goo456 alpha
# => -123--456
# ```
#
# Example with character class and substring offset:
# ```
# reject_character_class foo123goo456 alpha 6
# => 456
# ```
#
# Example with character class and substring offset and length:
# ```
# reject_character_class foo123goo456 alpha 6 1
# => 4
# ```
reject_character_class() {
	string=${1//[[:$2:]]/}
	offset=${3:-0}
	length=${4:-${#string}}
	printf %s\\n ${string:$offset:$length}
}

##
# Random character helpers
##

# random_char
#
# Syntax:
# ```
# random_char [characters [length]]
# ```
#
# Example:
# ```
# random_char ABCDEF 8
# => CBACBFDD
#```
#
# Example hexadecimal digit uppercase:
# ```
# random_char 0-9A-F 8
# => FC56A95C
#```
#
# Example character class for uppercase letters:
# ```
# random_char '[:upper:]' 8
# => ZMGIQBJB
#```
#
# POSiX character classes for ASCII characters:
#
# ```
# Class       Pattern        Description
# ----------  -------------  -----------
# [:upper:]   [A-Z]          uppercase letters
# [:lower:]   [a-z]          lowercase letters
# [:alpha:]   [A-Za-z]       uppercase letters and lowercase letters
# [:alnum:]   [A-Za-z0-9]    uppercase letters and lowercase letters and digits
# [:digit:]   [0-9]          digits
# [:xdigit:]  [0-9A-Fa-f]    hexadecimal digits
# [:punct:]                  punctuation (all graphic characters except letters and digits)
# [:blank:]   [ \t]          space and TAB characters only
# [:space:]   [ \t\n\r\f\v]  whitespace characters (space, tab, newline, return, feed, vtab)
# [:cntrl:]                  control characters
# [:graph:]   [^ [:cntrl:]]  graphic characters (all characters which have graphic representation)
# [:print:]   [[:graph:] ]   graphic characters and space
# ```
random_char() {
        chars=${1:-'[:graph:]'}
        len=${2-1}
        printf "%s\n" $(LC_ALL=C < /dev/urandom tr -dc "$chars" | head -c"$len")
}

# random_char_alnum: random characters using [:alnum:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_alnum 8
# => 1Yp7M7wc
#```
random_char_alnum() {
        random_char '[:alnum:]' "$@"
}

# random_char_alpha: random characters using [:alpha:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_alpha 8
# => dDSmQlYD
#```
random_char_alpha() {
        random_char '[:alpha:]' "$@"
}

# random_char_blank: random characters using [:blank:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_blank 8
# => "  \t  \t  \t"
#```
random_char_blank() {
        random_char '[:blank:]' "$@"
}

# random_char_cntrl: random characters using [:cntrl:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_cntrl 8
# => "^c^m^r^z^a^e^p^u"
#```
random_char_cntrl() {
        random_char '[:cntrl:]' "$@"
}

# random_char_digit: random characters using [:digit:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_digit 8
# => 36415110
#```
random_char_digit() {
        random_char '[:digit:]' "$@"
}

# random_char_graph: random characters using [:graph:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_graph 8
# => e'2-3d+9
#```
random_char_graph() {
        random_char '[:graph:]' "$@"
}

# random_char_lower: random characters using [:lower:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_lower 8
# => pgfqrefo
#```
random_char_lower() {
        random_char '[:lower:]' "$@"
}

# random_char_lower_digit: random characters using [:lower:][:digit] classes
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_lower_digit 8
# => 69m7o83i
#```
random_char_lower_digit() {
        random_char '[:lower:][:digit:]' "$@"
}

# random_char_upper: random characters using [:upper:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_upper 8
# => EGXUHNIM
#```
random_char_upper() {
        random_char '[:upper:]' "$@"
}

# random_char_upper_digit: random characters using [:upper:][:digit:] classes
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_upper_digit 8
# => L2PT37H6
#```
random_char_upper_digit() {
        random_char '[:upper:][:digit:]' "$@"
}

# random_char_print: random characters using [:print:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_print 8
# => ),zN87K;
#```
random_char_print() {
        random_char '[:print:]' "$@"
}

# random_char_space: random characters using [:space:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_space 8
# => "\n \t\r \v \f"
#```
random_char_space() {
        random_char '[:space:]' "$@"
}

# random_char_xdigit: random characters using [:xdigit:] class.
#
# Syntax:
# ```
# random_char_alnum [length]
# ```
#
# Example:
# ```
# random_char_xdigit 8
# => eC3Ce9eD
#```
random_char_xdigit() {
        random_char '[:xdigit:]' "$@"
}

##
# Array helpers
##

# array_n: get the array number of fields a.k.a. length a.k.a. size.
#
# Example:
# ```
# set -- a b c d
# array_n "$@"
# => 4
# ```
array_n() {
        printf %s "$#"
}

# array_i: get the array item at index `i` which is 1-based.
#
# Example:
# ```
# set -- a b c d
# array_i "$@" 3
# => c
# ```
#
# POSIX syntax uses an array index that starts at 1.
#
# Bash syntax uses an array index that starts at 0.
#
# Bash syntax can have more power this way if you prefer it:
#
# ```
# [ $# == 3 ] && awk -F "$2" "{print \$$3}" <<< "$1" || awk "{print \$$2}" <<< "$1"
# ```
array_i() {
        for __array_i_i in "$@"; do true; done
        if [ "$__array_i_i" -ge 1 -a "$__array_i_i" -lt $# ]; then
                __array_i_j=1
                for __array_i_x in "$@"; do
                        if [ "$__array_i_j" -eq "$__array_i_i" ]; then
                                printf %s "$__array_i_x"
                                return
                        fi
                        __array_i_j=$((__array_i_j+1))
                done
        fi
        exit $EXIT_USAGE
}

# array_first: get the array's first item.
#
# Example:
# ```
# set -- a b c d
# array_first "$@"
# => a
# ```
array_first() {
        printf %s "$1"
}

# array_last: get the array's last item.
#
# Example:
# ```
# set -- a b c d
# array_last "$@"
# => d
# ```
array_last() {
        for __array_last_x in "$@"; do true; done
        printf %s "$__array_last_x"
}

# array_car: get the array's car item a.k.a. first item.
#
# Example:
# ```
# set -- a b c d
# array_car "$@"
# => a
# ```
array_car() {
        printf %s "$1"
}

# array_cdr: get the array's cdr items a.k.a. everything after the first item.
#
# Example:
# ```
# set -- a b c
# array_cdr "$@"
# => b c d
# ```
array_cdr() {
        shift
        printf %s "$*"
}

##
# Assert helpers
##

# assert_test: assert a test utility command succeeds.
#
# Example:
# ```
# assert_test -x program.sh
# => success i.e. no output
#
# assert_test -x notes.txt
# STDERR=> assert_test -x notes.txt
# ```
assert_test() {
        test "$1" "$2" || err assert_test "$@"
}

# assert_empty: assert an item is empty.
#
# Example:
# ```
# assert_empty ""
# => success i.e. no output
#
# assert_empty foo
# STDERR=> assert_empty foo
# ```
assert_empty() {
        [ -z "$1" ] || err assert_empty "$@"
}

# assert_not_empty: assert an item is not empty.
#
# Example:
# ```
# assert_not_empty foo
# => success i.e. no output
#
# assert_not_empty ""
# STDERR=> assert_not_empty
# ```
assert_not_empty() {
        [ -z "$1" ] || err assert_not_empty "$@"
}

# assert_int_eq: assert an integer is equal to another integer.
#
# Example:
# ```
# assert_int_eq 1 1
# => success i.e. no output
#
# assert_int_eq 1 2
# STDERR=> assert_int_eq 1 2
# ```
assert_int_eq() {
        [ "$1" -eq "$2" ] || err assert_int_eq "$@"
}

# assert_int_ne: assert an integer is not equal to another integer.
#
# Example:
# ```
# assert_int_eq 1 2
# => success i.e. no output
#
# assert_int_eq 1 1
# STDERR=> assert_int_ne 1 1
# ```
assert_int_ne() {
        [ "$1" -ne "$2" ] || err assert_int_equal "$@"
}

# assert_int_ge: assert an integer is greater than or equal to another integer.
#
# Example:
# ```
# assert_int_ge 2 1
# => success i.e. no output
#
# assert_int_ge 1 2
# STDERR=> assert_int_ge 1 2
# ```
assert_int_ge() {
        [ "$1" -ge "$2" ] || err assert_int_ge "$@"
}

# assert_int_gt: assert an integer is greater than another integer.
#
# Example:
# ```
# assert_int_gt 2 1
# => success i.e. no output
#
# assert_int_gt 1 2
# STDERR=> assert_int_gt 1 2
# ```
assert_int_gt() {
        [ "$1" -gt "$2" ] || err assert_int_gt "$@"
}

# assert_int_le: assert an integer is less than or equal to another integer.
#
# Example:
# ```
# assert_int_le 1 2
# => success i.e. no output
#
# assert_int_le 2 1
# STDERR=> assert_int_le 2 1
# ```
assert_int_le() {
        [ "$1" -le "$2" ] || err assert_int_le "$@"
}

# assert_int_lt: assert an integer is less than to another integer.
#
# Example:
# ```
# assert_int_lt 1 2
# => success i.e. no output
#
# assert_int_lt 2 1
# STDERR=> assert_int_lt 2 1
# ```
assert_int_lt() {
        [ "$1" -lt "$2" ] || err assert_int_lt "$@"
}

# assert_str_eq: assert a string is equal to another string.
#
# Example:
# ```
# assert_str_eq 1 1
# => success i.e. no output
#
# assert_str_eq 1 2
# STDERR=> assert_str_eq 1 2
# ```
assert_str_eq() {
        [ "$1" -eq "$2" ] || err assert_str_eq "$@"
}

# assert_str_ne: assert a string is not equal to another string.
#
# Example:
# ```
# assert_str_eq 1 2
# => success i.e. no output
#
# assert_str_eq 1 1
# STDERR=> assert_str_ne 1 1
# ```
assert_str_ne() {
        [ "$1" -ne "$2" ] || err assert_str_equal "$@"
}

# assert_str_ge: assert a string is greater than or equal to another string.
#
# Example:
# ```
# assert_str_ge 2 1
# => success i.e. no output
#
# assert_str_ge 1 2
# STDERR=> assert_str_ge 1 2
# ```
assert_str_ge() {
        [ "$1" -ge "$2" ] || err assert_str_ge "$@"
}

# assert_str_gt: assert a string is greater than another string.
#
# Example:
# ```
# assert_str_gt 2 1
# => success i.e. no output
#
# assert_str_gt 1 2
# STDERR=> assert_str_gt 1 2
# ```
assert_str_gt() {
        [ "$1" -gt "$2" ] || err assert_str_gt "$@"
}

# assert_str_le: assert a string is less than or equal to another string.
#
# Example:
# ```
# assert_str_le 1 2
# => success i.e. no output
#
# assert_str_le 2 1
# STDERR=> assert_str_le 2 1
# ```
assert_str_le() {
        [ "$1" -le "$2" ] || err assert_str_le "$@"
}

# assert_str_lt: assert a string is less than to another string.
#
# Example:
# ```
# assert_str_lt 1 2
# => success i.e. no output
#
# assert_str_lt 2 1
# STDERR=> assert_str_lt 2 1
# ```
assert_str_lt() {
        [ "$1" -lt "$2" ] || err assert_str_lt "$@"
}

# assert_str_starts_with: assert a string starts with a substring.
#
# Example:
# ```
# assert_str_starts_with foobar foo
# => success i.e. no output
#
# assert_str_starts_with foobar xxx
# STDERR=> assert_str_starts_with foobar xxx
# ```
assert_str_starts_with() {
        [ "$1" != "${1#"$2"}" ] || err assert_str_starts_with "$@"
}

# assert_str_ends_with: assert a string ends with with a substring.
#
# Example:
# ```
# assert_str_ends_with foobar bar
# => success i.e. no output
#
# assert_str_ends_with foobar xxx
# STDERR=> assert_str_ends_with foobar xxx
# ```
assert_str_ends_with() {
        [ "$1" != "${1%"$2"}" ] || err assert_str_ends_with "$@"
}

##
# Make temp helpers
##

# mktemp_dir: make a temporary directory path.
#
# Example:
# ```
# mktemp_dir
# => /var/folders/4f7b65122b0fb65b0fdad568a65dc97d
# ```
mktemp_dir() {
        x=$(mktemp -d -t "${1:-$(zid)}") ; trap '{ rm -rf "$x"; }' EXIT ; out "$x"
}

# mktemp_file: make a temporary file path.
#
# Example:
# ```
# mktemp_file
# => /var/folders/4f7b65122b0fb65b0fdad568a65dc97d/1d9aafac5373be95d8b4c2dece0b1197
# ```
mktemp_file() {
        x=$(mktemp -t "${1:-$(zid)}") ; trap '{ rm -f "$x"; }' EXIT ; out "$x"
}

##
# Media helpers
##

# file_media_type: get a file's media type a.k.a. mime type such as "text/plain".
#
# Example:
# ```
# file_media_type notes.txt
# => text/plain
# ```
file_media_type() {
        file --brief --mime "$1"
}

# file_media_type_supertype: get a file's media type type a.k.a. mime type such as "text".
#
# Example:
# ```
# file_media_type_supertype notes.txt
# => text
# ```
file_media_type_supertype() {
        file --brief --mime "$1" | sed 's#/.*##'
}

# file_media_type_subtype: get a file's media type subtype a.k.a. mime type such as "plain".
#
# Example:
# ```
# file_media_type_subtype notes.txt
# => plain
# ```
file_media_type_subtype() {
        file --brief --mime "$1" | sed 's#^[^/]*/##; s#;.*##'
}

##
# Font helpers
##

# font_name_exists: does a font name exist on this system?
#
# Example:
# ```
# font_name_exists Arial
# => true
#
# font_name_exists Foo
# => false
# ```
#
font_name_exists() {
        fc-list | grep -q ": $1:"
}

# font_name_exists_or_die: ensure a font name exists.
#
# Example:
# ```
# font_name_exists_or_die Arial
# => true
#
# font_name_exists_or_die Foo
# STDERR=> Font needed: Foo
# => exit 1
# ```
#
font_name_exists_or_die() {
        font_name_exists "$1" || die "$EXIT_UNAVAILABLE" "Font needed: $1"
}

##
# Content helpers
##

# file_ends_with_newline: Does a file end with a newline?
#
# Example:
# ```
# file_ends_with_newline notes.txt
# => true
# ```
file_ends_with_newline() {
        test $(tail -c1 "$1" | wc -l) -gt 0
}


##
# Directory helpers
##

# user_dir: get a user-specific directory via env var, or XDG setting, or HOME.
#
# Example:
# ```
# user_dir foo => $FOO_DIR || $FOO_HOME || $XDG_FOO_DIR || $XDG_FOO_HOME || $HOME/foo
# ```
#
# Conventions:
#
#   * `user_dir bin` => binary executable directory
#   * `user_dir cache` => cache directory
#   * `user_dir config` => configuration directory
#   * `user_dir data` => data directory
#   * `user_dir desktop` => desktop directory
#   * `user_dir documents` => documents directory
#   * `user_dir download` => download directory
#   * `user_dir log` => logging directory
#   * `user_dir music` => music directory
#   * `user_dir pictures` => pictures directory
#   * `user_dir publicshare` => public share directory
#   * `user_dir runtime` => runtime directory
#   * `user_dir state` => state directory
#   * `user_dir temp` => temporary directory
#   * `user_dir templates` => templates directory
#   * `user_dir videos` => videos directory
#
# Popular XDG conventions:
#
#   * `XDG_DESKTOP_DIR` => user-specific desktop, such as frequent apps and files.
#   * `XDG_DOCUMENTS_DIR` => user-specific documents, such as typical working files.
#   * `XDG_DOWNLOAD_DIR` => user-specific downloads, such as internet file downloads.
#   * `XDG_MUSIC_DIR` => user-specific music files, such as songs.
#   * `XDG_PICTURES_DIR` => user-specific pictures, such as photos.
#   * `XDG_PUBLICSHARE_DIR` => user-specific public share, such as file sharing.
#   * `XDG_TEMPLATES_DIR` => user-specific templates.
#   * `XDG_VIDEOS_DIR` => user-specific videos, such as movies.
#
# POSIX XDG conventions:
#
#   * `XDG_BIN_HOME` => user-specific binaries, analogous to system /usr/bin or $HOME/.local/bin.
#   * `XDG_LOG_HOME` => user-specific log files, analogous to system /var/log or $HOME/.local/log.
#   * `XDG_TEMP_HOME` => user-specific temporary files, analogous to system /temp or $HOME/.temp.
#   * `XDG_DATA_HOME` => user-specific data files, analogous to system /usr/share or $HOME/.local/share.
#   * `XDG_CACHE_HOME` => user-specific cache files, analogous to system /var/cache or $HOME/.cache.
#   * `XDG_STATE_HOME` => user-specific cache files, analogous to system /var/state or $HOME/.local/state.
#   * `XDG_CONFIG_HOME` => user-specific configuration files, analogous to system /etc or $HOME/.config.
#   * `XDG_RUNTIME_HOME` => user-specific runtime files such as sockets, named pipes, etc. or $HOME/.runtime.
#
# See also:
#
#   * https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
#
#   * https://wiki.archlinux.org/title/XDG_user_directories
#
user_dir(){
	upper=$(printf %s\\n "$1" | tr '[:lower:]' '[:upper:]')
	x=$(set +u; eval printf "%s\\\\n" \$${upper}_DIR)
        if [ -n "$x" ]; then printf %s\\n "$x"; return; fi
	x=$(set +u; eval printf "%s\\\\n" \$${upper}_HOME)
        if [ -n "$x" ]; then printf %s\\n "$x"; return; fi
	x=$(set +u; eval printf "%s\\\\n" \$XDG_${upper}_DIR)
        if [ -n "$x" ]; then printf %s\\n "$x"; return; fi
	x=$(set +u; eval printf "%s\\\\n" \$XDG_${upper}_HOME)
        if [ -n "$x" ]; then printf %s\\n "$x"; return; fi
	lower=$(printf %s\\n "$1" | tr '[:upper:]' '[:lower:]')
        printf %s\\n "$HOME/$lower"
}
```