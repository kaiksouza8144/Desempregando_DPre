class Company < ApplicationRecord
  belongs_to :user
  has_many :positions # atualiado
  has_one_attached :logo
  validates :name, :url, presence: true
end
