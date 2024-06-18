Plex Poster Rotate

This is just a very simple bash script that shuffles the posters you have in your asset folder so Kometa will pick up a new one each time it runs.

Prerequisites

1) Multiple Posters in the corresponding Kometa assets folder. E.g. if you want shuffled posters for "The Fall Guy", you have to have to put the poster files in the assets/The Fall Guy folder so they get picked up
  ![image](https://github.com/defluophoenix/Plex-Poster-Rotate/assets/150266606/32e48c71-3d31-4e8f-b624-5b0ac32ab42b)


2) The posters must be named poster, then poster2, poster3 etc. Poster1 is reserved. DO NOT name your poster that.
3) The posters must have the same extension. Mine are png. It is fairly easy to changed to jpg. But the script expects all posters to have the same extension
4) The posters must be writeable and executable by the user running the script. Otherwise you will get permission denied

The Script

This DOES NOT download posters for you. You have to do that manually

Download posterrotate.sh and place it somewhere. Make sure your user can execute it
If you have jpg instead of png files, open posterrotate.sh and change the 6 instance of png to jpg

![image](https://github.com/defluophoenix/Plex-Poster-Rotate/assets/150266606/1b970c7c-2122-4362-96c7-d42f8a37b096)

In the command line run the following

find {location of kometa assets folder} -type f -name poster2.png -execdir {location of the posterrotate.sh file} {} \;

Example

find /root/plex-meta-manager/assets/ -type f -name poster2.png -execdir /root/poster.sh {} \;

Tips

I recommend running this as a cronjob. 
DO NOT run this more than you run Kometa. If you run kometa once a day, and this script 3 times a day, then Kometa will only pick up the last shuffle, which may have shuffled the poster back to its original place.
