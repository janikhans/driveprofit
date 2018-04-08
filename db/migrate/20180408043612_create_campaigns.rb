class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.references :brand, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
