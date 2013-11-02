# fluxapi

A API-wrapper for the Fluxiom-API (http://www.fluxiom.com)

## FEATURES/PROBLEMS:

Currently very basic and only to retrieve data, not update or upload data. 

## Usage:

```ruby
require 'fluxapi'

fluxiom = Fluxiom.new('validcode', 'sebastian', 'SecretPassword')
fluxiom.assets
fluxiom.users
```

## INSTALL:

Install the gem:

```shell
$ gem install fluxapi
```

or add to Gemfile

```ruby
gem "fluxapi"
```

## LICENSE:

(The MIT License)

Copyright (c) 2013 Sebastian Gräßl

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
