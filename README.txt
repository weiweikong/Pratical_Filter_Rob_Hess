Contents:

1. Intro
2. Compiling
3. Running
  a. track1
  b. observe
4. Histograms

/***********************************************************************/

1. Intro

This distribution contains source code for a simple object tracking
program using particle filtering.  You need to have the OpenCV Library
and the GNU Scientific Library (GSL) installed to compile and use the
programs.  See the below two links:

http://sourceforge.net/projects/opencvlibrary/
http://www.gnu.org/software/gsl/

/***********************************************************************/

2. Compiling

Some of the source files can be documented with Doxygen:
> make docs


To comile the executable programs:
> make bin


To compile everything (executables, documentation, etc.):
> make


To clean up:
> make clean


To get rid of executables, too:
> make distclean

/***********************************************************************/

3. Running

3.a. track1: Tracks a single object in a sequence of video.

Supply track1 with a video file on the command line:
> ./bin/track1 video.mpg

You will be presented with the first frame of the video, in which you are 
required to select an object to track.  Do this by defining a rectangular 
region with the mouse by clicking and dragging.  After you select the 
object to be tracked, you will see the results of tracking.  This usually 
runs in about real-time, unless the region you've selected is too big.  
You can get additional help for command line options and arguments by 
passing the '-h' option:
> ./bin/track1 -h


3.b. observe: Displays the likelihood of an object at each pixel location 
  in an image.

Supply observe with an image in which to observe and a set of images from 
which to compute a reference histogram upon which observation is based:
> ./bin/observe <image> <ref_img1> [<ref_img2> ...]

You will be shown an image representing the likelihood of the object 
defined by the reference images at every pixel location in the image being 
observed.  You can get additional help for command line options and 
arguments by passing the '-h' option:
> ./bin/observe -h


/***********************************************************************/

4. Histograms

You can choose to export the frames of video tracked by track1 using the 
'-o' flag.  If you choose to do so, the values of the reference histogram 
are also output to the file hist_00.dat.  The included file hist.plt is a 
gnuplot script which can be used to visualize the reference histogram.  
Use it as follows:

> gnuplot hist.plt

It will create an encapsulated postscript histogram image in hist.eps.

