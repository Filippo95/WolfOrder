class DestinazionesController < ApplicationController
  before_action :set_destinazione, only: [:show, :edit, :update, :destroy]

  # GET /destinaziones
  # GET /destinaziones.json
  def index
    @destinaziones = Destinazione.all
  end

  # GET /destinaziones/1
  # GET /destinaziones/1.json
  def show
  end

  # GET /destinaziones/new
  def new
    @destinazione = Destinazione.new
  end

  # GET /destinaziones/1/edit
  def edit
  end

  # POST /destinaziones
  # POST /destinaziones.json
  def create
    @destinazione = Destinazione.new(destinazione_params)

    respond_to do |format|
      if @destinazione.save
        format.html { redirect_to @destinazione, notice: 'Destinazione was successfully created.' }
        format.json { render :show, status: :created, location: @destinazione }
      else
        format.html { render :new }
        format.json { render json: @destinazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinaziones/1
  # PATCH/PUT /destinaziones/1.json
  def update
    respond_to do |format|
      if @destinazione.update(destinazione_params)
        format.html { redirect_to @destinazione, notice: 'Destinazione was successfully updated.' }
        format.json { render :show, status: :ok, location: @destinazione }
      else
        format.html { render :edit }
        format.json { render json: @destinazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinaziones/1
  # DELETE /destinaziones/1.json
  def destroy
    @destinazione.destroy
    respond_to do |format|
      format.html { redirect_to destinaziones_url, notice: 'Destinazione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destinazione
      @destinazione = Destinazione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destinazione_params
      params.require(:destinazione).permit(:nome)
    end
end
