build:
	@echo Updating system...
	@sudo apt-get update && sudo apt-get upgrade
	@echo Installing dependencies
	@sudo apt-get install build-essential cmake git pkg-config libjpeg8-dev libjasper-dev libpng12-dev libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev gfortran libtiff5-dev libatlas-base-dev python-tk
	@echo Installing pip
	@wget https://bootstrap.pypa.io/get-pip.py
	@sudo python get-pip.py
	@sudo pip install virtualenv virtualenvwrapper
	@echo Add the following to your ~/.bashrc file
	@echo =========================================
	@echo export WORKON_HOME=$HOME/.virtualenvs
	@echo source /usr/local/bin/virtualenvwrapper.sh
	@echo =========================================
	@echo When you have finished, run source ~/.bashrc && make steptwo

steptwo:
	@echo Installing python dev tools package
	@sudo apt-get install python2.7-dev
	@echo Installing numpy
	@pip install numpy
	@echo Cloning OpenCV Source Code
	@cd ~ && git clone https://github.com/Itseez/opencv.git && cd opencv && git checkout 3.0.0 && cd ~ && git clone https://github.com/Itseez/opencv_contrib.git && cd opencv_contrib && git checkout 3.0.0
	@echo Compiling and installing OpenCV...
	@cd ~/opencv && mkdir build && cd build && cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules -D BUILD_EXAMPLES=ON .. && make && sudo make install && sudo ldconfig
	@echo Linking OpenCV
	@cd ~/.virtualenvs/cv/lib/python2.7/site-packages/ && ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so
	@echo Exiting virtualenv
	@deactivate
	@mkvirtualenv keras && pip install numpy scipy scikit-learn pillow h5py && pip install --upgrade --no-deps git+git://github.com/Theano/Theano.git && pip install keras && cd ~/.virtualenvs/keras/lib/python2.7/site-packages/ && ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so 
	@echo Open ~/.keras/keras.json and replace 'tensorflow' with 'theanos'
	@echo =========================================
	@echo When you have finished, run make generate to run the AI

generate:
	@echo Running AI from data in ./data/data.txt.
	@echo You can close this SSH session and the process will continue.
	@echo Output will be saved to nohup.out in the current directory.
	@nohup ls -l &
