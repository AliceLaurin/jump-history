class ChangePerilousnessColumn < ActiveRecord::Migration[7.1]
  def change
    change_column :travels, :perilousness, :integer, using: "perilousness::integer"
  end
end
