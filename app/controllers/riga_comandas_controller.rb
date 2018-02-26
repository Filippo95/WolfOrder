class RigaComandasController < ApplicationController
  before_action :set_riga_comanda, only: [:show, :edit, :update, :destroy]

  # GET /riga_comandas
  # GET /riga_comandas.json
  def index
    @riga_comandas = RigaComanda.all
  end

  # GET /riga_comandas/1
  # GET /riga_comandas/1.json
  def show
  end

  # GET /riga_comandas/new
  def new
    @riga_comanda = RigaComanda.new
  end

  # GET /riga_comandas/1/edit
  def edit
  end

  # POST /riga_comandas
  # POST /riga_comandas.json
  def create
    @riga_comanda = RigaComanda.new(riga_comanda_params)

    respond_to do |format|
      if @riga_comanda.save
        format.html { redirect_to @riga_comanda, notice: 'Riga comanda was successfully created.' }
        format.json { render :show, status: :created, location: @riga_comanda }
      else
        format.html { render :new }
        format.json { render json: @riga_comanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /riga_comandas/1
  # PATCH/PUT /riga_comandas/1.json
  def update
    respond_to do |format|
      if @riga_comanda.update(riga_comanda_params)
        format.html { redirect_to @riga_comanda, notice: 'Riga comanda was successfully updated.' }
        format.json { render :show, status: :ok, location: @riga_comanda }
      else
        format.html { render :edit }
        format.json { render json: @riga_comanda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riga_comandas/1
  # DELETE /riga_comandas/1.json
  def destroy
    @riga_comanda.destroy
    respond_to do |format|
      format.html { redirect_to riga_comandas_url, notice: 'Riga comanda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_riga_comanda
      @riga_comanda = RigaComanda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def riga_comanda_params
      params.require(:riga_comanda).permit(:id_comanda, :id_prodotto, :quantit, :modifiche)
    end
end
