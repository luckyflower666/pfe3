class SocialDataController < ApplicationController
  before_action :set_social_datum, only: [:show, :edit, :update, :destroy]

  # GET /social_data
  # GET /social_data.json
  def index
    @social_data = SocialDatum.all
    @clients = Client.all
    
  end

  # GET /social_data/1
  # GET /social_data/1.json
  def show
  end

  # GET /social_data/new
  def new
    @social_datum = SocialDatum.new
  end

  # GET /social_data/1/edit
  def edit
  end

  # POST /social_data
  # POST /social_data.json
  def create
    @social_datum = SocialDatum.new(social_datum_params)

    respond_to do |format|
      if @social_datum.save
        format.html { redirect_to @social_datum, notice: 'Social datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @social_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @social_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_data/1
  # PATCH/PUT /social_data/1.json
  def update
    respond_to do |format|
      if @social_datum.update(social_datum_params)
        format.html { redirect_to @social_datum, notice: 'Social datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @social_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_data/1
  # DELETE /social_data/1.json
  def destroy
    @social_datum.destroy
    respond_to do |format|
      format.html { redirect_to social_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_datum
      @social_datum = SocialDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_datum_params
      params.require(:social_datum).permit(:Client_id, :facebookToken, :facebookSecret, :facebook, :twitter)
    end
end
