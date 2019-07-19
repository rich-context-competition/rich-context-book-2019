sed -i.bu "s/\[ \]{\.Apple-converted-space}//g" combined_book.md 
sed -i.bu "s/\[  \]{\.Apple-converted-space}//g" combined_book.md 
sed -i.bu "s/\]{\.Apple-converted-space}//g" combined_book.md 
sed -i.bu -E "s/\[[[:space:]]/ /g" combined_book.md 
