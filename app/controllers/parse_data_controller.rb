class ParseDataController < ApplicationController
  before_action :set_parse_datum, only: [:show, :edit, :update, :destroy]

  # GET /parse_data
  # GET /parse_data.json
  def index
    @parse_data = ParseDatum.all
    @users = User.all
  end

  # GET /parse_data/1
  # GET /parse_data/1.json
  def show
  end

  # GET /parse_data/new
  def new
    @parse_datum = ParseDatum.new
  end

  # GET /parse_data/1/edit
  def edit
  end

  # POST /parse_data
  # POST /parse_data.json
  def create
    @parse_datum = ParseDatum.new(parse_datum_params)

    respond_to do |format|
      if @parse_datum.save
        format.html { redirect_to @parse_datum, notice: 'Parse datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @parse_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @parse_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parse_data/1
  # PATCH/PUT /parse_data/1.json
  def update
    respond_to do |format|
      if @parse_datum.update(parse_datum_params)
        format.html { redirect_to @parse_datum, notice: 'Parse datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @parse_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parse_data/1
  # DELETE /parse_data/1.json
  def destroy
    @parse_datum.destroy
    respond_to do |format|
      format.html { redirect_to parse_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parse_datum
      @parse_datum = ParseDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parse_datum_params
      params.require(:parse_datum).permit(:User_id, :username, :password, :authdata, :email, :emailverified, :ACL, :objectId)
    end
end
