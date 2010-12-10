# Sprocketizer

Sprocketizer is a flexible Sprockets gem for Rails 3.

## General info

Sprocketizer stole most of its code from these two projects:

http://github.com/sstephenson/sprockets-rails
http://github.com/coderifous/dancing_with_sprockets

The major differences are:
  
  * It is flexible and configurable.
  * It is a gem. 
  * It is Rails 3 ONLY.

## Prerequisites

The only requirement is the Sprockets gem. Just add this to your Gemfile:

    gem 'sprockets'

## Installation

There are two steps to getting Sprocketizer installed. First, add it to your Gemfile:

    gem 'sprocketizer'

Second, create a sprockets.yml file in your config directory. The default configuration would look like this:

    asset_root: public
    load_path:
      - app/javascripts

Note that you do NOT include a source_file configuration like you would with the sprockets-rails plugin.

## Usage

Any javascript file you request that is not in your public/javascripts folder will be generated using sprockets. For example, a request to:

    http://example.com/javascripts/sprockets.js

will attempt to render the file app/javascripts/sprockets.js using sprockets. You can also reference files in subdirectories with no problem:

    http://example.com/javascripts/sprocket/another_file.js

will render the file app/javascripts/sprocket/another_file.js

Finally, you can still use the javascript_include_tag helper from rails since the URL is the same as if the file lived in your public/javascripts folder.

## Contributors

  * [skanev](https://github.com/skanev)

## Copyright

Copyright (c) 2010 RedBeard Tech. See LICENSE for details.
