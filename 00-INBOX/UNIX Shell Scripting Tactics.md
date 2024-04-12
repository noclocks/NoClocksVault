[[Shell Exit Codes]]

## Scripting Kit

### E

```shell
# UNIX Shell Script Kit
#
# A Collection of Utility Functions and Constants

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
# Unavailable
#
# A service is unavailable.
#
# E.g. a support program or file does not exist. This can also be a catchall
# message when something does not work, but you do not know why.
#
EXIT_UNAVAILABLE=69

# Software
#
# An internal software error has been detected.
#
# This should be limited to non-operating system related errors as possible.
#
EXIT_SOFTWARE=70

# OS Err
#
# An operating system error has been detected.
#
# E.g. errors such as "cannot fork", "cannot create pipe", or getuid returns a
# user that does not exist in the passwd file, etc.
#
EXIT_OSERR=71

# OS File
#
# An operating system file (e.g. /etc/passwd) does not exist, or cannot
# be opened, or has some sort of error (e.g. syntax error).
#
EXIT_OSFILE=72

# Can't Create
#
# A user-specified output (e.g. a file) cannot be created.
#
EXIT_CANTCREATE=73

# IO Err
#
# An error occurred while doing input/output on some file, or stream, etc.
#
EXIT_IOERR=74

# Temp Fail
#
# A temporary failure occurred; this is not a permanent error.
#
# E.g. a mailer could not create a connection. The request can be retried later.
#
EXIT_TEMPFAIL=75

# Protocol
#
# The remote system returned something that was "not possible" during
# a protocol exchange.
#
EXIT_PROTOCOL=76

# No Perm
#
# You did not have sufficient permission to perform the operation.
#
# This is not for file system problems, which use EXIT_NOINPUT or
# EXIT_CANTCREATE, but for higher level permissions, authorizations, etc.
#
EXIT_NOPERM=77

# Config
#
# Something was found in an unconfigured or misconfigured state.
#
EXIT_CONFIG=78

# Exit codes 80-99 are for our own SixArm conventions.
# We propose these are generally useful to many kinds of programs.
#
# Caution: these exit codes and their values are work in progress,
# draft only, as a request for comments, in version 11.x of this file.
# These exit codes will be set in version 12.x when it's released.
#
# * 80+ for user interation issues
#
# * 90+ for access control issues
#
# * 100+: process runtime issues
#
# * 110+: expected ability issues

# Exit codes 80+ for user interation issues...

# Quit
#
# The user chose to quit, or cancel, or abort, or discontinue, etc.
#
EXIT_QUIT=80

# KYC (Know Your Customer)
#
# The program requires more user interaction, or user information, etc.
#
# E.g. email validation, age verification, terms of service agreement, etc.
#
EXIT_KYC=81

# Update
#
# The program or its dependencies need an update, or upgrade, etc.
#
EXIT_UPDATE=89

# Exit codes 90+ for access control issues...

# Conflict
#
# An item has a conflict e.g. edit collision, or merge error, etc.
#
# Akin to HTTP status code 409 Conflict.
#
EXIT_CONFLICT=90

# Unlawful
#
# Something is prohibited due to law, or warrant, or court order, etc.
#
# Akin to HTTP status code 451 Unavailable For Legal Reasons (RFC 7725).
#
EXIT_UNLAWFUL=91

# Payment Issue
#
# Something needs a credit card, or invoice, or billing, etc.
#
# Akin to a superset of HTTP status code 402 Payment Required.
#
EXIT_PAYMENT_ISSUE=92

# Quota Issue
#
# A quota is reached, such as exhausting a free trial, out of fuel, etc.
#
# Akin to a superset of HTTP status code 429 Too Many Requests.
#
EXIT_QUOTA_ISSUE=93

# Exit codes 100+ for process runtime issues...

# Busy
#
# A process is too busy, or overloaded, or throttled, or breakered, etc.
#
# Akin to HTTP status code 503 Service Unavailable; always means overloaded.
#
EXIT_BUSY=100

# Timeout
#
# A process is too slow, or estimated to take too long, etc.
#
# Akin to HTTP status code 408 Request Timeout.
#
EXIT_TIMEOUT=101

# Lockout
#
# A process is intentionally blocked as a danger, hazard, risk, etc.
#
# This is for lockout-tagout (LOTO) safety, or protecting users or data, etc.
#
EXIT_LOCKOUT=102

# Loop
#
# A process has detected an infinite loop, so is aborting.
#
# Akin to HTTP status code 508 Loop Detected.
#
EXIT_LOOP=103

# Exit codes 110+ for expected ability issues...

# Moved Permanently
#
# An expected ability has been moved permanently.
#
# Akin to HTTP status code 301 Moved Permanently.
#
EXIT_MOVED_PERMANENTLY=110

# Moved Temporarily
#
# An expected ability has been moved temporarily.
#
# Akin to HTTP status code 302 Moved Temporarily.
#
EXIT_MOVED_TEMPORARILY=111

# Gone
#
# An expected ability has been intentionally removed, or deleted, etc.
#
# Akin to HTTP status code 410 Gone; the ability should be purged.
#
EXIT_GONE=112

# Future
#
# An expected ability is not yet implemented, or work in progress, etc.
#
# Akin to HTTP status code 501 Not Implemented; implies future availability.
#
EXIT_FUTURE=119

# Exit code 125 for git...

# Git bisect skip
#
# The special exit code 125 should be used when the current source code cannot
# be tested. If the script exits with this code, the current revision will be
# skipped (see git bisect skip above).
#
# Value 125 was chosen as the highest sensible value to use for this
# purpose, because 126 and 127 are used by shells to signal specific errors.
#
EXIT_GIT_BISECT_SKIP=125

# Exit codes 126-127 for shell conventions...

# Command found but not executable
#
# A command is found but is not executable.
#
EXIT_COMMAND_FOUND_BUT_NOT_EXECUTABLE=126

# Command not found
#
# A command is not found.
#
EXIT_COMMAND_NOT_FOUND=127

# Exit code invalid
#
# The exit code is invalid.
#
# Compare EXIT_CODE_OUT_OF_RANGE=255
#
EXIT_CODE_INVALID=128

# Exit code out of range
#
# The exit code is out of range i.e. not in 0-255.
#
# Compare EXIT_CODE_INVALID=128
#
EXIT_CODE_INVALID=128
```