class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  get '/figures/:slug' do
    @figure=Figure.find_by_slug(params[:slug])
    erb :'figures/show'
  end

  post '/figures' do
    binding.pry
    @figure=Figure.create(name: params[figure[name]])
    binding.pry
    redirect("/figure/#{@figure.slug}")
  end

end
