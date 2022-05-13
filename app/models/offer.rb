class Offer < ApplicationRecord
  belongs_to :user
  has_many :transaction

  validates :address, :price, :description, :capacity, :title, presence: true

  def offer_address
    [city, state].compact.join(', ')
  end

  def self.search(location)
    if location
      Offer.where('address ILIKE ?', "%#{location}%")
    else
      []
    end
  end
end
