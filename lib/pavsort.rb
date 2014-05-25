module Pavsort
  
  private

    class SuperSort
      def self.sort(array)
        part = array.partition{|element| element.respond_to?(:/)}
        num_sort(part.first) + alph_sort(part.last)
      end
    end
end