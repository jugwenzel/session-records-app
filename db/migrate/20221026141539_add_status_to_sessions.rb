class AddStatusToSessions < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :status, :string
  end
end
