json.extract! cat_prodotto, :id, :name, :description, :id_parent, :id_destination, :created_at, :updated_at
json.url cat_prodotto_url(cat_prodotto, format: :json)
