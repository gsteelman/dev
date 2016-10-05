# Find a java class in a directory of jars.
DIR=$1
CLASS=$2
find "$DIR" -name "*.jar" -exec sh -c 'jar -tf {}|grep -H --label {} '$CLASS'' \;