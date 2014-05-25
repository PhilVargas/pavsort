require_relative 'pavsort.rb'

module Pavsort
  class Quick < SuperSort
    class << self
      
      def sort(array)
        super
      end

      private

      def num_sort(array)
        return array if array.length <= 1
          pivot = array.delete_at(rand(array.length))
          partition = array.partition{|element| element < pivot}
          num_sort(partition.first) + [pivot] + num_sort(partition.last)
      end

      def alph_sort(array)
        return array if array.length <= 1
        pivot = array.delete_at(rand(array.length))
        partition = array.partition{|element| element.downcase < pivot.downcase}
        alph_sort(partition.first) + [pivot] + alph_sort(partition.last)
      end
    end
  end
end