find -name "*.txt" -exec grep -Pio "(?<=\s|:|\.|\(|^)[a-z0-9]+([\.-][a-z0-9]+)*@([a-z0-9]+\.)+[a-z0-9]+(?=\s|$|\.|,|\))" '{}' \; | tr [A-Z] [a-z] | sort -u >> allemails.lst   