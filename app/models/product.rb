class Product < ActiveRecord::Base
	belongs_to :category
	mount_uploader :images, MyuploadUploader
	validates :name,
		presence: true,
		length: {
			minimum: 6,
			maximum: 100,
			too_short: "must have at least %{count} words",
			too_long: "must have at most %{count} words"
		},
		format: {
			with: /\A[a-zA-Z][\s\D\d]+\z/,
			message: "Start is letters"
		}
	validates :category_id, :quantity,
		allow_blank: true,
		numericality: { only_integer: true}
	validates :price, :price_sell,
		allow_blank: true,
		numericality: true
	validates :product_code,
		presence: true, 
   		uniqueness: true
	scope :popular, -> { where(popular: true) }	
	scope :new_arrivals, ->{where(new_arrivals: true)}
	scope :best_sellers, ->{where(best_sellers: true)}
	def self.search(query)
	  where("name like ?", "%#{query}%") 
	end
end
