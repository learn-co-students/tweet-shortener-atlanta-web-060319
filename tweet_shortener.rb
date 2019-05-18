# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
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

def word_substituter(string)
  index = 0
  string_array = string.split(" ")
  string_array.collect {|word|
    dictionary.each {|key, value|
      if word == key || word === key.capitalize
        string_array[index] = value
      end
    }
    index += 1
  }
  puts string_array.join(" ")
  return string_array.join(" ")
end

def bulk_tweet_shortener(array_string)
  array_string.each {|string|
    word_substituter(string)
  }
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    return string
  end
end

def shortened_tweet_truncator(string)
  processed_string = selective_tweet_shortener(string)
  if processed_string.length > 140
    return processed_string[0..136] +"..."
  else
    return processed_string
  end
end
