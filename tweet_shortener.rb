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
      if new_array.length > 140 
        new_array[0..135] << "..."
      else 
        retun new_array 
      end 
end 

# def shortened_tweet_truncator(tweet)
#   shorten_tweet = selective_tweet_shortener(tweet)
#   shorten_tweet.length > 140 ? shorten_tweet[0..135] << " ..." : shorten_tweet
# end





