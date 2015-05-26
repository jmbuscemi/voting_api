class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :hometown
      t.string :district
      t.integer :party_id

      t.timestamps null: false
    end
  end
end
