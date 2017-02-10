class TodoList
	def initialize(todo_list)
		@todo_list = todo_list
	end
	
	def get_items
		@todo_list
	end
end

todo_items = ["do the dishes", "mow the lawn"]
new_todo_list = TodoList.new(todo_items)
puts new_todo_list.get_items