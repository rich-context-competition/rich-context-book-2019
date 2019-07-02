

# updated script as of 2019-06-20

# clear the directory of md and pdf and html files
rm *.md 
rm *.pdf 
rm *.html 

# Chaapter one
cp ../01-Introduction/01-Introduction-Rich\ Context.rtf . 
textutil -convert html 01-Introduction-Rich\ Context.rtf
pandoc 01-Introduction-Rich\ Context.html -o 01-Introduction.md


# Chapter two
cp ../02-View_from_the_users-Bundesbank/*.jpg 02_images
cp ../02-View_from_the_users-Bundesbank/20190614_whos_whaldo.md 02_bundesbank.md
sed -i.bu "s/\[Insert Figure 1\]/\!\[\]\(\.\/02_images\/20190614_Figure1\.jpg\)/g" 02_bundesbank.md 
sed -i.bu "s/\[Insert Figure 2\]/\!\[\]\(\.\/02_images\/20190614_Figure2\.jpg\)/g" 02_bundesbank.md


# Chapter three
cp ../03-Use_Case-Dimensions/03_ds_article.docx . 
pandoc 03_ds_article.docx -o 03_ds_article.md


# Chapter four 
cp ../04-Broader_Context/04_context.md . 


# Chapter four and a half 
#TODO - work on possesive apostrophe 
#TODO - work on removing errant backspaaces 
#TODO - work on cleaning up apple inserted spaces
cp ../04.5-standardised-metadata/04.5_RC_standard_metadata.rtf . 
textutil -convert html 04.5_RC_standard_metadata.rtf
pandoc 04.5_RC_standard_metadata.html -o 04.5_RC_standard_metadata.md
sed -i.bu "s/\[ \]{\.Apple-converted-space}//g" 04.5_RC_standard_metadata.md
sed -i.bu "s/\[  \]{\.Apple-converted-space}//g" 04.5_RC_standard_metadata.md
sed -i.bu "s/\]{\.Apple-converted-space}//g" 04.5_RC_standard_metadata.md
sed -i.bu -E "s/\[[[:space:]]/ /g" 04.5_RC_standard_metadata.md
#sed -i.bu "s/'/\'/g" 04.5_RC_standard_metadata.md
# https://apple.stackexchange.com/questions/204296/what-character-is-this-possessive-apostrophe 
sed -i.bu -E "s/'/\’/g" 04.5_RC_standard_metadata.md

# Chapter 04.75 
cp ../04.75-metadata-datasets/MetadataForSocialScienceDatasetsV59.docx 04.75MD_datasets.docx
pandoc 04.75MD_datasets.docx -o 04.75MD_datasets.md 

# Chapter 05
#TODO fix images in this document 
cp ../05-Rich_Context_Competition_Design/05-Rich_Context_Competition_Design.docx . 
pandoc 05-Rich_Context_Competition_Design.docx -o 05-Rich_Context_Competition_Design.md 


# chapter 06
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/acl2015.tex . 
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/acl2015.bib .
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/datasets.png 06_images/
# now chop off the top bit of the tex file 
sed -i.bu '1,38d' acl2015.tex
# now re-write the reference to the imaage 
sed -i.bu "s/datasets\.png/06_images\/datasets\.png/g" acl2015.tex
pandoc acl2015.tex -o 06_allen_ai.md 


# Chapter 07 
cp ../07-Rich_Text_Competition-KAIST/07-Rich_Text_Competition-KAIST.md .
cp ../07-Rich_Text_Competition-KAIST/images/* 07_images/ 
sed -i.bu "s/\](images/\](07_images/g" 07-Rich_Text_Competition-KAIST.md 

# Chapter 08 
cp ../08-Rich_Context_Competition-GESIS/08-Rich_Context_Competition-GESIS.md . 
cp -r -f ../08-Rich_Context_Competition-GESIS/figures/* 08_images/ 
sed -i.bu "s/src\=\"figures/src\=\"08_images/g" 08-Rich_Context_Competition-GESIS.md

# Chapter 09 
cp ../09_combining_embeddings_DICE/09_combining_embeddings_DICE.md . 
cp  ../09_combining_embeddings_DICE/images/* 09_images/ 
sed -i.bu "s/src\=\"figures/src\=\"08_images/g" 
sed -i.bu "s/\](images/\](09_images/g" 09_combining_embeddings_DICE.md

# Chapter 10
#TODO fix issues with \begin{split}
cp ../10-Simple_Extraction_for_Social_Science_Publications-Singapore/10-Simple_Extraction_for_Social_Science_Publications-Singapore.md 10_simple_extraction_Singapore.md 


# Chapter 11
cp ../11-Research_Agenda_and_Next_Steps/README.md 11_placeholder.md 


# Chapter 12
cp ../12-dataset-mention-extraction-using-bilstmcrf-syracuse/main.md 12_syracuse.md 
cp ../12-dataset-mention-extraction-using-bilstmcrf-syracuse/img/* 12_images
sed -i.bu "s/\](img/\](12_images/g" 12_syracuse.md 


# Create placeholder files for between chapters 
cp ../chapter_break_placeholder.md 01.5_break.md
cp ../chapter_break_placeholder.md 02.5_break.md
cp ../chapter_break_placeholder.md 03.5_break.md
cp ../chapter_break_placeholder.md 04.55_break.md
cp ../chapter_break_placeholder.md 045_break.md
cp ../chapter_break_placeholder.md 05.5_break.md
cp ../chapter_break_placeholder.md 06.5_break.md
cp ../chapter_break_placeholder.md 07.5_break.md
cp ../chapter_break_placeholder.md 08.5_break.md
cp ../chapter_break_placeholder.md 09.5_break.md
cp ../chapter_break_placeholder.md 10.5_break.md
cp ../chapter_break_placeholder.md 11.5_break.md
cp ../chapter_break_placeholder.md 12.5_break.md


# cleanup 
rm *.bu 
rm *.docx 
rm *.rtf 
rm *.html 
rm *.tex 

# do the compile
pandoc *.md > book.html 
# pandoc *.md > book.pdf - pdf generataion is not creating a document that I can open


