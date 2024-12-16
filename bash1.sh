#!/usr/bin/env bash

function deviner_nombre_fichiers {
    bonne_reponse=0
    while [[ $bonne_reponse -eq 0 ]]
    do
        echo "Entrez votre estimation du nombre de fichiers dans le répertoire actuel : "
        read estimation
        if [[ $estimation =~ ^\s*$ || $estimation =~ [^0-9]+ ]]
        then
            echo "Votre estimation doit être un nombre."
        elif [[ $estimation -gt $1 ]]
        then
            echo "Votre estimation est trop élevée."
        elif [[ $estimation -lt $1 ]]
        then
            echo "Votre estimation est trop basse."
        else
            echo "Félicitations !!! Vous avez deviné correctement."
            let bonne_reponse=1
        fi
    done
}

nombre_fichiers=$(ls -1A | wc -l)
deviner_nombre_fichiers $nombre_fichiers
