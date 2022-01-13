class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :error
      t.string :goal
      t.integer :total
      t.integer :successful
      t.integer :unsuccessful
      t.string :prompting
      t.text :content
      t.references :therapist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
