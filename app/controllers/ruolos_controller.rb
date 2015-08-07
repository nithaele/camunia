class RuolosController < ApplicationController
  before_action :set_ruolo, only: [:show, :edit, :update, :destroy]

  # GET /ruolos
  # GET /ruolos.json
  def index
    @ruolos = Ruolo.all
  end

  # GET /ruolos/1
  # GET /ruolos/1.json
  def show
  end

  # GET /ruolos/new
  def new
    @ruolo = Ruolo.new
  end

  # GET /ruolos/1/edit
  def edit
  end

  # POST /ruolos
  # POST /ruolos.json
  def create
    @ruolo = Ruolo.new(ruolo_params)

    respond_to do |format|
      if @ruolo.save
        format.html { redirect_to @ruolo, notice: 'Ruolo was successfully created.' }
        format.json { render :show, status: :created, location: @ruolo }
      else
        format.html { render :new }
        format.json { render json: @ruolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ruolos/1
  # PATCH/PUT /ruolos/1.json
  def update
    respond_to do |format|
      if @ruolo.update(ruolo_params)
        format.html { redirect_to @ruolo, notice: 'Ruolo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ruolo }
      else
        format.html { render :edit }
        format.json { render json: @ruolo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruolos/1
  # DELETE /ruolos/1.json
  def destroy
    @ruolo.destroy
    respond_to do |format|
      format.html { redirect_to ruolos_url, notice: 'Ruolo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruolo
      @ruolo = Ruolo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ruolo_params
      params.require(:ruolo).permit(:ruolo, :user_id)
    end
end
