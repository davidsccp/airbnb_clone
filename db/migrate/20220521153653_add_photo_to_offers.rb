class AddPhotoToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :photo, :string
  end
end