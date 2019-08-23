class DoublyLinkedList
  attr_accessor :value, :next_node, :prev_node
  
  def initialize(value, next_node=nil)
    @value = value 
    @prev_node = nil
    @next_node = next_node
    @next_node.prev_node = self
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push a value onto the stack
  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    tmp = @data.value rescue nil
    @data = @data.next_node unless @data.nil?
    return tmp
  end
end

