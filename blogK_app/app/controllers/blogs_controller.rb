class BlogsController < ApplicationController
  before_filter :authenticate_user!
  respond_to :js, :html, :json

	def index
		@blogs = if params[:group_name] then  Blog.by_group(params[:group_name]) else Blog.scoped end
	end

	def show
		@blog = get_blog
	end

	def edit
		@blog = get_blog
		if @blog.user == current_user
			respond_with @blog
		end
	end

	def new
		@blog = Blog.new
	end

	def update
		@blog = get_blog
    	if @blog.user == current_user and @blog.update_attributes(params[:blog])
      		redirect_to blogs_path
    	else
      		render :edit
    	end
	end

	def create
	@blog = Blog.new(params[:blog])
    	if @blog.user = current_user and @blog.save
     	 	redirect_to(blogs_path)
    	else
      		render :new 
    	end
	end

	def destroy
	@blog = get_blog
		if @blog.user == current_user
	    	flash[:notice] = "Blog could not be deleted" unless @blog.destroy
	    	redirect_to blogs_path
		end
	end
private
   def get_blog
     Blog.find(params[:id])
   end
end

