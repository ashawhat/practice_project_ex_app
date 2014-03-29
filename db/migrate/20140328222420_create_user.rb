class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
