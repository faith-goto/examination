class User < ApplicationRecord
  validates :name,:grade,presence: true
  validates :grade,inclusion: {in: 1..6 }
end
