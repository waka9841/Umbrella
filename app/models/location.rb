class Location < ApplicationRecord
	has_many :tokens
	has_many :kasas
end
