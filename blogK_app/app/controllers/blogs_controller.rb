class BlogsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_scope
  respond_to :js, :html, :json

	def index
		@blogs = Blog.all
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
		@blog = @blogtable.blogs.build
	end

	def update
		@blog = get_blog
    	if @blog.user == current_user and @blog.update_attributes(params[:blog])
      		redirect_to @blogtable
    	else
      		render :edit
    	end
	end

	def create
	@blog = @blogtable.blogs.build(params[:blog])
    	if @blog.user = current_user and @blog.save
     	 	redirect_to(@blogtable)
    	else
      		render :new 
    	end
	end

	def destroy
	@blog = get_blog
		if @blog.user == current_user and @blog.destroy
	    	flash[:notice] = "Blog could not be deleted" unless @blog.destroy
	    	redirect_to @blogtable
		end
	end
private
  def load_scope
  	@blogtable = get_blogtable
  end

  # def get_blog
  #   Blog.find(params[:id])
  # end

  def get_blog
  	@blogtable.blogs.find(params[:id])
  end

  def get_blogtable
  	resource, id = request.path.split('/')[1, 2]
    resource.singularize.classify.constantize.find(id)
  end
end
