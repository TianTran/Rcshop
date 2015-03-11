ActiveAdmin.register Product do

  permit_params :product_code, :name, :price, :images, :description, :popular, :new_arrivals, :best_sellers, :quantity, :sale, :price_sell, :category_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
