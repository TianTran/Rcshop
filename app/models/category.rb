class Category < ActiveRecord::Base
	has_many :products
	mount_uploader :avatar, MyuploadUploader
	validates :name,
		presence: true, # khong duoc de trong
		length: {
			minimum: 5,
			maximum: 50,
			too_short: "must have at least %{count} words",
			too_long: "must have at most %{count} words"
		}, # do dai tu 6-50
		format: {
			with: /\A[a-zA-Z][\s\D]+\z/,
			message: "Start is letters"
		} # bat dau bang chu cai
end
