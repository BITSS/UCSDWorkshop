	cd "/Users/garret/Documents/Research/BITSS/WorkshopSlides/Annual2015/haghish" //change this for your computer
	capture quietly log close
	set linesize 70
	set more off
	qui log using example1, replace  
	
	
	sysuse auto, clear	
	/***
			Introduction to MarkDoc Stata Package
			=====================================
					
			Writing symbols
			---------------
			
			### Paragraph
			__MarkDoc__ Converts _smcl_ logfile to Markdown txt file 
			and allows the use of markdown symbols for adding text and 
			styling the logfile. If Pandoc (a third-party software) is
            installed, MarkDoc can also export the smclfile to other 
			document formats including PDF, Docx, TEX, HTML, XHTML, XML,
			EPUB, and several more formats. 
					
			This document provides an example about how to use MarkDoc
			to add text to your logfile. To do so, I will use the Auto
			dataset which is automatically installed with Stata.
			
			The mean price is 
			***/ 
	/**/qui summ(price)				
	/**/disp `r(mean)'
	
			//And let's move on to the other section of commands...
			
	describe
	list in 1/3
	regress price mpg
	
			//#Other possibilities for writing text
			// this is the end of the first example. Notice that you can 
			// use two different sings for writing a comment in your 
			// do-file and MarkDoc can read them both.
			//to create a md file, you do not need to export the logfile
			//to any other format. md is the default format of markdoc.
			//however, you can also try to export it as HTML...

					
	qui log c
	
	/* Exporting in several formats */
	markdoc example1, replace		/* exporting a markdown file */
	*markdoc example1, replace export(html) 
	*markdoc example1, replace export(odt)  
	*markdoc example1, replace export(txt) 
	*markdoc example1, replace export(epub) 
	*markdoc example1, replace export(docx) //This seems to delete the earlier .md version
