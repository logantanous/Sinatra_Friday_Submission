require('rspec')
require('favorite_things')
require('pry')

describe('.all') do
  it("is empty at first") do
  expect(Item.all()).to(eq([]))
   end
end
