# this script is to assist installing R packages on university computers
# when the R Studio program is running through cloudpaging player / apps anywhere.
# This causes very long delays installing packages and they are not persistent between sessions

# find the onedrive folder location for the user
my_OD <- Sys.getenv("OneDrive")

# create a folder name in the onedrive for the R library files
my_R_lib <- paste(my_OD, "\\Rlibs", sep="")
paste("R library folder is ", my_R_lib)

if( !dir.exists(my_R_lib) ) { # only proceed with folder creation if it does not already exist
  dir.create(
    my_R_lib,
    recursive = TRUE
  )
}

# add the folder to libpaths so R will store library files there
.libPaths(c(
  my_R_lib,
  .libPaths()
))

# check that the addition worked correctly
.libPaths()

# When installing packages the files should now go in the onedrive location
# This script needs to be run at the beginning of each session to set the libpaths again
# then hopefully R will find the files installed last time.

# example
# install.packages("tidyverse")

# and you can check where the files were installed like this:
# find.package("tidyverse")
