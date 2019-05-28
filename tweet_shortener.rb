# Write your code here.
def dictionary
  substitute = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweets)
  
 tweets.split(" ").map do |word|
   if dictionary.keys.include?(word.downcase)
     word = dictionary[word.downcase]
  else
     word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |words|
    puts word_substituter(words)
 end
end

def selective_tweet_shortener(tweets)
  if tweets.chars.length > 140
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweets)
  if word_substituter(tweets).chars.length > 140
    truncates = word_substituter(tweets).chars[0..136].push("...").join("")
  else
    word_substituter(tweets)
  end
end