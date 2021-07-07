# Write your code here.

def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "For" => "4",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end 

def word_substituter(string)
  string.split(" ").each { |word| word.replace dictionary[word] if dictionary[word] }.join(" ")
end 

def bulk_tweet_shortener(array)
  array.each { |i| puts word_substituter(i) }
end 

def selective_tweet_shortener(array)
  if array.length <= 140 
    return array 
  else 
    word_substituter(array)
  end 
end 


def shortened_tweet_truncator(array)
      new_array = selective_tweet_shortener(array)
      if new_array.length <= 140 
        return new_array
      else new_array.length > 141 
         new_array[0..135] << " ..."
      end 
end 




