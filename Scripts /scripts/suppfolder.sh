#!/bin/bash 

function remove (){
    cd .. #dossier racine
    cd jpg #dossier action

    for file in *; do
        if [ -f "$file" ]; then
            # supprime si le fichier qui contient (n), -n, copy ou copie avant l'extension
            if [[ "$file" =~ (\([0-9]+\)|-[0-9]+|[Cc]opy|[Cc]opie( [0-9]+)?)\.jpe?g$ ]]; then #? devant e est optionnel et $ pour fin de chaine
                rm "$file" #rm pour remove
            fi
        fi
    done
}
remove