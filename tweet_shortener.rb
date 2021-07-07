require "pry"

def dictionary
#contains words to be substitued and their subs in k -v
  # "hello" becomes 'hi'
  # "to, two, too" become '2' 
  # "for, four" become '4'
  # 'be' becomes 'b'
  # 'you' becomes 'u'
  # "at" becomes "@" 
  # "and" becomes "&"
 {
    "hello" => "hi", 
    ["to, two, too"] => "2",
    ["for, four"] => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

  

def word_substituter(string)
  string.split.collect do |word|
  keys = dictionary.keys.flatten.join(", ").split(", ")
  lower_case = word.downcase
      if keys.include?(lower_case) && lower_case == "for" || lower_case == "four"
        word = dictionary[["for, four"]]
      elsif keys.include?(lower_case) && lower_case == "to" || lower_case == "two" || lower_case == "too"
        word = dictionary[["to, two, too"]]
      elsif keys.include?(lower_case)
        word = dictionary[lower_case]
      else 
        word
      end
  end.join(" ")
end  

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else string
  end
end 

def shortened_tweet_truncator(string)
  if selective_tweet_shortener(string).length > 140 
    string[0..139]
  else
    selective_tweet_shortener(string)
  end
end