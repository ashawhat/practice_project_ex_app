require 'spec_helper'

describe Financialrequest do
  #should have many requesttypes through financialrequest_requesttypes
  it { should have_many :financialrequest_requesttypes}
end
