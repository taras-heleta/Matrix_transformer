module RandomMatrixGenerator
  class << self
    def square_matrix
      matrix(random_size)
    end

    def rectangular_matrix
      rows = random_size
      matrix(rows, rows + 1)
    end

    def one_element_matrix
      matrix(random_number)
    end

    def one_dimensional_matrix
      [random_number]
    end

    def not_rectangular_matrix
      array = random_array
      longer_array = array.clone.push(random_number)
      [
          array,
          longer_array
      ]
    end

    private

    def matrix(rows, columns = rows)
      Array.new(rows) do
        random_array(columns)
      end
    end

    def random_array(number_of_elements = 5)
      Array.new(number_of_elements) {random_number}
    end

    def random_number
      rand(values_range)
    end

    def random_size
      rand(max_size)
    end

    def max_size
      10
    end

    def values_range
      0..100
    end
  end
end
