##  Ruby for DSL

Ruby is good for creating internal Domain Specific Language (DSL)

```ruby
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
```
