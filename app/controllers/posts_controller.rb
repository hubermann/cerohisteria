class PostsController < ApplicationController

  before_filter :authorize, :except => [:index, :show, :recomendados,:aside_recomendados, :categoria]
  helper_method :aside_recomendados
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
  
  def recomendados
    @recomendados = Post.where(:recomended =>true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recomendados }
    end
  end
  
  
  def aside_recomendados
    @aside_recomendados = Post.where(:recomended =>true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aside_recomendados }
    end
  end
  
  def categoria
    @posts = Post.where(:category_id => params[:id])
    @meta_title = params[:slug]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
  
  def mas_recientes
    Posts.order(created_at DESC).limit(3)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    
    @meta_title = @post.title
    @meta_keywords = @post.keywords
    @meta_description = @post.body
    
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
    @Categories = Category.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created. ' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
