class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table :participants do |t|
      t.string :name
      t.string :role
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
