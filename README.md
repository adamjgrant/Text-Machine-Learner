# Text-Machine-Learner
Simple python script to generate text based on machine-learned input text
[Based on this great tutorial](https://chunml.github.io/ChunML.github.io/tutorial/Setting-Up-Python-Environment-For-Computer-Vision-And-Machine-Learning/)

## Setup
Linux required. I highly recommend installing this on a fresh installation of Ubuntu.
Extra recommendation: Just create a droplet in DigitalOcean and make a snapshot of your setup for when you want to run it.
I'll also show you how to run this script without having to be logged into the droplet.

Once you have your environment all squared away just run

    make

You'll be asked to make a change to your `~/.bashrc` and then run

    make steptwo

...when the first part run successfully. You'll then need to make a quick change to ~/.keras/keras.json (The script will prompt you)

## Running

Add the text to be learned to data/data.txt and then run

    make generate
