require('rspec')
require('favorite_things')
require('pry')

describe("Item") do
  before() do
    Item.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Item.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      item = Item.new("tacos", 1)
      item.save()
      expect(Item.all()).to(eq([item]))
    end
  end
  describe(".clear") do
    it("clears all items from the list") do
      item = Item.new("tacos", 1)
      item.save()
      Item.clear()
      expect(Item.all()).to(eq([]))
    end
  end

  describe(".sortify") do
    it("sorts our list by rank") do
      item = Item.new("tacos", 3)
      item.save()
      item2 = Item.new("pizza", 1)
      item2.save()
      item3 = Item.new("burgers", 2)
      item3.save()
      expect(Item.sortify()).to(eq([item2, item3, item]))
    end
  end

end
