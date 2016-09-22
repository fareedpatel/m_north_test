# m_north_test

Write a function that will take a string as an input, identify whether it contains any items from a list of banned words that aren't listed in the exceptions. The function should return the original string with the vowels of all banned words replaced with dashes "-". All checking should be case sensitive.

 |Banned Word  |Exception 1  |Exception 2  |
 |-------------|-------------|-------------|
 |red          |covered      |coloured     |
 |green        |evergreen    |greenbelt    |
 |blue         |blues        |             |
 |yellow       |             |             |
 
 You can use any programing language you're comfortable with, but will need to talk through your approach and demonstrate it working

```sh
 # instructions - to run application
 git clone https://github.com/fareedpatel/m_north_test.git
 cd m_north_test
irb
require './lib/text_filter'
text_filter = TextFilter.new
=> #<TextFilter:0x007fc4b4170540 @string_input=nil>
text_filter("no red houses on the greenbelt")
>="no r-d houses on the greenbelt"

#Test

```sh
cd m_north_test
rspec
