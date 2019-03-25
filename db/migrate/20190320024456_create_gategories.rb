class CreateGategories < ActiveRecord::Migration[5.2]
  def change
    create_table :gategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
