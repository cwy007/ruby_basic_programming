Returns a copy of str with the first occurrence of pattern replaced by the second argument. The pattern is typically a Regexp; if given as a String, any regular expression metacharacters it contains will be interpreted literally, e.g. '\\d' will match a backslash followed by 'd', instead of a digit.

If replacement is a String it will be substituted for the matched text. It may contain back-references to the pattern's capture groups of the form "\d", where d is a group number, or "\k<n>", where n is a group name. If it is a double-quoted string, both back-references must be preceded by an additional backslash. However, within replacement the special match variables, such as $&, will not refer to the current match. If replacement is a String that looks like a pattern's capture group but is actually not a pattern capture group e.g. "\'", then it will have to be preceded by two backslashes like so "\\'".

If the second argument is a Hash, and the matched text is one of its keys, the corresponding value is the replacement string.

In the block form, the current match string is passed in as a parameter, and variables such as $1, $2, $`, $&, and $' will be set appropriately. The value returned by the block will be substituted for the match on each call.

The result inherits any tainting in the original string or any supplied replacement string.

"hello".sub(/[aeiou]/, '*')                  #=> "h*llo"
"hello".sub(/([aeiou])/, '<\1>')             #=> "h<e>llo"
"hello".sub(/./) {|s| s.ord.to_s + ' ' }     #=> "104 ello"
"hello".sub(/(?<foo>[aeiou])/, '*\k<foo>*')  #=> "h*e*llo"
'Is SHELL your preferred shell?'.sub(/[[:upper:]]{2,}/, ENV)
 #=> "Is /bin/bash your preferred shell?"
