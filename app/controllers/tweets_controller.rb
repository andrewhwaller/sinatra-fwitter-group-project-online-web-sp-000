class TweetsController < ApplicationController

  get '/tweets' do
    erb :'/tweets/show'
  end

  get '/tweets/new' do
    erb :'/tweets/new'
  end

  post '/tweets' do
    erb :'/tweets'
  end
end
