def dictionary
 {"hello" => "hi", 
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



def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
    else 
    tweet 
  end 
end

def shortened_tweet_truncator(tweet)
if word_substituter(tweet).size > 140
  tweet[0..139]
else 
  word_substituter(tweet)
end 
end 
    
  
  
    
