# rip_dvd
## A simple bash script to rip DVDs with minimal effort

`rip_dvd.sh` is a script that detects whether or not a DVD (or any type of optical media) is inserted 
on a drive specified by the user, and rips it into a folder also named by the user. 

## Disclaimer
**DO NOT USE THIS SOFTWARE FOR IILEGALY COPYING DVDs, CDs OR ANY OTHER TYPE OF COPYRIGHTED MEDIA**. I'm not
responsible for any problems cuased by using rip_dvd in any sort of unlawful activities.

## Requirements
* make
* gcc
* dvdbackup

You can install them in Ubuntu based systems with the following command

```
sudo apt install make gcc dvdbackup
```

## Installation
First, use `git clone` to download the latest version of the script, and enter the newly created folder.
I always like to do this inside the ~/Downloads folder. You just have to run the following command(s).

```
cd ~/Downloads
git clone https://github.com/TheLastBilly/dvd_rip/
cd rip_dvd
```

Then, compile the 'src/trayopen.c' (based on the code provided by the user volkerdi on [this](https://www.linuxquestions.org/questions/slackware-14/detect-cd-tray-status-4175450610/) linuxquestions
forum post) with the following command:

```
make
```

That's it!

## Usage
Run the './rip_dvd.sh' script while inside the rip_dvd folder.

```
./rip_dvd.sh
```

Then, place the DVD you'd like to rip into the DVD tray on your computer and wait until a promt saying:
`DVD name: ` shows up on the screen. Then type the name of the disc you wish to rip. Afterwards it will
start copying the contents of the DVD on a folder with the name you just specified.

Once it finishes, it will open the tray for you, so you can take out the current DVD and swap it for a
new one. The process will then start all over again.

To quit the program just press the Crtl and C keys at the same time.
