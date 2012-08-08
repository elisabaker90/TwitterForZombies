require 'spec_helper'
require 'zombie'
require 'tweet'

describe ZombieController  do

	describe "#update" do
		before :each do
			zombie = Zombie.new
			zombie.name = 'Fred'
			zombie.graveyard = 'Georgia'
			zombie.save!
		end

		it "updates zombie name" do
			put :update, {:zombie => {:name => 'Elisa'}}
			zombie.name.should == 'Elisa'
		end

		it "updates zombie graveyard" do
			put :update, {:zombie => {:graveyard => 'Chicago'}}
			zombie.graveyard should == 'Chicago'
		end
	end
	
end