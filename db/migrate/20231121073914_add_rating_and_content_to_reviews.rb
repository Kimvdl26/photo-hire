class AddRatingAndContentToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :rating, :integer
    add_column :reviews, :content, :text
  end
end
