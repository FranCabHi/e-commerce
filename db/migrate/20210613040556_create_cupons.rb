class CreateCupons < ActiveRecord::Migration[5.2]
  def change
    create_table :cupons do |t|
      t.string :kind
      t.string :code
      t.integer :amount
      t.string :discount
      t.integer :count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
