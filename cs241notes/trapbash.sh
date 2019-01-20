Number	SIG	Meaning
0	0	On exit from shell
1	SIGHUP	Clean tidyup
2	SIGINT	Interrupt
3	SIGQUIT	Quit
6	SIGABRT	Abort
9	SIGKILL	Die Now (cannot be trapped)
14	SIGALRM	Alarm Clock
15	SIGTERM	Terminate

trap 'increment' 2

increment()
{
  echo "Caught SIGINT ..."
  X=`expr ${X} + 500`
  if [ "${X}" -gt "2000" ]
  then
    echo "Okay, I'll quit ..."
    exit 1
  fi
}
