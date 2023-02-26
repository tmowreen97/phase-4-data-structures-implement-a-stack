# your code here
require 'pry'
class Stack
  def initialize(limit=nil)
    @stack = []
    @limit = limit
  end

  def push value
    @stack.push(value)
    if @stack.length == @limit
      return 'Stack Overflow'
    end
  end

  def pop 
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def full?
    @stack.length == @limit ? true : false
  end

  def search value
    counter = @stack.length-1
    @stack.each do |val|
      if val == value
        return counter
      else 
        counter-=1
      end
    end
    counter
  end

  def StackOverflowError
    'Stack Overflow'
  end
end



