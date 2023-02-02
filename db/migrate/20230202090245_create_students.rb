class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    enable_extension "pgcrypto"
    create_table :students, id: :uuid do |t|
      t.string :name
      t.uuid :universe_id
      t.integer :gender
      t.integer :weight
      t.integer :height
      t.string :entity_id
      t.timestamps
    end
  end
end
