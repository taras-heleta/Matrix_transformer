class MatrixTransformer
  attr_reader :matrix

  def initialize(matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    @matrix = matrix
  end

  def turn_left_in_90_degrees
    print_matrix(rows_into_columns.reverse)
  end

  private

  def rows_into_columns
    matrix.transpose
  end

  def print_matrix(matrix)
    puts matrix.map(&:inspect)
  end
end

MatrixTransformer.new.turn_left_in_90_degrees
