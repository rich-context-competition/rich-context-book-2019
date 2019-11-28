# test one chapter conversion script 


cp ../09_combining_embeddings_DICE/main.tex . 
cp ../09_combining_embeddings_DICE/references.bib . 
pandoc --filter pandoc-citeproc --bibliography=references.bib main.tex -o chapter09_refs.md 

# Chapter 09 
# echo "trying chapter 9"
# cp ../09_combining_embeddings_DICE/09_combining_embeddings_DICE.md . 
# cp  ../09_combining_embeddings_DICE/images/* 09_images/ 
# cp 09_images/* combined_images 
# sed -i.bu "s/\](images/\](combined_images/g" 09_combining_embeddings_DICE.md
# #
# sed -i.bu '1s;^;# 9 -  DICE  ;' 09_combining_embeddings_DICE.md
# sed -i.bu "s/{#preprocess}//g" 09_combining_embeddings_DICE.md
# echo " " >> 09_combining_embeddings_DICE.md
# echo "---" >> 09_combining_embeddings_DICE.md
# echo " " >> 09_combining_embeddings_DICE.md

