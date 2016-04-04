class AddLatituseOrLongitudetoidentity < ActiveRecord::Migration
  def change
  	add_column :identities, :latitude, :float
  	add_column :identities, :longitude, :float
  end
end
