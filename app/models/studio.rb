class Studio < ApplicationRecord
  has_many :rooms, dependent: :destroy
end
