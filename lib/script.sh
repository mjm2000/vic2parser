pandoc -f html -t markdown $1  | grep " = "  | sed 's/=.*//' | sed 's/^/%token/' |grep "%token " > $2 
