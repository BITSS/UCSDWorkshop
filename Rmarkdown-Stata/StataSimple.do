//This file creates a simple example of nicely formatted regression output.
//After running this file, a user should be able to 

clear all 
set more off 
version 12.1
//change this next line as necessary
cd C:\Users\garret\Documents\Research\BITSS\WorkshopSlides\Annual2015\Rmarkdown-Stata\

use WASHBpublic_mock.dta

*Do I have the same data as I used to, or as my collaborator does?
datasignature

*OUTPUT IN TEX
ssc install outreg2 //Make sure you have outreg2 installed

//viewsource outreg2.ado
//Run with outreg2 version 2.3.2

reg free_chl_yn treatw
outreg2 using outputS.tex, tex replace bdec(3) tdec(3)

reg free_chl_yn treatw, robust
outreg2 using outputS.tex, tex append bdec(3) tdec(3)

reg free_chl_yn treatw english kiswahili, robust
outreg2 using outputS.tex, tex append bdec(3) tdec(3)

