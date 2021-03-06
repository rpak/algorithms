#!/usr/bin/env ruby

class QuickFind
  attr_reader :core_array

  def initialize
    @core_array = []

    build_array(10)
  end

  def build_array(n)
    n.times do |i|
      @core_array[i] = i
    end

    @core_array
  end

  def connected?(p, q)
    @core_array[p] == @core_array[q]
  end

  def union(p, q)
    initial = @core_array[p]
    new_entry = @core_array[q]

    @core_array = @core_array.map do |i|
      if i == initial
        new_entry
      else
        i
      end
    end
  end
end

# 9-6 6-1 5-8 2-0 3-1 5-2

quick = QuickFind.new

quick.union(9,6)
quick.union(6,1)
quick.union(5,8)
quick.union(2,0)
quick.union(3,1)
quick.union(5,2)

puts quick.core_array.inspect
