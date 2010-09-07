# Read It Later List To Instapaper #

## Summary ##

If you have decided you want to use Instapaper, but you already have a lot of Read it Later entries, this script will migrate them to your Instapaper account.  They will be inserted in the same order you added them to Read it Later.

## Install ##

Download the script then:

    sudo gem install ricepaper

## Usage ##

* Go to readitlaterlist.com and get an API Key: http://readitlaterlist.com/api/signup/.  Use the api key, your user name, and your password in the line below (update the line to what the api request provides you.)

    https://readitlaterlist.com/v2/get?username=USERNAME&password=PASSWORD&apikey=APIKEY

* Edit the script, add your user name and password at the bottom.

    runner = RIL2Instapaper.new 'RIL_JSON_FILE', 'INSTAPAPER_USER', 'INSTAPAPER_PASSWORD'

* Run the script.

## License ##

  Copyright (c) 2010 Concepts Ahead

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
