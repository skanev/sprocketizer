# Sprocketizer

Sprocketizer is an flexible Sprockets gem for Rails 3.

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

## Copyright & License

Copyright (c) 2010 Matt Hodgson

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.