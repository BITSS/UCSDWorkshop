

	
	weave using weaver_example, replace date toc title("Weaver Package") ///
	author("E. F. Haghish")  affiliation("University of Freiburg, Germany") ///
	address("haghish@imbi.uni-freiburg.de") style("classic") ///
	///
	summary("This document provide an example for weaving a document in " ///
	"package. The example do-file covers all of Weaver's basic options and " ///
	"commands, required for weaving a document. I will put stress on " ///
	"practicing proper style for weaving the document and enhance the " ///
	"readability of the code. I will also demonstrate the use of two " ///
	"advanced commands which are <b>knit</b> and <b>html</b>. For more " ///
	"information regarding Weaver package visit http://haghish.com/weaver".)
		
		

	/*	
	Introduction to Weaver
	======================
	
	What is weaver?
	---------------
	
	Weaver is a _Stata package_ that produces HTML and PDF dynamic documents
	directly from Stata do-file editor. 
	
	[-yellow] What is exciting about weaver?[#]
	------------------------------
	
	[-green]You can easily add a list using Markdown or HTML syntax[#]. [blue]Markdown [#] 
	is recommended because it improves the readability of your text and makes 
	weaving funner!  
	
	- Weaver is very selective in terms of what appear in the document. In other
		words, you can include several Stata commands in your do-file and making
		them not to appear in the output. 
		
	- With Weaver, you can insert graphs to the document, resize them, and also
		align them to left, center, and right side of the document. 
		
	- Weaver can also type dynamic text, that is text that include Macros and
		can automatically change based on the changes that happen to the macro...
		
	- Weaver automatically prints Table of content with links to corresponding 
	headings	
	
	- And so much more... It can change font color, highlight text, in fact, 
	weaver provides everything that you need from a decent word processor [orange]
	because it also prowide live preview of your document at any point[#]!
	
	*/
	
	
	pagebreak  /* go to the next page */
	
	sysuse auto  /* this command does not appear in the document */
	
	div reg price mpg /* this command appears in the document */
	
	hist price, title("Price Histogram") /* not included in the document */
	qui graph export graph2price.png, replace /* not included in the document */
	
	img graph2price.png, center  /* insert a graph to the center of the document */
	
	
	
	
	/* ADVANCED STUFF BELOW. WATCHOUT! DON'T LET IT SCARE YOU. */
	
	
	/* Writing dynamic text with knit command & Additional Markup Codes */
	local Mac "Introduction to the Knit command" /* define a local Macro */
	
	#delimit ;
	
	knit *- `Mac' -* 
		*-- Styling knit command --* 
		The text that appear in the knit command can be #_italic_# and 
		#__bold__#. In addition, you can [blue] easily 
		change the font color to blue[#] or other available colors. You can 
		also [-blue] highlight text in variety of colors[#].
		please visit [-- "http://www.stata-blog.com/" --][- My blog -]
		to follow the upcoming updates of the package.
		line-break line-break 
		[right] [-purple][pink] #__have fun weaving__#! [#][#][#] ;
		
	
	
	
	html <span style="display:block; background:#D3DAE1; 
		font-family:Courier New, Courier, monospace; color:#434343; 
		padding:20px;">"The most beautiful thing we can experience is 
		the mysterious. It is the source of all true art and all science. He 
		to whom this emotion is a stranger, who can no longer pause to wonder 
		and stand rapt in awe, is as good as dead: his eyes are closed." - 
		<b>Albert Einstein</b></span> ;
	
	
	#delimit cr	

	

	

	
	weavend
