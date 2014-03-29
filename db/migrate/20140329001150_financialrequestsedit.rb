class Financialrequestsedit < ActiveRecord::Migration
  def change
    rename_table :Financialrequest_Requesttypes, :financialrequest_requesttypes
  end
end
