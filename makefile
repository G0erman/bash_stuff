
README.md:
	touch README.md
	echo "Bash Stuff \n" > README.md
	echo "The make comand was execute at:" >> README.md
	date  >> README.md
	echo "\nNumer of lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
