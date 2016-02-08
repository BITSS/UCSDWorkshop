
     1 . sysuse auto, clear      
      (1978 Automobile Data)
      

Introduction to MarkDoc Stata Package
=====================================

Writing symbols
---------------

### Paragraph

**MarkDoc** Converts *smcl* logfile to Markdown txt file and allows the
use of markdown symbols for adding text and styling the logfile. If
Pandoc (a third-party software) is installed, MarkDoc can also export
the smclfile to other document formats including PDF, Docx, TEX, HTML,
XHTML, XML, EPUB, and several more formats.

This document provides an example about how to use MarkDoc to add text
to your logfile. To do so, I will use the Auto dataset which is
automatically installed with Stata.

The mean price is

      6165.2568
      
      

And let's move on to the other section of commands...

     2 . describe
      
      Contains data from C:\Program Files (x86)\Stata12\ado\base/a/auto.dta
        obs:            74                          1978 Automobile Data
       vars:            12                          13 Apr 2011 17:45
       size:         3,182                          (_dta has notes)
      --------------------------------------------------------------------------------
                    storage  display     value
      variable name   type   format      label      variable label
      --------------------------------------------------------------------------------
      make            str18  %-18s                  Make and Model
      price           int    %8.0gc                 Price
      mpg             int    %8.0g                  Mileage (mpg)
      rep78           int    %8.0g                  Repair Record 1978
      headroom        float  %6.1f                  Headroom (in.)
      trunk           int    %8.0g                  Trunk space (cu. ft.)
      weight          int    %8.0gc                 Weight (lbs.)
      length          int    %8.0g                  Length (in.)
      turn            int    %8.0g                  Turn Circle (ft.)
      displacement    int    %8.0g                  Displacement (cu. in.)
      gear_ratio      float  %6.2f                  Gear Ratio
      foreign         byte   %8.0g       origin     Car type
      --------------------------------------------------------------------------------
      Sorted by:  foreign
      

     3 . list in 1/3
      
           +---------------------------------------------------------------+
        1. | make        | price | mpg | rep78 | headroom | trunk | weight |
           | AMC Concord | 4,099 |  22 |     3 |      2.5 |    11 |  2,930 |
           |---------------------+-------------+---------------------------|
           |  length   |  turn   |  displa~t   |  gear_r~o   |   foreign   |
           |     186   |    40   |       121   |      3.58   |  Domestic   |
           +---------------------------------------------------------------+
      
           +---------------------------------------------------------------+
        2. | make        | price | mpg | rep78 | headroom | trunk | weight |
           | AMC Pacer   | 4,749 |  17 |     3 |      3.0 |    11 |  3,350 |
           |---------------------+-------------+---------------------------|
           |  length   |  turn   |  displa~t   |  gear_r~o   |   foreign   |
           |     173   |    40   |       258   |      2.53   |  Domestic   |
           +---------------------------------------------------------------+
      
           +---------------------------------------------------------------+
        3. | make        | price | mpg | rep78 | headroom | trunk | weight |
           | AMC Spirit  | 3,799 |  22 |     . |      3.0 |    12 |  2,640 |
           |---------------------+-------------+---------------------------|
           |  length   |  turn   |  displa~t   |  gear_r~o   |   foreign   |
           |     168   |    35   |       121   |      3.08   |  Domestic   |
           +---------------------------------------------------------------+
      

     4 . regress price mpg
      
            Source |       SS       df       MS              Number of obs =      74
      -------------+------------------------------           F(  1,    72) =   20.26
             Model |   139449474     1   139449474           Prob > F      =  0.0000
          Residual |   495615923    72  6883554.48           R-squared     =  0.2196
      -------------+------------------------------           Adj R-squared =  0.2087
             Total |   635065396    73  8699525.97           Root MSE      =  2623.7
      
      ------------------------------------------------------------------------------
             price |      Coef.   Std. Err.      t    P>|t|     [95% Conf. Interval]
      -------------+----------------------------------------------------------------
               mpg |  -238.8943   53.07669    -4.50   0.000    -344.7008   -133.0879
             _cons |   11253.06   1170.813     9.61   0.000     8919.088    13587.03
      ------------------------------------------------------------------------------
      
      

Other possibilities for writing text
====================================

this is the end of the first example.Notice that you can use two
different sings for writing a comment in your do-file and MarkDoc can
read them both. to create a md file, you do not need to export the
logfile to any other format.md is the default format of markdoc.
however, you can also try to export it as HTML...

