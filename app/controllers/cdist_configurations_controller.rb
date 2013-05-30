class CdistConfigurationsController < ApplicationController
  # GET /cdist_configurations
  # GET /cdist_configurations.json
  def index
    @cdist_configurations = CdistConfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cdist_configurations }
    end
  end

  # GET /cdist_configurations/1
  # GET /cdist_configurations/1.json
  def show
    @cdist_configuration = CdistConfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cdist_configuration }
    end
  end

  # GET /cdist_configurations/new
  # GET /cdist_configurations/new.json
  def new
    @cdist_configuration = CdistConfiguration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cdist_configuration }
    end
  end

  # GET /cdist_configurations/1/edit
  def edit
    @cdist_configuration = CdistConfiguration.find(params[:id])
  end

  # POST /cdist_configurations
  # POST /cdist_configurations.json
  def create
    @cdist_configuration = CdistConfiguration.new(params[:cdist_configuration])

    respond_to do |format|
      if @cdist_configuration.save
        format.html { redirect_to @cdist_configuration, notice: 'CdistConfiguration was successfully created.' }
        format.json { render json: @cdist_configuration, status: :created, location: @cdist_configuration }
      else
        format.html { render action: "new" }
        format.json { render json: @cdist_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cdist_configurations/1
  # PUT /cdist_configurations/1.json
  def update
    @cdist_configuration = CdistConfiguration.find(params[:id])

    respond_to do |format|
      if @cdist_configuration.update_attributes(params[:cdist_configuration])
        format.html { redirect_to @cdist_configuration, notice: 'CdistConfiguration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cdist_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdist_configurations/1
  # DELETE /cdist_configurations/1.json
  def destroy
    @cdist_configuration = CdistConfiguration.find(params[:id])
    @cdist_configuration.destroy

    respond_to do |format|
      format.html { redirect_to cdist_configurations_url }
      format.json { head :no_content }
    end
  end
end
