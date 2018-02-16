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
  #
  # describe(".clear") do
  #   it("clears all items from the list") do
  #     item = Word.new("tacos", 1)
  #     item.savy()
  #     Word.clear()
  #     expect(Word.all()).to(eq([]))
  #   end
  # end

end
