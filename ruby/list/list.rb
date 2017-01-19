class TodoList
	def initialize(list_arr)
		@list_arr = list_arr
	end

	def get_items
		@list_arr
	end

	def add_item(item)
		@list_arr.push(item)
	end

	def delete_item(item)
		@list_arr.delete(item)
	end

	def get_item(i)
		@list_arr[i]
	end 
end