require 'spec_helper'
require 'zombie'
require 'tweet'

describe Zombie do

	#zombie = Zombie.create(:name => 'Elisa', :graveyard => 'Chicago')

	it "is named Elisa" do
  		z = Zombie.create(name: 'Elisa')
  		z.name.should == 'Elisa'
	end

	it "has graveyard Chicago" do
  		z = Zombie.create(graveyard: 'Chicago')
  		z.graveyard.should == 'Chicago'
	end

	it "has tweets" do
  		z = Zombie.create
  		z.create_tweets
  		z.number_of_tweets.should > 0
	end

end
