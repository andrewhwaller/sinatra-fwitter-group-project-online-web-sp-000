class TweetsController < ApplicationController

  get '/tweets' do
    if !logged_in?
      redirect '/login'
    elsif logged_in?
      erb :'/tweets/show'
    end
  end

  get '/tweets/new' do
    erb :'/tweets/new'
  end

  post '/tweets' do
    erb :'/tweets'
  end
end
