# Stenglein Projects Website

This is the repository which holds my personal website at www.stengleinprojects.com.

The site utilizes a combination of
[Jekyll](https://jekyllrb.com/), [Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/),
and my own customizations.

## Installation

This site does not *need* to be installed locally to work, because it runs via
git-pages. But I highly reccomend that you install the site to a local work
environment so that you can work on the page in a way that does not automatically
push to master.

### Prerequisites

You will need to install Ruby, Rubygems and NodeJS/npm before proceeding.

Next, you need to install jekyll.

`gem install jekyll`

To make things easier, you will need to install bundle as well.

`gem install bundle`

### The Theme

Next up, you will need to clone down the theme. Go to your development directory
and clone down the repository. If you do not have one, I reccomend `~/dev/` as a
potential location.

`mkdir ~/dev`

`cd ~/dev/`

`git clone git@github.com:ocelotsloth/ocelotsloth.github.io.git`

This theme includes a `GemFile` for all of the extra plugins needed. The
features included in this theme are the ones included on Github Pages, to make
them work on Github's hosting. To install them simply go to the root directory
of the project and run bundle.

`cd ocelotsloth.github.io`

`bundle install`

`bundle update`

## Usage

You should be able to run the site now. The `master` branch is the deployment
branch and has different environment variables, so switch to the development
branch and pull down any changes.

`git checkout development`

`git pull`

You can now use the following command to run the site locally:

`./serve.sh`

## Development Tips

If you make changes to the site, the jekyll server will rebuild the site
automatically in most cases, but for changes to `_config.yml` or to any of the
css, there are special instructions.

For changes to `_config.yml`, simply exit and excecute `./start.sh`
again.

For changes to the css, you will need to run `npm run build:css` to rebuild the
`main.css` file.

## Notes

This site also hosts a .txt file for keybase verification.
- www.stengleinprojects.com/keybase.txt
- GPG Fingerprint: 63B67DAF
