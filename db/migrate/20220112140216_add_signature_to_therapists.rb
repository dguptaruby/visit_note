class AddSignatureToTherapists < ActiveRecord::Migration[6.1]
  def change
    add_column :therapists, :signature, :string
  end
end
