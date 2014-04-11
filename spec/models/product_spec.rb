require 'spec_helper'

describe Product do
  it "should have a name, price, and description" do
    test_product = FactoryGirl.create(:product)
    test_product.name.should eq "MyString"
    test_product.price.should eq 9.99
    test_product.description.should eq "MyText"
  end
end
