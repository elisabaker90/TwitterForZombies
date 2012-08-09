class TweetController < ApplicationController
  def show
  	@tweet = Tweet.find(params[:id])

    respond_to do |format|
      format.html
      format.json {render :json => @tweet}
    end

  end

  def index
  	@tweets = Tweet.all
    respond_to do |format|
      format.html
      format.json {render :json => @tweets}
    end
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