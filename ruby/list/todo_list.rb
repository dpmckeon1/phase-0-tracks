class TodoList
	def initialize(todo_list)
		@todo_list = todo_list
	end
	
	def get_item(index_to_retrieve)
		@todo_list[index_to_retrieve]
	end

	def get_items
		@todo_list
	end

	def add_item(new_item)
		@todo_list << new_item
	end

	def delete_item(item_to_delete)
		index_to_delete = @todo_list.index(item_to_delete)
		@todo_list.delete_at(index_to_delete)
	end
end

todo_items = ["do the dishes", "mow the lawn"]
new_todo_list = TodoList.new(todo_items)
puts new_todo_list.get_items