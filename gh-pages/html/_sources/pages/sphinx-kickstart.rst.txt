################
Sphinx Kickstart
################

Set up your environment

``
  virtualenv sphinx
  cd sphinx
  source bin/activate

  mkdir sphinx-kickstart
  cd sphinx-kickstart

  export USER=<your git username>
  export REPONAME=<new git repo name>

  #create new git repo
  curl -u $USER https://api.github.com/user/repos -d '{"name":"'"$REPONAME"'"}'

  git init
  touch README.md
  touch .gitignore
  git remote add origin https://github.com/$USER/$REPONAME.git
  git add .
  git commit -m "initial commit"
  git push origin master

