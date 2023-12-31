class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table unless table_exists?(:users) do |t|
      t.string :name
      t.string :email
      # Add other columns as needed
      t.timestamps
    end
  end
end