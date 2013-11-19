class InstallationDataController < ApplicationController
  before_action :set_installation_datum, only: [:show, :edit, :update, :destroy]

  # GET /installation_data
  # GET /installation_data.json
  def index
    @installation_data = InstallationDatum.all
    @clients = Client.all
  end

  # GET /installation_data/1
  # GET /installation_data/1.json
  def show
  end

  # GET /installation_data/new
  def new
    @installation_datum = InstallationDatum.new
  end

  # GET /installation_data/1/edit
  def edit
  end

  # POST /installation_data
  # POST /installation_data.json
  def create
    @installation_datum = InstallationDatum.new(installation_datum_params)

    respond_to do |format|
      if @installation_datum.save
        format.html { redirect_to @installation_datum, notice: 'Installation datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @installation_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @installation_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /installation_data/1
  # PATCH/PUT /installation_data/1.json
  def update
    respond_to do |format|
      if @installation_datum.update(installation_datum_params)
        format.html { redirect_to @installation_datum, notice: 'Installation datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @installation_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /installation_data/1
  # DELETE /installation_data/1.json
  def destroy
    @installation_datum.destroy
    respond_to do |format|
      format.html { redirect_to installation_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installation_datum
      @installation_datum = InstallationDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def installation_datum_params
      params.require(:installation_datum).permit(:Client_id, :objectId, :appName, :appVersion, :badge, :deviceToken, :deviceType, :installationId, :parseVersion, :timeZone)
    end
end
