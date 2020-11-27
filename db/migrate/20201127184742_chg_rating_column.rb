class ChgRatingColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :rating, false
  end
end
