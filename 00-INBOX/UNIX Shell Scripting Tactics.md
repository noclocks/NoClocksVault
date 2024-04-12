

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

```shell

```