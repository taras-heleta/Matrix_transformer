module RandomMatrixGenerator
  class << self
    def square_matrix
      size = rand(max_size)
      matrix(size)
    end

    def rectangular_matrix
      rows = rand(max_size)
      matrix(rows, rows + 1)
    end

    private

    def matrix(rows, columns = rows)
      Array.new(rows) do
        Array.new(columns) {rand(values_range)}
      end
    end

    def max_size
      10
    end

    def values_range
      0..100
    end
  end
end
