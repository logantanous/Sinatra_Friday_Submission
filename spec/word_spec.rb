require('rspec')
require('word')
require('pry')

describe("Word") do
  before() do
    Word.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves an item to the list of items") do
      item = Word.new("tacos", 1)
      item.savy("tacos")
      expect(Word.all()).to(eq([item]))
    end
  end

  describe(".clear") do
    it("clears all items from the list") do
      item = Word.new("tacos", 1)
      item.savy("tacos")
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
#
#   describe(".sortify") do
#     it("sorts our list by rank") do
#       item = Item.new("tacos", 3)
#       item.save()
#       item2 = Item.new("pizza", 1)
#       item2.save()
#       item3 = Item.new("burgers", 2)
#       item3.save()
#       expect(Item.sortify()).to(eq([item2, item3, item]))
#     end
#   end
#
end
