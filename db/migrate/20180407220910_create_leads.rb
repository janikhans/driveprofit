class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :email
      t.boolean :uber
      t.boolean :lyft
      t.integer :hrs
      t.integer :distance

      t.timestamps
    end
  end
end
