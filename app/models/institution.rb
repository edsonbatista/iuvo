class Institution < ApplicationRecord
  has_many :jobs
  has_many :administrations
  has_many :users, through: :administration
end
