class Product < ApplicationRecord
	validates_presence_of :title, :description, :image_url
	# validates_numericality_of :price
	validate :validatenumeric
	validates_uniqueness_of :title
	validates_format_of :image_url,
						:with => %r{\.(gif|jpeg|png)}i,
						:message => "must be a URL for a GIF, JPEG, or PNG image"

	protected
	def validatenumeric
		errors.add(:price, "should be positive") unless price.nil? || price >= 0.01
	end

	def self.salable_items
		logger.debug "inside the product"
		find(:all, :conditions => "date <= now()", :order => "date desc")
	end
end
