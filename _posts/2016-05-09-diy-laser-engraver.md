---
title:  "DIY Laser Engraver for $80"
header:
  teaser: "https://farm5.staticflickr.com/4076/4940499208_b79b77fb0a_z.jpg"
categories:
  - projects
tags:
  - update
timelapseID: "FGswquf6Id4"

---

This is the first real project that I started to work on. During winter break in
12th grade, I decided that I wanted to have a go at building a 3D Printer from
scratch. Turned out that this was a fairly expensive thing to do on basically
no budget so I decided instead to make a laser engraver by recycling any parts
that I could find. The final cost ended up being around 70 dollars, something I
was quite happy with. Unfortunately I did not do a very decent job documenting
the process, but I do have a few pictures of the build and I will try to explain
the process I went through. Anyway, here’s a video of the final product
engraving (sped up significantly):

{% include youtubePlayer.html id=page.timelapseID %}

## Design/Research

I really didn’t have a very organized plan on how the final details were going
to work out until basically the very end, when I had all the different pieces
that I needed to finish the work. In the end the project became almost a mash-up
of features I liked in some peoples’ projects along with changes or
improvisations to fit my extremely limited budget. One of the first projects I
found that I liked was from [Mario Lukas](http://www.mariolukas.de/) (sorry, his
blog is in Dutch). In his [YouTube video](https://www.youtube.com/watch?v=3EZFL9W5wNk)
of his 3D printer I really liked his idea of using a scanner for the lower axis
of the machine. I ended up finding a very similar scanner for 3 dollars broken
at a thrift shop which I took apart and screwed down to the wood base of my
engraver.

I’m going to mention [pxlweavr’s](http://pxlweavr.com/) engraver as well because
his excellent video helped me gain some insight on how to get all the pieces
talking to each other, as I started with zero knowledge of CNC machines and this
was going to be my first project involving electronics. While I ended up
changing, I really wanted to use the same driver mechanism outlined in his
[YouTube video](https://www.youtube.com/watch?v=xxQ33cNIXxU).

The [RepRap Project](http://reprap.org/wiki/Main_Page) ended up being the most
important source of information. Even though I was building a laser engraver, I
was still going to use [grbl](https://github.com/grbl/grbl) running on an
Arduino Nano as the controller.

## Construction

For the laser, I found a DVD-RW drive and harvested the laser diode from it.
There are many different videos on YouTube explaining this process, just make
sure you use proper ESD safety to avoid breaking the diode, as it is very
sensitive. I then bought an Aixiz module to house it and a constant current
driver for power. It is important to use a constant current driver as any other
source will blow out the diode almost instantly.

Moving on to the electronics, I ended up using one Arduino Nano, two
[Easy Drivers](http://www.schmalzhaus.com/EasyDriver/), two laser end stops, and
a relay to power the laser from the Arduino with. Here is the circuit on
breadboard. All the pinouts are identical to default grbl settings with the
exception of the laser, which is on the feed enable pin (also documented at
grbl’s website).
