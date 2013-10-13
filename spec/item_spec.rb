require'spec_helper'

describe Item do
  before :each do
    Item.create(title: 'Chocolate nuts', description: "The saltiest chocolate nuts you'll ever taste!", price: 1000)
  end

  it "should allow for a title, description, and price in the DB" do
    item = Item.last
    expect(item.title).to eql 'Chocolate nuts'
    expect(item.description).to eql "The saltiest chocolate nuts you'll ever taste!"
    expect(item.price).to eql 1000
  end

  describe "#title" do
    it { should validate_presence_of(:title) }
  end

  describe "#description" do
    it { should validate_presence_of(:description) }
  end

  describe "#price" do
    it { should validate_presence_of(:price) }
  end

  after :each do
    Item.destroy_all
  end
end
