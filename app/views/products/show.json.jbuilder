# json.(@product, :title, :description, :image_url, :price)

json.data do 
  json.product do
  	json.call(
      @product,
       :id,
       :title,
       :description,
       :image_url,
       :price,
       :created_at,
       :updated_at,
       :supplier,
       :color
  	)
  end	
end
