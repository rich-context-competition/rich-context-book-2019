

# updated script as of 2019-06-20

# clear the directory of md and pdf and html files
rm *.md 
rm *.pdf 
rm *.html 

# make placeholder directories for images
mkdir 01_images
mkdir 02_images
mkdir 03_images
mkdir 04_images
mkdir 05_images
mkdir 06_images
mkdir 07_images
mkdir 08_images
mkdir 09_images
mkdir 10_images
mkdir 11_images
mkdir 12_images
mkdir 13_images

# Chaapter one

## hoist placeholder title for chapter 1 




echo "trying chapter 1"
cp ../01-Introduction/Intro\ chapter_October\ 28.docx . 
pandoc Intro\ chapter_October\ 28.docx -o chap01.md
# sed -i.bu "s/\[ \]{\.Apple-converted-space}//g" 01-Introduction.md
# 
# sed -i.bu '1s;^;# Chapter 1 - Introduction  ;' 01-Introduction.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '# Chapter 1 - Introduction' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap01.md >> /tmp/newfile 
cp /tmp/newfile chap01.md
#



# Chapter two
echo "trying chapter 2"
cp ../02-View_from_the_users-Bundesbank/*.jpg combined_images
cp ../02-View_from_the_users-Bundesbank/20190614_whos_whaldo.md chap02.md
sed -i.bu "s/\[Insert Figure 1\]/\!\[\]\(\.\/combined_images\/20190614_Figure1\.jpg\)/g" chap02.md 
sed -i.bu "s/\[Insert Figure 2\]/\!\[\]\(\.\/combined_images\/20190614_Figure2\.jpg\)/g" chap02.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 2 - Bundesbank' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap02.md >> /tmp/newfile 
cp /tmp/newfile chap02.md
#



# Chapter three
echo "trying chapter 3"
cp ../03-Use_Case-Dimensions/DS\ article.docx . 
pandoc DS\ article.docx -o chap03.md
cp ../03-Use_Case-Dimensions/*.png 03_images 
python3 rename_files.py "03_images/" png chap03
cp 03_images/*.png combined_images
rm 03_images/chap03* # stop build up of multiple renamed files in this directory 
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 3 - Digital Science Use Cases' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap03.md >> /tmp/newfile 
cp /tmp/newfile chap03.md
#
sed -i.bu "s/media\/image/combined_images\/chap03_image/g" chap03.md



# Chapter 04.75  
echo "trying chapter 4"
cp ../04.75-metadata-datasets/Allen_MetadataForSocialScienceDatasetsV63.docx 04_context.docx 
pandoc 04_context.docx  -o chap04.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo ' ' >> /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 4 - Metadata for Social Science Datasets' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap04.md >> /tmp/newfile 
cp /tmp/newfile chap04.md
#




 
# Chapter 05
#TODO fix images in this document 
echo "trying chapter 5"
cp ../05-Rich_Context_Competition_Design/Chap\ 5_pn_jl_sbr.docx 05_design.docx
cp ../05-Rich_Context_Competition_Design/*.png 05_images
python3 rename_files.py "05_images/" png chap05
cp 05_images/*.png combined_images
rm 05_images/chap05* # stop build up of multiple renamed files in this directory 
pandoc 05_design.docx -o chap05.md
#
sed -i.bu "s/media\/image/combined_images\/chap05_figure/g" chap05.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 5 - Compettion Design' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap05.md >> /tmp/newfile 
cp /tmp/newfile chap05.md
#



# chapter 06
echo "trying chapter 6"
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/06-The_AI2_Submission_at_the_Rich_Context_Competition.md chap06.md
cp ../06-The_AI2_Submission_at_the_Rich_Context_Competition/datasets.png 06_images/
cp 06_images/*.png combined_images
# now re-write the reference to the imaage 
sed -i.bu "s/datasets\.png/combined_images\/datasets\.png/g" chap06.md
sed -i.bu "s/{#sec:areas}//g" chap06.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 6 - Finding datasets in publications: The Allen Institute for Artificial Intelligence approach' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap06.md >> /tmp/newfile 
cp /tmp/newfile chap06.md
#



# Chapter 07 
echo "trying chapter 7"
cp ../07-Rich_Text_Competition-KAIST/07-Rich_Text_Competition-KAIST.md chap07.md
cp ../07-Rich_Text_Competition-KAIST/images/* 07_images/ 
cp 07_images/* combined_images 
sed -i.bu "s/\](images/\](combined_images/g" chap07.md 
#
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 7 - Finding datasets in publications: The KAIST approach' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap07.md   >> /tmp/newfile 
cp /tmp/newfile chap07.md
#


# Chapter 08 
echo "trying chapter 8"
cp ../08-Rich_Context_Competition-GESIS/08-Rich_Context_Competition-GESIS.md chap08.md
cp -r -f ../08-Rich_Context_Competition-GESIS/figures/* 08_images/ 
cp 08_images/*.png combined_images
sed -i.bu "s/figures/combined_images/g" chap08.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 8 - Knowledge Extraction from scholarly publications: The GESIS contribution to the Rich Context Competition' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap08.md   >> /tmp/newfile 
cp /tmp/newfile chap08.md
#


# Chapter 09 
echo "trying chapter 9"
cp ../09_combining_embeddings_DICE/09_combining_embeddings_DICE.md chap09.md
cp  ../09_combining_embeddings_DICE/images/* 09_images/ 
cp 09_images/* combined_images 
sed -i.bu "s/\](images/\](combined_images/g" chap09.md
#
sed -i.bu "s/{#preprocess}//g" chap09.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 9 - Finding datasets in publications: The University of Paderborn approach' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap09.md  >> /tmp/newfile 
cp /tmp/newfile chap09.md
#



# Chapter 10
echo "trying chapter 10"
#TODO fix issues with \begin{split}
cp ../10-Simple_Extraction_for_Social_Science_Publications-Singapore/10-Simple_Extraction_for_Social_Science_Publications-Singapore.md chap10.md 
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 10 - Finding datasets in publications: The Singapore Management University approach' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap10.md    >> /tmp/newfile 
cp /tmp/newfile chap10.md 
#




# Chapter 11
echo "trying chapter 11"
cp ../12-dataset-mention-extraction-using-bilstmcrf-syracuse/main.md chap11.md
cp ../12-dataset-mention-extraction-using-bilstmcrf-syracuse/img/* 11_images
cp 11_images/* combined_images 
sed -i.bu "s/\](img/\](combined_images/g" chap11.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 11 - Finding datasets in publications: The University of Syracuse approach' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap11.md    >> /tmp/newfile 
cp /tmp/newfile chap11.md
#

# Chapter four and a half 
#DONE - work on possesive apostrophe - marked2 has no problem with this 
#DONE - work on removing errant backspaaces 
#DONE - work on cleaning up apple inserted spaces
echo "trying chapter 12"
cp ../04.5-standardised-metadata/04.5_RC_standard_metadata.rtf . 
textutil -convert html 04.5_RC_standard_metadata.rtf
pandoc 04.5_RC_standard_metadata.html -o chap12.md
sed -i.bu "s/\[ \]{\.Apple-converted-space}//g" chap12.md
sed -i.bu "s/\[  \]{\.Apple-converted-space}//g" chap12.md
sed -i.bu "s/\]{\.Apple-converted-space}//g" chap12.md
sed -i.bu -E "s/\[[[:space:]]/ /g" chap12.md
#sed -i.bu "s/'/\'/g" 04.5_RC_standard_metadata.md
# https://apple.stackexchange.com/questions/204296/what-character-is-this-possessive-apostrophe 
sed -i.bu -E "s/'/\’/g" chap12.md
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 12 - Standard Test Corpora' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap12.md      >> /tmp/newfile 
cp /tmp/newfile chap12.md 
#



# Chapter 13
echo "trying chapter 13"
cp ../13-The_Future_Of_AI/richctx.md chap13.md 
cp ../13-The_Future_Of_AI/*.png 13_images
cp 13_images/* combined_images 
sed -i.bu "s/illo/combined_images\/illo/g" chap13.md 
#
# add a placeholder chapter heading 
echo ' ' > /tmp/newfile
echo '---' >> /tmp/newfile
echo ' ' >> /tmp/newfile
echo '# Chapter 13 - The future of context' >> /tmp/newfile
echo ' ' >> /tmp/newfile
cat chap13.md     >> /tmp/newfile 
cp /tmp/newfile chap13.md 
#

# cleanup artifacts created in conversion 
rm *.bu 
rm *.docx 
rm *.rtf 
rm *.html 
rm *.tex 

# remove placeholder directories for images
rm -r 01_images
rm -r 02_images
rm -r 03_images
rm -r 04_images
rm -r 05_images
rm -r 06_images
rm -r 07_images
rm -r 08_images
rm -r 09_images
rm -r 10_images
rm -r 11_images
rm -r 12_images
rm -r 13_images

# replace hanging backslashes with double spaces to creatae new lines in markdown
python clean_backslashes.py "chap??.md"

# create a combined markdown file 
cat *.md > rich_context_book.md

# attempt a compile to html with pandoc do the compile
pandoc rich_context_book.md -o rich_context_book.html

# create a resource for sphinx 
cp -r -f combined_images sphinx_version/
cp chap*.md sphinx_version/

# now try to resolve issues with formatting of sphinx versions. 

cd sphinx_version/ 

# chap 4 remove lines like {#acknowledgments \.ListParagraph}
sed -i.bu "s/{#acknowledgments \.ListParagraph}//g" chap04.md


# chap 6 remove lines like [\[tab:e2e\_results\]]{#tab:e2e_results label="tab:e2e_results"} 
sed -i.bu "s/\[\\\\\[tab:ner\\\_results\\\]\]{#tab:ner\_results label=\"tab:ner\_results\"}//g" chap06.md 
sed -i.bu "s/\[\\\\\[tab:e2e\\\_results\\\]\]{#tab:e2e\_results label=\"tab:e2e\_results\"}//g" chap06.md
sed -i.bu "s/\[\\\\\[tab:test\\\_results\\\]\]{#tab:test\_results label=\"tab:test\_results\"}//g" chap06.md
sed -i.bu "s/\[\\\\\[tab:e2e\\\\_results\\\\\]\](#tab:e2e_results){reference-type=\"ref\" reference=\"tab:e2e_results\"}//g" chap06.md
sed -i.bu "s/\[\\\\\[tab:test\\\\_results\\\\\]\](#tab:test_results){reference-type=\"ref\" reference=\"tab:test_results\"}//g" chap06.md

sed -i.bu "s/{#acknowledgments \.unnumbered}//g" chap11.md

# remove temp files 
rm *.bu 

# attempt to make the sphinx version of the book 
make html 
