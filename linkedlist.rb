class LinkedList2
  attr_accessor  :value, :next_node 

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

    def print_values (list_node)
      if list_node
        print "#{list_node.value} --> "
        print_values (list_node.next_node)
       else
        print "nil\n"
      end
    end

    def reverse_list(list, previous=nil)
      if list.next_node
        next_node = list.next_node
        list.next_node = previous
        reverse_list(next_node, list)
      else
        list.next_node = previous
      end
    end

   node1 = LinkedList2.new(37)
   node2 = LinkedList2.new(99, node1)
   node3 = LinkedList2.new(12, node2)
   reverse_list(node3)
   print_values(node1)
   
