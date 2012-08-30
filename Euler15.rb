# -*- coding: iso-8859-1 -*-
#Starting in the top left corner of a 2×2 grid, there are 6 routes (without backtracking) to the bottom right corner.
#How many routes are there through a 20×20 grid?
def problem15(num)
  x = Array.new(num+1)
  for i in 0.. num do
    y = Array.new(num+1)
    for j in 0.. num do
      y[j] = "#{i},#{j}" 
    end
    x[i] = y
  end
  puts "array made..."

  root = maket(x, 0, 0, num, Hash.new)
  puts "tree made..."
  
  q = Queue.new
  q.enq(root)
  count = 0
  mark = Array.new
  mark.push(root.value)
  while !q.empty? do
    r = q.deq
    if !r.left_tree.nil? && r.left_tree.value == "#{num},#{num}" || !r.right_tree.nil? && r.right_tree.value == "#{num},#{num}"  
      # found another path to the end node (which is duplicated)
      count += 1
    end
    if !r.left_tree.nil? && mark.index(r.left_tree.value) == nil 
      mark.push(r.left_tree.value)
      q.enq(r.left_tree)
    end
    if !r.right_tree.nil? && mark.index(r.right_tree.value) == nil 
      mark.push(r.right_tree.value)
      q.enq(r.right_tree)
    end
  end
  return count
end
def breadthFirst() {
LinkedList<String> nodes = graph.adjacentNodes(visited.getLast());
// examine adjacent nodes
for (String node : nodes) {
    if (visited.contains(node)) {
        continue;
    }
    if (node.equals(END)) {
        visited.add(node);
        printPath(visited);
        visited.removeLast();
        break;
    }
}
// in breadth-first, recursion needs to come after visiting adjacent nodes
for (String node : nodes) {
    if (visited.contains(node) || node.equals(END)) {
        continue;
    }
    visited.addLast(node);
    breadthFirst(graph, visited);
    visited.removeLast();
}
}


def maket(x, i, j, size, h)
  v = x[i][j]
  if h.has_key?(v)
    curNode = h[v]
  else
    curNode = Tree.new(x[i][j])
    h[curNode.value] = curNode
    if i == size and j == size
      return curNode
    end
    if i >= 0 && i < size 
      curNode.left_tree = maket(x, i+1, j, size, h)
    end
    if j >= 0 && j < size 
      curNode.right_tree = maket(x, i, j+1, size, h)
    end
  end
  return curNode
end

class Tree
  attr_accessor :left_tree
  attr_accessor :right_tree 
  attr_accessor :value 
  def initialize(value, left_tree = nil, right_tree = nil)
    @value = value
    @left_tree = left_tree
    @right_tree = right_tree
  end
  
  def self.leaf(value)
    Tree.new(value)
  end 

  def self.node(value, left_tree, right_tree)
    Tree.new(value, left_tree, right_tree)
  end 
end
