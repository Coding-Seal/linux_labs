{ ls file1 file2 2>&1 1>&3 | cat -b >file1  ; } 3>&1
(ls file1 file2 3>&2 2>&1 1>&3) | nl > file1



# Command grouping

# When commands are grouped, redirections may be applied 
# to the entire command list.
# nl