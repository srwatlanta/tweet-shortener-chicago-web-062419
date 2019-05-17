# Write your code here.
def dictionary
  subs = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (tweet)
  array = tweet.split
  dictionary.keys.each do |i|
    array.map! do |x|
      if x.downcase == i
        dictionary[i]
      else
        x
      end
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener (tweets)
  tweets.each do |i|
    puts word_substituter (i)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator (tweet)
  newt = word_substituter (tweet)
  if newt.length > 140
    "#{tweet[0..136]}..."
  else
    newt
  end
end
