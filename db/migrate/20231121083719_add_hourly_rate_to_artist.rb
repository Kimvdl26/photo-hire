class AddHourlyRateToArtist < ActiveRecord::Migration[7.1]
  def change
    add_column :artists, :hourly_rate, :integer
  end
end
