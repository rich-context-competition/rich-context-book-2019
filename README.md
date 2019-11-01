# Rich Context Competition Book Project

## About 

This repo is for coordinating the compilation of the book project associated with the [Rich Context Compettion](http://coleridgeinitiative.org/richcontextcompetition).

## Usage

The goal is to manage the process via github issues on this repo. Feedback on the process is welcome. 


## Book Schedule

- [x] Draft white papers – Feb 15 
- [x] Review and edit by Ian/Julia - March 15  
- [x] Second draft by June 15  
- [x] Send for review  
- [x] Response by August 15  
- [ ] Reviewer comments incorporated
- [ ] Final version delivered to SAGE November 30th  
- [ ] Book transmitted to Production week of December 2nd  
- [ ] Copy Editing Jan 2020  
- [ ] Typesetting early March 2020 
- [ ] Online publication April / May 2020 
- [ ] Print publication May / June 2020  


## Structure of this repository   

Each contributor chapter has it's own directory. This is where contributors place the latest versions of their chapters. e.g. `01-Introduction` contains the introductory chapters. 

These chapters come in in different formats, and we convert these chapters to markdown, and rename the source files to a consistent file name, and then place these converted files into `combined_chapters`. 

Some of the source directory names **do not** correspond to where they will appear in the book. As we go through the editing process we may move chapters around, but to reduce confusion for the contributoing authors we are keeping the source folder names stable, and renaming the chapters in the complication process. 



## Viewing the latest compiled version  

The latest complied version of the book can be viewed in the following file [rich_context_book.md](https://github.com/rich-context-competition/rich-context-book-2019/blob/master/combined_chapters/rich_context_book.md).  



## Generating a new version of the complied book  

To compile the book to markdown go into the `combined_chapters` directory and run

`
$ ./copy_and_compile_combined_images.sh
`

Roughly this will: 

- remove `md`, `pdf` and `html` files  
- create some placeholder directories for chapter specific impage files  
- copy source chapters into this directory   
- use pandoc to convert chapters to markdown  
- insert the chapter titles  
- remove artifacts created in the conversion process  
- create one markdown file `rich_context_book.md`  
- attempt to chreate a html version of the book using pandoc  
- copy artifacts into the `~/combined_chapters/spinx_version` directory ready for a spinx run  
- clean up some of the markdown files in `~/combined_chapters/spinx_version` 
- run sphinx to generate a html version of the book 



## Viewing a human readable version of the book  

In addition to creating the markdown version, we have also used sphinx to generate an easier to read html version of the book. This is created on an ad-hoc basis and may not be up to date with the latest versions of the contributor chapters, but it is a lot easier to read. You can view this version of the book here:  [richcontextbook-update](https://tinyurl.com/richcontextbook-update).  

When we combine and compile the book chapters we generate an html viewable version of the book which is placed into ``~/combined_chapters/spinx_version/_build/html`. 
