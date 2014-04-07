module Sort
  class Merge
    class << self

      def sort(array)
        part = array.partition{|element| element.respond_to?(:/)}
        num_sort(part.first) + alph_sort(part.last)
      end

      private

      def alph_sort(array)
        return array if array.length <= 1
        first_half, second_half = split_array_in_half(array)
        return alph_merge(alph_sort(first_half),alph_sort(second_half))
      end

      def num_sort(array)
        return array if array.length <= 1
        first_half, second_half = split_array_in_half(array)
        return num_merge(num_sort(first_half),num_sort(second_half))
      end

      def split_array_in_half(array)
      	mid_index = array.length / 2
      	[array.take(mid_index), array.drop(mid_index)]
      end

      def alph_merge(left, right)
      	result = []
      	until left.empty? && right.empty?
      		case 
      			when left.empty? then result << right.shift
      			when right.empty? then result << left.shift
      			when left.first.downcase < right.first.downcase then result << left.shift
      			when right.first.downcase < left.first.downcase then result << right.shift
      		end
      	end
      	result
      end

      def num_merge(left, right)
        result = []
        until left.empty? && right.empty?
          case 
            when left.empty? then result << right.shift
            when right.empty? then result << left.shift
            when left.first < right.first then result << left.shift
            when right.first < left.first then result << right.shift
          end
        end
         result
      end
    end
  end

  class Quick
    class << self

      def sort(array)
        part = array.partition{|element| element.respond_to?(:/)}
        num_sort(part.first) + alph_sort(part.last)
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