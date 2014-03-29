class EditFinancialrequestRequesttypes < ActiveRecord::Migration
  def change
    rename_column :Financialrequest_Requesttypes, :Financialrequest_id, :financialrequest_id
  end
end
