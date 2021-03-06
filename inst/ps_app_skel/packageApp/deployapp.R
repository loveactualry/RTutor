# Deploying an interactive RTutor problem set on shinyapps.io

# 1. Make sure you have generated a package for your problem set and 
#    have it hosted on github

# 2. Install in the subfolder ./app/work all the data sets that are used by
#    your problem set.

# 3. All packages that are used must have be installed in your
#    RStudio from CRAN or GITHUB (a local build of a package does not work)

if (DIRECT_EXECUTION) {
  # Run this code if you need to install some packages	
  library(devtools)
  install_github("skranz/shinyEvents",ref = "master")  
  install_github("skranz/regtools",ref = "master")
  install_github("skranz/dplyrExtras",ref = "master")
  install_github("skranz/stringtools",ref = "master")

  # Pick master or development version of RTutor
  install_github("FORK_DEFAULT/RTutor",ref = "master")  
  #install_github("FORK_DEFAULT/RTutor",ref = "develop")

  # You need to install your own package from your github account
  install_github("GITHUB_USERNAME/PACKAGE_NAME",ref = "master") 
}

# 4. You must now install the shinyapps package and open a free account
#    on shinyapps.io. See the description here:
#    http://shiny.rstudio.com/articles/shinyapps.html

#    Then adapt and run the lines below
if (DIRECT_EXECUTION) {


  # You must adapt the following lines to your account as explained in
  #  http://shiny.rstudio.com/articles/shinyapps.html 

  rsconnect::setAccountInfo(
    name='SHINYAPPS_USERNAME',
    token='SHINYAPPS_TOKEN',
    secret='SHINYAPPS_SECRET')

  library(shinyapps)
  
  # Set app directory as working directory
  setwd("APP_PATH/app")

  # This command deploys your app on shinyapps.io
  deployApp(appName="APP_NAME")

  # You can now log in on shinyapps.io to get usage statistics about your app
}