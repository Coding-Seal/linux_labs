{ ls file1 file2 2>&1 >&3 3>&-| cat -b >file1 3>&- ; } 3>&1


# Command grouping

# When commands are grouped, redirections may be applied 
# to the entire command list.