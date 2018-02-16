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
      item = Word.new("tacos", "definition")
      item.save()
      expect(Word.all()).to(eq([item]))
    end
  end

  describe(".clear") do
    it("clears all items from the list") do
      item = Word.new("tacos", "definition")
      item.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".sortify") do
    it("sorts our list by name") do
      item = Word.new("tacos", "definition")
      item.save()
      item2 = Word.new("pizza", "definition")
      item2.save()
      item3 = Word.new("burgers", "definition")
      item3.save()
      expect(Word.sortify()).to(eq([item3, item2, item]))
    end
  end

end
