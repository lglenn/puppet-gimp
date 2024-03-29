# Puppet Module for GIMP

Install [GIMP](http://gimp.org/), the GNU Image Manipulation Program, but uses the Mac-specific distribution provided by the [GIMP on OSX](http://gimp.lisanet.de/) project. It installs Mountain Lion- and Mavericks-specific builds.

[![Build Status](https://travis-ci.org/lglenn/puppet-gimp.png?branch=master)](https://travis-ci.org/lglenn/puppet-gimp)

## Usage

```
include gimp
```

## Required Puppet Modules

* `boxen`
* `xquartz`

## Development

Set `GITHUB_API_TOKEN` in your shell with a [Github oAuth Token](https://help.github.com/articles/creating-an-oauth-token-for-command-line-use) to raise your API rate limit. You can get some work done without it, but you're less likely to encounter errors like `Unable to find module 'boxen/puppet-boxen' on https://github.com`.

Then write some code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
