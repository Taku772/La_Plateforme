SSH : bandit.labs.overthewire.org

MDP Bandit : 



Level 1 : ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If (cat readme)

Level 2 : 263JGJPfgU6LtdEvgfWU1XP5yac29mFx (cat ./-)

Level 3 : MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx (cat ./--spaces\\ in\\ this\\ filename--)

Level 4 : 2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ (cd inhere/ | ls -a | cat ...Hiding-From-You)

Level 5 : 4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw (cd inhere/ | ls -h | cat ./-file07)

Level 6 : HWasnPhtq9AVKe0dmk45nxy20cvUa6EG (cd inhere/ | find -size 1033c -type f)

Level 7 : morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj (find -type f -user bandit7 -group bandit6 -size 33c -ls 2>/dev/null)

Level 8 : dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc (cat data.txt | grep millionth)

Level 9 : 4CKMh1JI91bUIZZPXDqGanal4xvAg0JM (sort data.txt | uniq -u)

Level 10 : FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey (strings data.txt | grep **-a** -E '= {2,}') ***!! A revoir ensemble si possible !!***

Level 11 : dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr (echo data.txt | base64 -d data.txt)

Level 12 : 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4 (cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m') ***!!! ROT13 !!!***

Level 13 : FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn (xxd -r data.txt > data) --------> (file | zcat | bzip2 | tar | mv …)

Level 14 : sshkey.private (scp sshkey.private >>> Mon PC Perso >>> Connexion SSH avec la clé privé "ssh -i C:\\Users\\aouic\\Desktop\\sshkey.private bandit.labs.overthewire.org -p 2220 -l bandit14")

Level 15 : 

