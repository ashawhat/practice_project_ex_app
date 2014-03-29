class CreateFinancialrequest < ActiveRecord::Migration
  def change
    create_table :financialrequests do |t|
      t.column :description, :string
      t.column :type_of_request_id, :integer
      t.column :request_pending, :boolean
      t.column :request_filled, :boolean
    end
  end
end
