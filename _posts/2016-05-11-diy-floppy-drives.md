---
title:  "DIY Musical Floppy Drives"
header:
  teaser: projects/diy-musical-drives/banner.jpg
categories:
  - projects
tags:
  - music
  - diy
  - floppy drives
  - midi
  - arduino
twitterImage: "projects/diy-musical-drives/banner.jpg"
ogImage:
    - url: "projects/diy-musical-drives/banner.jpg"
excerpt: "In which I describe the initial building of my DIY musical floppy
          drives."
firstTestID: "MfpcGV216Yk"
secondTestID: "I2ceAvlwbmM"
---

{% include toc %}

Inspired by videos such as [“Undertale – Megalovania {8 FDD, 2 SM}” by MrSolidSnake745](https://youtu.be/cL7oFfCX-E0)
on YouTube, I decided in May of 2015 to try and make musical floppy drives of my
own just so I can see what I could do with them. What quickly followed was me
staying up until probably 1:30 in the morning figuring out how to make it work
with the two drives that I had. I’ll write up what it took to get there once I’m
finished making the final work, but here’s the video from that first prototype:

{% include youtubePlayer.html id=page.firstTestID %}

## Initial Construction

Needless to say I was able to get them working with two drives. My high school
ended up being a good source for more drives, and after seeing what I built,
they gave me enough drives for me to complete my setup. Turns out they had a
bunch of old computers laying in warehouse with absolutely no purpose other than
being there. With a busy summer and first semester at George Mason University, I
had to wait till winter break to continue work on them. Here’s the drives now
with a wiring harness build so that only one set of cabling needs to be used to
control the entire system. There are still a couple of problems with a couple
drives, but they sound great!

{% include youtubePlayer.html id=page.secondTestID %}

## Further Plans

In the end, what I am planning on having is a setup where I can not only play
songs into the floppy drives from MIDI files that have already been made, but I
would like them to be controlled live via a MIDI keyboard. I haven’t played much
with it but I think the feature is already in the software running on my laptop
but I’d like it to be standalone, needing only power and a direct connection
between the MIDI keys and the Arduino. It still remains to be seen how that will
work but I have to get all the drives responding properly and in a nice looking
enclosure first!
