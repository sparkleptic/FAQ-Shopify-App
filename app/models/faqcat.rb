class Faqcat < ApplicationRecord
	has_many :faqposts, dependent: :destroy
end
