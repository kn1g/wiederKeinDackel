#!/bin/bash

for i in {1..100}
do
    # Erstellt einen zufälligen Dateinamen mit 15 Zeichen
    FILENAME=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 15 | head -n 1).html

    # Schreibt den vorgegebenen Text in die Datei
    echo "<!DOCTYPE html>
<html lang=\"de\">
<head>
    <meta charset=\"UTF-8\">
    <title>Zufällige Datei</title>
</head>
<body>
    Hier sind keine Dackel!
</body>
</html>" > $FILENAME

    echo "Datei $FILENAME erstellt."
done

echo "Fertig! 100 HTML-Dateien wurden erstellt."

