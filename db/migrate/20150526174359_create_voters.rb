class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.string :party_name

      t.timestamps null: false
    end
  end
end
