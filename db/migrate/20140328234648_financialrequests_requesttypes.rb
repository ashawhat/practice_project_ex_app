class FinancialrequestsRequesttypes < ActiveRecord::Migration
  def change
    create_table :Financialrequest_Requesttypes do |t|
      t.column :Financialrequest_id, :integer
      t.column :requesttype_id, :integer
      t.timestamps
    end
  end
end
