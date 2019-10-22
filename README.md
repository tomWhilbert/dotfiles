# dotFiles
config files
When setting up a new machine - clone this repo
Create a different branch for each machine...
One possible way is to :
So what is required? Start by defining a new directory and inside that directory initialize an empty repository. After that activate the sparse checkout mode for the repository, add the remote of the repository and configure the folders required for checkout into sparse mode. From here on you can checkout the different brunches and get only the directories or file marked for checkout.

Here are the console commands explained above:

    mkdir repo -dir
    cd repo -dir
    git init
    git config core.sparseCheckout true
    git remote add -f origin git://repo-location
    echo "required_subdir/*" > .git/info/sparse-checkout
    git checkout [branchname]
    git pull

