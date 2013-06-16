gitcrypt repozitorij
========================================

Kreiranje
----------

nakon pokretanja setup_encrypt.sh trebamo u .git/config imati sadrzaj kao ovaj:

	[core]
		repositoryformatversion = 0
		filemode = true
		bare = false
		logallrefupdates = true
		ignorecase = true
		precomposeunicode = false
	[gitcrypt]
		salt = <moj salt>
		pass = <moja password>
		cipher = aes-256-ecb
	[filter "encrypt"]
		smudge = gitcrypt smudge
		clean = gitcrypt clean
	[diff "encrypt"]
		textconv = gitcrypt diff



Hocu da kriptujem samo .secure fajlove

cat .git/info/attributes


	*.secure filter=encrypt diff=encrypt
	[merge]
	    renormalize=true


Kloniranje direktorija koji ima enkriptovane fajlove
-----------------------------------------------------


     git clone -n git@github.com:hernad/encrypt-test.git
     gitcrypt init # isti password podesi, salt pusti neka bude autogenerated


Bitno je da se kod kloniranja ponovo unese isti password i isti kriterij za fajlove koji se enkriptuju (npr *.secure)


