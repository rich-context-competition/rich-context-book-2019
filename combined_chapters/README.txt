
To compile the book to markdown:

`
$ ./copy_and_compile_combined_images.sh

`

This currently generates `combined_book_no_backslashes.md` which is the current 
working version of the compiled book. 

This creates a version with all images in one image directory. 

The reason for this is to allow us to use Marked2 to generate a PDF version of the book. 
Marked2 cannot read images from more than one directory. 

HTML and PDF versions are genertaed via export from marked2. 


## Log 2019-07-14 




## Log 2019-07-03 

- added a python post processing script to remove trailing backslashes
- now using mraked2 to generate PDF. 
-- It can be set to create a TOC
-- to do page breaks where a horizontal line is 
-- manages LaTeX  
-- can be setup to add page numbers - but this is not done yet 

## Log 2019-06-21 

- pandoc is not creating pdfs, there are some alternatives, e.g. https://github.com/alanshaw/markdown-pdf 
- have realised that the copy and compile script deletes my placeholder components, doh! 
