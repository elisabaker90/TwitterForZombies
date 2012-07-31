class Zombie < ActiveRecord::Base
  attr_accessible :graveyard, :name

  has_many :tweets, dependent: :destroy

  #validates_prescence_of :name, :graveyard

  def create_tweets
    t1 = Tweet.create(status: 'Hello', zombie: self)
  	tweets << t1
  end

  def number_of_tweets
  	tweets.count
  end

end
