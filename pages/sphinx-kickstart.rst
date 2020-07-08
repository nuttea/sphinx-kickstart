################
Sphinx Kickstart
################

Set up your environment
#######################

Local setup (Mac OS X)
***********************

Setup Python environment
========================

Mac OS X
--------

Install xcode-select that will be needed for 'make' developer command

.. code-block::

  xcode-select --Install

Python

Install python3 from brew

.. code-block::

  brew install python3


Setup Python and Sphinx
-----------------------

Setup python virtualenv and instakk sphinx, read-the-docs themes and markdown support extensions

.. code-block::

  virtualenv sphinx
  cd sphinx
  source bin/activate
  pip install sphinx
  pip install sphinx-rth-theme
  pip install recommonmark

Update conf.py file
-------------------

.. code-block::

  import sphinx_rtd_theme
  
  extensions = [
      "recommonmark",
      "sphinx_rtd_theme"
  ]

  html_theme = "sphinx_rtd_theme"


To use the theme in your Sphinx project, you will need to add the following to your conf.py file:



Create a project folder and initialize Sphinx
---------------------------------------------

Set your git repo username and repo name in ENV vars

.. code-block::

  export USER=<your git username>
  export REPONAME=<new git repo name>

  mkdir $REPONAME
  cd $REPONAME

Create new  github repo

.. code-block::

  # create new git repo
  curl -u $USER https://api.github.com/user/repos -d '{"name":"'"$REPONAME"'"}'

  git
  git init
  touch README.md
  touch .gitignore
  git remote add origin https://github.com/$USER/$REPONAME.git
  git add .
  git commit -m "initial commit"
  git push origin master

