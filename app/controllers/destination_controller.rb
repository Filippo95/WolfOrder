class DestinationController < ApplicationController
    
    
    def index
        
      sql = "SELECT prodottos.id, prodottos.nome, riga_comandas.modifiche, comandas.tavolo,riga_comandas.consegnata, cat_prodottos.id_destination,riga_comandas.quantit, riga_comandas.id FROM cat_prodottos, prodottos,destinaziones,comandas,riga_comandas WHERE prodottos.id_cat=cat_prodottos.id AND cat_prodottos.id_destination=destinaziones.id AND prodottos.id=riga_comandas.id_prodotto AND riga_comandas.id_comanda=comandas.id And riga_comandas.consegnata=0"
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  
end 
end
