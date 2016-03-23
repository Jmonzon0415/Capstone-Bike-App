class UploadsController < ApplicationController
 
  # GET /uploads
  def index
    @uploads = Upload.all
  end
 
  # GET /uploads/1
  def show
    @upload = Upload.find_by(id: params[:id])
  end
 
  # GET /uploads/new
  def new
    @upload = Upload.new
  end
 
  # GET /uploads/1/edit
  def edit
  end
 
  # POST /uploads
  def create
    @upload = Upload.new(name: params[:upload][:name], user_id: current_user.id)

 
    if @upload.save
      redirect_to '/', notice: 'Upload was successfully created.'
    else
      render :new
    end
  end
 
  # PATCH/PUT /uploads/1
  def update
    if @upload.update(post_upload_params)
      redirect_to @upload, notice: 'Upload attachment was successfully updated.'
    else
      render :edit
    end
  end
 
  # DELETE /uploads/1
  def destroy
    @upload.destroy
    redirect_to uploads_url, notice: 'Upload was successfully destroyed.'
  end
 





end
