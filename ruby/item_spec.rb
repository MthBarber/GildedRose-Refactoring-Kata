require File.join(File.dirname(__FILE__), 'item')

describe Item do
    it "Can create a single instance of Item" do
        item = Item.new("bread", 0, 0)
        expect(item.name).to eq "bread"
    end
end