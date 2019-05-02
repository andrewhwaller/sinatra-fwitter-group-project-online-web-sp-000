class TweetsController < ApplicationController

  get '/tweets' do
    if !logged_in?
      redirect '/login'
    else
      erb :'/tweets/show'
  end

  get '/tweets/new' do
    erb :'/tweets/new'
  end

  post '/tweets' do
    erb :'/tweets'
  end
end
