class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :nom
      t.string :prenom
      t.string :message
      t.string :mail

      t.timestamps null: false
    end
  end
end
