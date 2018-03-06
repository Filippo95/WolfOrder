class CcbController < ApplicationController
  def cassa
      sql = "Select Distinct comandas.tavolo FROM comandas,riga_comandas,prodottos WHERE comandas.id=riga_comandas.id_comanda AND riga_comandas.id_prodotto=prodottos.id GROUP by comandas.tavolo"
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end
 def cassa_single_table
   
    sql = "Select comandas.tavolo,prodottos.nome,prodottos.prezzo,riga_comandas.quantit,riga_comandas.consegnata FROM comandas,riga_comandas,prodottos WHERE comandas.id=riga_comandas.id_comanda AND riga_comandas.id_prodotto=prodottos.id "
   
    records_array = ActiveRecord::Base.connection.execute(sql)
  
     respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
      
  end
  
  def cucina
      sql = ""
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end

  def bar
      sql = ""
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end
  def destroy_table
      sql = "DELETE FROM `comandas` WHERE `tavolo`="+params[:id]
    records_array = ActiveRecord::Base.connection.execute(sql)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: records_array}
    end
  end
end
