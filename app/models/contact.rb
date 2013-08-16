class Contact < ActiveRecord::Base
	validates :name, :email, presence: true
	
	acts_as_taggable_on :tags
	belongs_to :user
	
	def self.search_for(query)
    	Contact.where("name LIKE :query OR email LIKE :query OR phone_number LIKE :query OR notes LIKE :query", {:query => "%#{query}%"})
	end
end
