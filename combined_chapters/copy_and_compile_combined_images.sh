

# updated script as of 2019-06-20

# clear the directory of md and pdf and html files
rm *.md 
rm *.pdf 
rm *.html 

# Chaapter one

## hoist placeholder title for chapter 1 


echo "trying chapter 1"
cp ../01-Introduction/01-Introduction-Rich\ Context.rtf . 
textutil -convert html 01-Introduction-Rich\ Context.rtf
pandoc 01-Introduction-Rich\ Context.html -o 01-Introduction.md
sed -i.bu "s/\[ \]{\.Apple-converted-space}//g" 01-Introduction.md
# 
sed -i.bu '1s;^;# Chapter 1 - Introduction  ;' 01-Introduction.md
echo " " >> 01-Introduction.md
echo "---" >> 01-Introduction.md
echo " " >> 01-Introduction.md


# Chapter two
echo "trying chapter 2"
cp ../02-View_from_the_users-Bundesbank/*.jpg combined_images
cp ../02-View_from_the_users-Bundesbank/20190614_whos_whaldo.md 02_bundesbank.md
sed -i.bu "s/\[Insert Figure 1\]/\!\[\]\(\.\/combined_images\/20190614_Figure1\.jpg\)/g" 02_bundesbank.md 
sed -i.bu "s/\[Insert Figure 2\]/\!\[\]\(\.\/combined_images\/20190614_Figure2\.jpg\)/g" 02_bundesbank.md
#
sed -i.bu '1s;^;# Chapter 2 - Bundesbank -- View from the users  \n;' 02_bundesbank.md
echo " " >> 02_bundesbank.md
echo "---" >> 02_bundesbank.md
echo " " >> 02_bundesbank.md



# Chapter three
echo "trying chapter 3"
cp ../03-Use_Case-Dimensions/03_ds_article.docx . 
pandoc 03_ds_article.docx -o 03_ds_article.md
cp ../03-Use_Case-Dimensions/*.png 03_images 
python3 rename_files.py "03_images/" png chap03
cp 03_images/*.png combined_images
rm 03_images/chap03* # stop build up of multiple renamed files in this directory 
#
sed -i.bu '1s;^;# Chapter 3 - Digital Science Use Cases  \n;' 03_ds_article.md
sed -i.bu "s/media\/image/combined_images\/chap03_image/g" 03_ds_article.md
echo " " >> 03_ds_article.md
echo "---" >> 03_ds_article.md
echo " " >> 03_ds_article.md



# Chapter 04.75  
echo "trying chapter 4"
cp ../04.75-metadata-datasets/MetadataForSocialScienceDatasetsV59.docx 04_context.docx 
pandoc 04_context.docx  -o 04_context.md
#
sed -i.bu '1s;^;# Chapter 4 - Context  ;' 04_context.md 
echo " " >> 04_context.md 
echo "---" >> 04_context.md 
echo " " >> 04_context.md 





 
# Chapter 05
#TODO fix images in this document 
echo "trying chapter 5"
cp ../05-Rich_Context_Competition_Design/05-Rich_Context_Competition_Design.docx . 
cp ../05-Rich_Context_Competition_Design/*.png 05_images
python3 rename_files.py "05_images/" png chap05
cp 05_images/*.png combined_images
rm 05_images/chap05* # stop build up of multiple renamed files in this directory 
pandoc 05-Rich_Context_Competition_Design.docx -o 05-Rich_Context_Competition_Design.md 
#
sed -i.bu '1s;^;# Chapter 5 - Compettion Design  ;' 05-Rich_Context_Competition_Design.md 
sed -i.bu "s/media\/image/combined_images\/chap05_figure/g" 05-Rich_Context_Competition_Design.md 
echo " " >> 05-Rich_Context_Competition_Design.md 
echo "---" >> 05-Rich_Context_Competition_Design.md 
echo " " >> 05-Rich_Context_Competition_Design.md 



# chapter 06
echo "trying chapter 6"
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/acl2015.tex . 
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/acl2015.bib .
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/datasets.png 06_images/
cp 06_images/*.png combined_images
# now chop off the top bit of the tex file 
sed -i.bu '1,38d' acl2015.tex
# now re-write the reference to the imaage 
sed -i.bu "s/datasets\.png/combined_images\/datasets\.png/g" acl2015.tex
pandoc acl2015.tex -o 06_allen_ai.md 
#
sed -i.bu '1s;^;# Chapter 6 - Allen AI  ;' 06_allen_ai.md 
echo " " >> 06_allen_ai.md 
echo "---" >> 06_allen_ai.md 
echo " " >> 06_allen_ai.md 



# Chapter 07 
echo "trying chapter 7"
cp ../07-Rich_Text_Competition-KAIST/07-Rich_Text_Competition-KAIST.md .
cp ../07-Rich_Text_Competition-KAIST/images/* 07_images/ 
cp 07_images/* combined_images 
sed -i.bu "s/\](images/\](combined_images/g" 07-Rich_Text_Competition-KAIST.md 
#
sed -i.bu '1s;^;# 7 -  KAIST  ;' 07-Rich_Text_Competition-KAIST.md 
echo " " >> 07-Rich_Text_Competition-KAIST.md 
echo "---" >> 07-Rich_Text_Competition-KAIST.md 
echo " " >> 07-Rich_Text_Competition-KAIST.md 



# Chapter 08 
echo "trying chapter 8"
cp ../08-Rich_Context_Competition-GESIS/08-Rich_Context_Competition-GESIS.md . 
cp -r -f ../08-Rich_Context_Competition-GESIS/figures/* 08_images/ 
cp 08_images/*/*.png combined_images
sed -i.bu "s/figures\/research-methods/combined_images/g" 08-Rich_Context_Competition-GESIS.md
sed -i.bu "s/figures\/research-fields/combined_images/g" 08-Rich_Context_Competition-GESIS.md
#
sed -i.bu '1s;^;# 8 -  GESIS  ;' 08-Rich_Context_Competition-GESIS.md
echo " " >> 08-Rich_Context_Competition-GESIS.md
echo "---" >> 08-Rich_Context_Competition-GESIS.md
echo " " >> 08-Rich_Context_Competition-GESIS.md



# Chapter 09 
echo "trying chapter 9"
cp ../09_combining_embeddings_DICE/09_combining_embeddings_DICE.md . 
cp  ../09_combining_embeddings_DICE/images/* 09_images/ 
cp 09_images/* combined_images 
sed -i.bu "s/\](images/\](combined_images/g" 09_combining_embeddings_DICE.md
#
sed -i.bu '1s;^;# 9 -  DICE  ;' 09_combining_embeddings_DICE.md
echo " " >> 09_combining_embeddings_DICE.md
echo "---" >> 09_combining_embeddings_DICE.md
echo " " >> 09_combining_embeddings_DICE.md


# Chapter 10
echo "trying chapter 10"
#TODO fix issues with \begin{split}
cp ../10-Simple_Extraction_for_Social_Science_Publications-Singapore/10-Simple_Extraction_for_Social_Science_Publications-Singapore.md 10_simple_extraction_Singapore.md 
#
sed -i.bu '1s;^;# 10 -  Singapore  ;' 10_simple_extraction_Singapore.md 
echo " " >> 10_simple_extraction_Singapore.md 
echo "---" >> 10_simple_extraction_Singapore.md 
echo " " >> 10_simple_extraction_Singapore.md 




# Chapter 11
echo "trying chapter 11"
cp ../12-dataset-mention-extraction-using-bilstmcrf-syracuse/main.md 11_syracuse.md 
cp ../12-dataset-mention-extraction-using-bilstmcrf-syracuse/img/* 11_images
cp 11_images/* combined_images 
sed -i.bu "s/\](img/\](combined_images/g" 11_syracuse.md 
#
sed -i.bu '1s;^;# 11 - Syracuse  ;' 11_syracuse.md 
echo " " >> 11_syracuse.md 
echo "---" >> 11_syracuse.md 
echo " " >> 11_syracuse.md 


# Chapter four and a half 
#DONE - work on possesive apostrophe - marked2 has no problem with this 
#DONE - work on removing errant backspaaces 
#DONE - work on cleaning up apple inserted spaces
echo "trying chapter 12"
cp ../04.5-standardised-metadata/04.5_RC_standard_metadata.rtf . 
textutil -convert html 04.5_RC_standard_metadata.rtf
pandoc 04.5_RC_standard_metadata.html -o 12_RC_standard_metadata.md
sed -i.bu "s/\[ \]{\.Apple-converted-space}//g" 12_RC_standard_metadata.md
sed -i.bu "s/\[  \]{\.Apple-converted-space}//g" 12_RC_standard_metadata.md
sed -i.bu "s/\]{\.Apple-converted-space}//g" 12_RC_standard_metadata.md
sed -i.bu -E "s/\[[[:space:]]/ /g" 12_RC_standard_metadata.md
#sed -i.bu "s/'/\'/g" 04.5_RC_standard_metadata.md
# https://apple.stackexchange.com/questions/204296/what-character-is-this-possessive-apostrophe 
sed -i.bu -E "s/'/\’/g" 12_RC_standard_metadata.md
#
sed -i.bu '1s;^;# Chapter 12 - Standardised Metadata  ;' 12_RC_standard_metadata.md 
echo " " >> 12_RC_standard_metadata.md 
echo "---" >> 12_RC_standard_metadata.md 
echo " " >> 12_RC_standard_metadata.md 



# Chapter 13
echo "trying chapter 13"
cp ../13-The_Future_Of_AI/richctx.md 13_future_ai.md 
cp ../13-The_Future_Of_AI/*.png 13_images
cp 13_images/* combined_images 
sed -i.bu "s/illo/combined_images\/illo/g" 13_future_ai.md 
#
sed -i.bu '1s;^;# 13 - Future AI   ;' 13_future_ai.md 
echo " " >> 13_future_ai.md 
echo "---" >> 13_future_ai.md 
echo " " >> 13_future_ai.md 





# cleanup artifacts created in conversion 
rm *.bu 
rm *.docx 
rm *.rtf 
rm *.html 
rm *.tex 

# create a combined markdown file 
cat *.md > combined_book.md 

# replace hanging backslashes with double spaces to creatae new lines in markdown
python clean_backslashes.py combined_book.md > combined_book_no_backslashes.md

# attempt a compile to html with pandoc do the compile
pandoc combined_book_no_backslashes.md -o combined_book_no_backslashes.html


