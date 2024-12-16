all: readme

readme:
	aujourdhui="Généré le $(date)"
	touch README.md
	echo "# Pouvez-vous deviner ?" > README.md
	echo >> README.md
	echo "Généré le" >> README.md
	date >> README.md
	echo >> README.md
	echo "Nombre de lignes dans guessinggame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
