class Offer < ApplicationRecord

  include PgSearch::Model

  belongs_to :user
  has_many :transactions

  validates :address, :price, :description, :capacity, :title, :photo, presence: true

  def offer_address
    [city, state].compact.join(', ')
  end

  # def self.search(location)
  #   if location
  #     Offer.where('address ILIKE ?', "%#{location}%")
  #   else
  #     []
  #   end
  pg_search_scope :search_by_title_city_state_address_and_description,
    against: [ :title, :city, :state, :description, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
