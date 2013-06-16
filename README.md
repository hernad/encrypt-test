Setup
========================================


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

