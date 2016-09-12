class TodoList

  attr_accessor :list

  def initialize (array)
    @list = array
  end

  def get_items
    p @list
  end

  def add_item (new_item)
    @list << new_item
  end

  def delete_item (item)
    @list.delete(item)
  end

  def get_item (location)
    @list[location]
  end

end
