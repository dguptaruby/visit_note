class Therapist < ApplicationRecord
  validates :signature, presence: true, uniqueness: true
  has_many :notes
end
