# Instructions for typesetters. 


## Source files for the chapters. 

Source files for the chapters are in the folders that start with numbers in this directory. E.g. source files for the introductory chapter are in `01-Introduction/`. 


## Combined and compiled chapters 

Chapters are combined and converted to markdown. The converted markdown files are in `combined_chapters/`. The file `combined_chapters/rich_context_book.md` is a single file with all of the content combined into one file. 

A html version of the book is also provided. The source files for the HTML rendered version of the book are available in `combined_chapters/sphinx_version/_build/html`  

This is done by running the following script: `combined_chapters/copy_and_compile_combined_images.sh`. 

	

## Chapter mapping

Source files have been rearranged into a new order in the combined version of the manuscript. The file mapping is as follows: 

contributor_bios -> chap00   
01-Introduction -> chap01    
02-View_from_the_users-Bundesbank -> chap02  
03-Use_Case-Dimensions -> chap03   
04.75-metadata-datasets -> chap04   
05-Rich_Context_Competition_Design -> chap05   
06-The_AI2_Submission_at_the_Rich_Context_Competition -> chap06   
07-Rich_Text_Competition-KAIST -> chap07   
08-Rich_Context_Competition-GESIS -> chap08   
09_combining_embeddings_DICE -> chap09   
10-Simple_Extraction_for_Social_Science_Publications-Singapore -> chap10  
12-dataset-mention-extraction-using-bilstmcrf-syracuse -> chap11   
13-The_Future_Of_AI -> chap12   

The content of 04.5-standardised-metadata has been inserted as an appendix to chap05. 

This re-mapping is done by the following script `combined_chapters/copy_and_compile_combined_images.sh`.  



## location of images files. 

Images are all in the orignial source files, and then also all copied to the following directory: `combined_chapters/combined_images/`