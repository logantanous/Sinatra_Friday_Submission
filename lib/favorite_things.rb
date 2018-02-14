#!/usr/bin/ruby

class Item
  @@list = []
  attr_reader :id
  attr_accessor :name
  attr_accessor :rank

  def initialize(name, rank)
    @name = name
    @rank = rank
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def savy(name)
    exists = false
    item_name = name
    if @@list == []
      @@list.push(self)
    else
      @@list.each do |each_item|
        if each_item.name == item_name
          exists = true
        end
      end
      if exists == false
        @@list.push(self)
      end
    end
  end

  def self.sortify()
    @@list = @@list.sort_by {|item| item.rank}
  end

  def self.clear()
    @@list = []
  end


 def self.find(id)
   item_id = id.to_i()
   @@list.each do |item|
     if item.id == item_id
       return item
     end
   end
 end

end
