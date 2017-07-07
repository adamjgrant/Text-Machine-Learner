# Text-Machine-Learner
Simple python script to generate text based on machine-learned input text
[Based on this great tutorial](https://chunml.github.io/ChunML.github.io/tutorial/Setting-Up-Python-Environment-For-Computer-Vision-And-Machine-Learning/)

## Setup
Linux required. I highly recommend installing this on a fresh installation of Ubuntu.
Extra recommendation: Just create a droplet in DigitalOcean and make a snapshot of your setup for when you want to run it.
I'll also show you how to run this script without having to be logged into the droplet.

Please see the tutorial linked above for full instructions. Note that you may have to make the following changes:

1. The `cv` dir in `cd ~/.virtualenvs/cv/lib/python2.7/site-packages/` should be `opencv`
2. Also install `pip install matplotlib`
3. `sudo apt-get install python-tk`

## Running 
Make sure you are in the right virtualenv with

    mkvirtualenv keras

Add the text to be learned to data/data.txt and then run

    python run.py >> output.txt

If you want to run this detached from your SSH session (say to run overnight) [try this](https://askubuntu.com/questions/8653/how-to-keep-processes-running-after-ending-ssh-session/220880#220880)
