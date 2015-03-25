#!/home/delta/.rbenv/shims/ruby

require './code/tweet'

def tweet_as(user, text = nil, &block)
  tweet = Tweet.new(user)
  tweet.text(text) if text
  tweet.instance_eval(&block) if block_given?
  tweet.submit_to_twitter
end

=begin
tweet_as('deltawidyangga') do
  text 'hello world this is my first tweet'
  mention 'putiayusetiani'
  link 'http://melangkahkesurga.com'
  hashtag 'first'
end

tweet_as('deltawidyangga') do
  mention 'putiayusetiani'
  text('This is a chained tweet').hashtag('hooray').hashtag('ruby')
  link 'http://melangkahkesurga.com'
end

tweet_as 'deltawidyangga', 'This is a simple tweet'

tweet_as('deltawidyangga') do
  text 'hello world this tweet with multiple mentions'
  mention 'putiayusetiani', 'evanpurnama', 'jogjarb'
end

tweet_as('deltawidyangga') do
  text 'hello world this is tweet with annotations'
  mention 'putiayusetiani'
  link 'http://melangkahkesurga.com'
  hashtag 'annotate'
  hashtag 'ruby'
  lat 28.415833
  lng -81.298889
  keywords 'Ruby', 'DSL'
end

tweet_as 'deltawidyangga', 'This is a very loooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong tweet'
=end
