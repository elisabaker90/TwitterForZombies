require 'spec_helper'
require 'tweet'
require 'zombie'

describe Tweet do

	it "should belong to a zombie" do
		z = Zombie.create
		t = Tweet.create(status: 'Hello', zombie: z)
		t.zombie.should_not be_nil
	end
end
