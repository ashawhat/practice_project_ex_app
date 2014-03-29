class DeleteTypeOfRequestId < ActiveRecord::Migration
  def change
    remove_column :financialrequests, :type_of_request_id
    add_column :financialrequests, :requesttype_id, :integer
  end
end
