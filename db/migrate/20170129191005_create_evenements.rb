class CreateEvenements < ActiveRecord::Migration
  def change
    create_table :evenements do |t|
      t.string :nom
      t.string :date_texte
      t.string :lien
      t.date :ladate

      t.timestamps null: false
    end
  end
end
