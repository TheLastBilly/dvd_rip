# rip_dvd
## A simple bash script to rip DVDs with minimal effort

`rip_dvd.sh` is a script that detects whether or not a video DVD  is inserted 
on a drive specified by the user, and rips it into a folder also named by the user. 

## Disclaimer
**DO NOT USE THIS SOFTWARE FOR IILEGALY COPYING DVDs OR ANY OTHER TYPE OF COPYRIGHTED MEDIA**. I'm not
responsible for any problems cuased by using rip_dvd in any sort of unlawful activities.

This script also only works with video DVDs.

## Requirements
You'll need to install the following programs before using this script.

* git
* make
* gcc
* dvdbackup

In Ubuntu based systems you can do so with the following command

```
sudo apt install git make gcc dvdbackup
```

## Installation
First, use `git clone` to download the latest version of the script, and enter the newly created folder.
You just have to run the following command(s).

```
git clone https://github.com/TheLastBilly/rip_dvd/
cd rip_dvd
```

Then, compile the 'src/trayopen.c' (based on the code provided by the user volkerdi on [this](https://www.linuxquestions.org/questions/slackware-14/detect-cd-tray-status-4175450610/) linuxquestions
forum post) with the following command:

```
make
```

Lastly, you need to make the script an executable file.
```
chmod +x ./rip_dvd.sh
```

That's it!

## Usage
Run the './rip_dvd.sh' script while inside the rip_dvd folder. Change `DRIVE` with the name of your disk
drive. It is usually `/dev/sr0`.

```
./rip_dvd.sh DRIVE
```

Then, place the DVD you'd like to rip into the DVD tray on your computer and wait until a promt saying:
`DVD name: ` shows up on the screen. Then type the name of the disc you wish to rip. Afterwards it will
start copying the contents of the DVD on a folder with the name you just specified.

Once it finishes, it will open the tray for you, so you can take out the current DVD and swap it for a
new one. The process will then start all over again.

To quit the program just press the Crtl and C keys at the same time.
