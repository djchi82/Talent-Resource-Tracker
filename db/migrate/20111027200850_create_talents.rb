class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :email
      t.text :address
      t.text :comments

      t.timestamps
    end
  end
end
