json.extract! prodotto, :id, :nome, :descrizione, :id_cat, :prezzo, :created_at, :updated_at
json.url prodotto_url(prodotto, format: :json)
