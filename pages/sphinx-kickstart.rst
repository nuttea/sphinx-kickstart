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
  curl \
    -u $USER \
    https://api.github.com/user/repos -d '{"name":"'"$REPONAME"'"}'

  curl \
    -X POST \
    -u $USER \
    -H "Accept: application/vnd.github.switcheroo-preview+json" \
    https://api.github.com/repos/$USER/$REPONAME/pages \
    -d '{"source": {"branch":"master", "path": "/docs"}}'

Init new git and make your first commit

.. code-block::

  git init
  
  cat <<EOF >>.gitignore
  _build
  _templates
  EOF

  mkdir _static
  mkdir docs

  git remote add origin https://github.com/$USER/$REPONAME.git
  git add .
  git commit -m "initial commit"
  git push origin master

Download and unzip Sphinx Read the Docs template and build your first pages

.. code-block::

  wget https://github.com/nuttea/sphinx-kickstart/raw/master/sphinx_rtd_template.zip
  unzip sphinx_rtd_template.zip
  rm sphinx_rtd_template.zip

Build, commit and push your RTD site to 'docs'

.. code-block::

  ./commit.sh


