class Article < ActiveRecord::Base
	def self.search(query)
		where("description like?","%#{query}%")

	end
end
