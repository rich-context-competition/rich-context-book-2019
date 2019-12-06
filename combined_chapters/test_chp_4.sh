

# Chapter 04.75  
echo "trying chapter 4"
cp ../04.75-metadata-datasets/Allen_Metatata_chp4_final.docx 04_context.docx 
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
