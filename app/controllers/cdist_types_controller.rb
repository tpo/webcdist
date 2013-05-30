class CdistTypesController < ApplicationController
  # GET /cdist_types
  # GET /cdist_types.json
  def index
    @cdist_types = CdistType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cdist_types }
    end
  end

  # GET /cdist_types/1
  # GET /cdist_types/1.json
  def show
    @cdist_type = CdistType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cdist_type }
    end
  end

  # GET /cdist_types/new
  # GET /cdist_types/new.json
  def new
    @cdist_type = CdistType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cdist_type }
    end
  end

  # GET /cdist_types/1/edit
  def edit
    @cdist_type = CdistType.find(params[:id])
  end

  # POST /cdist_types
  # POST /cdist_types.json
  def create
    @cdist_type = CdistType.new(params[:cdist_type])

    respond_to do |format|
      if @cdist_type.save
        format.html { redirect_to @cdist_type, notice: 'Cdist type was successfully created.' }
        format.json { render json: @cdist_type, status: :created, location: @cdist_type }
      else
        format.html { render action: "new" }
        format.json { render json: @cdist_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cdist_types/1
  # PUT /cdist_types/1.json
  def update
    @cdist_type = CdistType.find(params[:id])

    respond_to do |format|
      if @cdist_type.update_attributes(params[:cdist_type])
        format.html { redirect_to @cdist_type, notice: 'Cdist type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cdist_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdist_types/1
  # DELETE /cdist_types/1.json
  def destroy
    @cdist_type = CdistType.find(params[:id])
    @cdist_type.destroy

    respond_to do |format|
      format.html { redirect_to cdist_types_url }
      format.json { head :no_content }
    end
  end
end
