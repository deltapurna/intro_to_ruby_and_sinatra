class Tweet
  def initialize(user)
    @user = user
    @tweet = []
    @annotations = {}
  end

  def text(str)
    @tweet << str
    self
  end

  def mention(*users)
    users.each do |user|
      @tweet << "@" + user
    end
    self
  end

  def hashtag(str)
    @tweet << "#" + str
    self
  end

  def link(str)
    @tweet << str
    self
  end

  def submit_to_twitter
    tweet_text = @tweet.join(' ')
    if tweet_text.length <= 140
      puts "#{@user}: #{tweet_text}"
      puts @annotations unless @annotations.empty?
    else
      raise 'Your tweet is too long'
    end
  end

  def method_missing(method_name, *args, &block)
    @annotations[method_name] = args.join(', ')
  end
end
