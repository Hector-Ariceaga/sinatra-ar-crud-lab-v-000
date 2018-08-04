
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    erb :"/posts/new"
  end
  
  post '/posts' do
    @post = Post.create(params)
<<<<<<< HEAD
    
=======
>>>>>>> 978cdd88540c0ce53d3c02494233bcf2ef4c15ca
    redirect_to '/posts'
  end
  
  get '/posts' do
    @posts = Post.all
<<<<<<< HEAD
    
=======
>>>>>>> 978cdd88540c0ce53d3c02494233bcf2ef4c15ca
    erb :"/posts/index"
  end
  
  get '/posts/:id' do 
    @post = Post.find(params[:id])
<<<<<<< HEAD
    
    erb :"/posts/show"
  end
  
  get '/posts/:id/edit' do
    @post = Post.find(params[:id])
    
    erb :"/posts/edit"
  end 
  
  patch '/posts/:id' do
    Post.update(params[:id], name: params[:name], content: params[:content])
    
    redirect_to '/posts/:id'
  end
  
  delete '/posts/:id/delete' do
    @post = Post.find(params[:id])
    Post.delete(params[:id])
    
=======
    erb :"/posts/show"
  end
  
  patch '/posts/:id/edit' do
    @post = Post.find(params[:id])
    Post.update(params[:id], name: params[:name], content: params[:content])
    redirect_to '/posts/:id'
  end
  
  get '/posts/:id/edit' do
    @post = Post.find(params[:id])
    erb :"/posts/edit"
  end 
  
  delete '/posts/:id/delete' do
    @post = Post.find(params[:id])
    Post.delete(params[:id])
>>>>>>> 978cdd88540c0ce53d3c02494233bcf2ef4c15ca
    erb :"/posts/delete"
  end
  
  
end
