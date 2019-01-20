#positional parameters->command line arguments
$0, $1, $2, etc.
$# Number of command-line arguments [4] or positional parameters (see Example 36-2)

"$*" All of the positional parameters, seen as a single word Note	"$*" must be quoted.

$@ Same as $*, but each parameter is a quoted string
echo $? #exit status of command