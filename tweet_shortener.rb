


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
      elsif condition


        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |phrase|
    puts word_substituter(phrase)
  end
end

def selective_tweet_shortener(tweets)
  tweets.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)
    else phrase.length <= 140
      phrase
    end
  end
end

def shortened_tweet_truncator(tweets)
  tweets.split(" ").map do |phrase|
    if phrase.length > 140
      word_substituter(phrase)[0..140] + "..."
    else
      phrase
    end
  end.join(" ")
end
