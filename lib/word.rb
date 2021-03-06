#!/usr/bin/ruby

class Word
  @@list = []
  attr_reader :id
  attr_accessor :name
  attr_accessor :definition

  def initialize(name, definition)
    @name = name
    @definition = definition
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save()
    exists = false
    word_name = @name
    if @@list == []
      @@list.push(self)
    else
      @@list.each do |each_item|
        if each_item.name == word_name
          exists = true
        end
      end
      if exists == false
        @@list.push(self)
      end
    end
  end


  def self.sortify()
    @@list = @@list.sort_by {|item| item.name}
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
