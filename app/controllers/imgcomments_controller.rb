class ImgcommentsController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  # GET /imgcomments
  # GET /imgcomments.json
  def index
    @imgcomments = Imgcomment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imgcomments }
    end
  end

  # GET /imgcomments/1
  # GET /imgcomments/1.json
  def show
    @imgcomment = Imgcomment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imgcomment }
    end
  end

  # GET /imgcomments/new
  # GET /imgcomments/new.json
  def new
    @imgcomment = Imgcomment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imgcomment }
    end
  end

  # GET /imgcomments/1/edit
  def edit
    @imgcomment = Imgcomment.find(params[:id])
  end

  # POST /imgcomments
  # POST /imgcomments.json
  def create
    @imgcomment = Imgcomment.new(params[:imgcomment])

    respond_to do |format|
      if @imgcomment.save
        format.html { redirect_to @imgcomment, notice: 'Imgcomment was successfully created.' }
        format.json { render json: @imgcomment, status: :created, location: @imgcomment }
      else
        format.html { render action: "new" }
        format.json { render json: @imgcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /imgcomments/1
  # PUT /imgcomments/1.json
  def update
    @imgcomment = Imgcomment.find(params[:id])

    respond_to do |format|
      if @imgcomment.update_attributes(params[:imgcomment])
        format.html { redirect_to @imgcomment, notice: 'Imgcomment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imgcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imgcomments/1
  # DELETE /imgcomments/1.json
  def destroy
    @imgcomment = Imgcomment.find(params[:id])
    @imgcomment.destroy

    respond_to do |format|
      format.html { redirect_to imgcomments_url }
      format.json { head :no_content }
    end
  end
end
