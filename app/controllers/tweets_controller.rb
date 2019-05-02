class TweetsController < ApplicationController

  get '/tweets' do
    if logged_in?
      @user = current_user
      @tweets = Tweet.all
      erb :'/tweets/show'
    else
      redirect "/login/"
    end
  end

  get '/tweets/new' do
    if logged_in?
      erb :'tweets/new'
    else
      redirect to '/login'
    end
  end

  post '/tweets' do
    if logged_in?
      if params[:content] == ""
        redirect to '/tweets/new'
      else
        @tweet = current_user.tweets.build(content[:content])
        if @tweet.save
          redirect to '/tweets/#{@tweet.id}'
        else
          redirect to '/tweets/new'
          end
        end
      else
      redirect to '/login'
    end
  end

end
