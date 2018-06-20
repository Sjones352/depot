json.data do
  json.product do
  	json.call(
      @products,
       :title,
       :description,
       :image_url,
       :price
  	)
  end
end
