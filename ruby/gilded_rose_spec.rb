require File.join(File.dirname(__FILE__), 'gilded_rose')
require File.join(File.dirname(__FILE__), 'item')

describe GildedRose do

  describe "#update_quality" do
    it "does not change the name" do
      items = [Item.new("foo", 0, 0)]
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "foo"
    end
  end

  it "can create an instance of GildedRose" do
    gilded_rose = GildedRose.new("Bread")    
    expect(gilded_rose.class).to eq GildedRose
  end

  it "reduces item quality by 1 when with new reduce_quality_by_1 method" do
    items = [Item.new("Bananas", 3, 5)]
    gilded_rose = GildedRose.new(items).update_quality()
    expect(items[0].quality).to eq 4

  end

end
