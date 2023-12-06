#!/bin/sh

JARFILE="${1:-biblio.jar}"

# Check if the JAR file exists
if [ ! -f "$JARFILE" ]; then
    echo "Error: JAR file $JARFILE does not exist."
    exit 1
fi

# Check if the output directory exists and is writable
if [ ! -w wwwroot ]; then
    echo "Error: The wwwroot directory does not exist or is not writable."
    exit 1
fi

# Execute the Java application for each input file
cat data/_liste.txt data/fg67hIOrf.txt | java -cp $JARFILE epsi.biblio.App > wwwroot/fg67hIOrf.html
cat data/_liste.txt data/rt25TYuy0.txt | java -cp $JARFILE epsi.biblio.App > wwwroot/rt25TYuy0.html
