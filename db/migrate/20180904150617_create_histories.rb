class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :checked_in
      t.string :checked_out
      t.text :notes
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end
