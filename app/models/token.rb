class Token < ApplicationRecord
	belongs_to :location
	validates :uuid, presence: true, length: {maximum: 20, message: 'hogehoge'}
end
