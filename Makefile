build:
	@echo This must be run from your virtual env.
	@echo If this does not work, make sure you run mkvirtualenv keras first
	@echo Running AI from data in ./data/data.txt.
	@echo You can close this SSH session and the process will continue.
	@echo Output will be saved to nohup.out in the current directory.
	@nohup ls -l &
