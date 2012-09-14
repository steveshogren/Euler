# -*- coding: iso-8859-1 -*-
#Starting in the top left corner of a 2×2 grid, there are 6 routes (without backtracking) to the bottom right corner.
#How many routes are there through a 20×20 grid?'

def problem15(num)
  num = 12 
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
  return result = countArray(x);
  
  visited = Array.new
  result = dfs(root, visited, "#{num},#{num}", 0)
  puts "final"
  puts result
  return result
end

def countArray(x)
  
end

def dfs(root, visited, endval, count) 
  nodes = [root.right_tree, root.left_tree]
  for n in nodes
    if !n || visited.include?(n)
      next
    end
    if n.value == endval
      count += 1
    end
  end
  for n in nodes
    if !n || visited.include?(n) || n.value == endval
      next
    end
    visited.push(n)
    count = dfs(n, visited, endval, count)
    visited.pop()
  end
  if count % 10000 == 0
    puts count
  end
  return count
end

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
problem15(12)
