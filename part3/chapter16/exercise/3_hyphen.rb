def word_capitalize(word)
  word.split(/\-/).collect{|w| w.capitalize}.join("-")
end

p word_capitalize("in-reply-to")
p word_capitalize("X-MAILER")
p word_capitalize("china")
