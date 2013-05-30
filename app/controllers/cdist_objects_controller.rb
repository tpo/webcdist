class CdistObjectsController < ApplicationController
  # GET /cdist_objects
  # GET /cdist_objects.json
  def index
    @cdist_objects = CdistObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cdist_objects }
    end
  end

  # GET /cdist_objects/1
  # GET /cdist_objects/1.json
  def show
    @cdist_object = CdistObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cdist_object }
    end
  end

  # GET /cdist_objects/new
  # GET /cdist_objects/new.json
  def new
    @cdist_object = CdistObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cdist_object }
    end
  end

  # GET /cdist_objects/1/edit
  def edit
    @cdist_object = CdistObject.find(params[:id])
  end

  # POST /cdist_objects
  # POST /cdist_objects.json
  def create
    @cdist_object = CdistObject.new(params[:cdist_object])

    respond_to do |format|
      if @cdist_object.save
        format.html { redirect_to @cdist_object, notice: 'Cdist object was successfully created.' }
        format.json { render json: @cdist_object, status: :created, location: @cdist_object }
      else
        format.html { render action: "new" }
        format.json { render json: @cdist_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cdist_objects/1
  # PUT /cdist_objects/1.json
  def update
    @cdist_object = CdistObject.find(params[:id])

    respond_to do |format|
      if @cdist_object.update_attributes(params[:cdist_object])
        format.html { redirect_to @cdist_object, notice: 'Cdist object was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cdist_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdist_objects/1
  # DELETE /cdist_objects/1.json
  def destroy
    @cdist_object = CdistObject.find(params[:id])
    @cdist_object.destroy

    respond_to do |format|
      format.html { redirect_to cdist_objects_url }
      format.json { head :no_content }
    end
  end
end
