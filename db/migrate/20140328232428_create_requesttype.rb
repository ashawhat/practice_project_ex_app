class CreateRequesttype < ActiveRecord::Migration
  def change
    create_table :requesttypes do |t|
      t.column :description, :string
    end
  end
end
