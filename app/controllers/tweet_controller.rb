class TweetController < ApplicationController
  def show
  	@tweet = Tweet.find(params[:id])
  end

  def index
  	@tweets = Tweet.all
  end

  def new
  	@tweet = Tweet.new
  end

  def create
  	t = Tweet.create(params[:tweet])
    t.zombie = session[:zombie]
    t.save
  	redirect_to tweet_index_path
  end
end