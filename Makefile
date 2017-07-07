build:
	@echo Updating system...
	@sudo apt-get update && sudo apt-get upgrade
	@echo Installing dependencies
	@sudo apt-get install build-essential cmake git pkg-config libjpeg8-dev libjasper-dev libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev gfortran libtiff5-dev libatlas-base-dev python-tk
