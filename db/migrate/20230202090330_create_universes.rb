class CreateUniverses < ActiveRecord::Migration[7.0]
  def change
    create_table :universes,id: :uuid do |t|
      t.string :name
      t.integer :status
      t.timestamps
    end
  end
end
