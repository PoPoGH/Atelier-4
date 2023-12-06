#!/bin/sh

# Use the correct name of the JAR file as built by Maven
JARFILE="${1:-target/biblio-0.1.jar}"

# Check if the JAR file exists
if [ ! -f "$JARFILE" ]; then
    echo "Error: JAR file $JARFILE does not exist."
    exit 1
fi

# The rest of your script
cat data/_liste.txt data/fg67hIOrf.txt | java -cp $JARFILE epsi.biblio.App > wwwroot/fg67hIOrf.html
cat data/_liste.txt data/rt25TYuy0.txt | java -cp $JARFILE epsi.biblio.App > wwwroot/rt25TYuy0.html
