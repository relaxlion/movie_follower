class Origin < ApplicationRecord
	has_many :movies, dependent: :destroy
end
