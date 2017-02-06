class AddRatingToEvenements < ActiveRecord::Migration
  def change
    add_column :evenements, :afficher, :integer
  end
end
