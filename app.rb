require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key 	   = "Input yours here."
	config.consumer_secret 	   = "Input yours here."
	config.access_token 	   = "Input yours here."
	config.access_token_secret = "Input yours here."
end

#using my own twitter account for this, grabbing the latest 5 tweets
#then printing results to the console.
tweets = client.user_timeline('TalesOfMatteh', count: 5)
tweets.each { |tweet| puts tweet.full_text }

#write the resulting ids from the tweets array to results.txt
results = File.open("results.txt", "w") { |f|
  f.write(tweets)
}
