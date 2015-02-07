class Article < ActiveRecord::Base
	validates_presence_of :description, :title
	
	def self.search(query)
		where("description like?","%#{query}%")

	end
		 has_many :comments, :dependent => :destroy
end
