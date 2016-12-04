class TodoList
	def initialize(arr_list)
		@arr_list = arr_list
	end

	def get_items
		@arr_list
	end

	def add_item(item)
		@arr_list.push(item)
	end

	def delete_item(item)
		@arr_list.delete(item)
	end

	def get_item(index)
		@arr_list[index]
	end
end