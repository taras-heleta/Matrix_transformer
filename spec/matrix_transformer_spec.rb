require_relative '../matrix_transformer'
require_relative 'random_matrix_generator'

RSpec.describe '#matrix transformer' do
  let(:square_matrix) do
    RandomMatrixGenerator.square_matrix
  end

  let(:rectangular_matrix) do
    RandomMatrixGenerator.rectangular_matrix
  end

  let(:one_element_matrix) do
    RandomMatrixGenerator.rectangular_matrix
  end

  let(:not_rectangular_matrix) do
    RandomMatrixGenerator.not_rectangular_matrix
  end

  let(:one_dimensional_matrix) do
    RandomMatrixGenerator.one_dimensional_matrix
  end

  let(:not_a_matrix) do
    'not_a_matrix'
  end

  it 'rotate square matrix' do
    actual_matrix = MatrixTransformer.new(square_matrix).turn_left_in_90_degrees
    expected_matrix = square_matrix.transpose.reverse
    expect(actual_matrix).to eql(expected_matrix)
  end

  it 'rotate rectangular matrix' do
    actual_matrix = MatrixTransformer.new(rectangular_matrix).turn_left_in_90_degrees
    expected_matrix = rectangular_matrix.transpose.reverse
    expect(actual_matrix).to eql(expected_matrix)
  end

  it 'rotate one element matrix' do
    actual_matrix = MatrixTransformer.new(one_element_matrix).turn_left_in_90_degrees
    expected_matrix = one_element_matrix.transpose.reverse
    expect(actual_matrix).to eql(expected_matrix)
  end

  it 'rotate not rectangular matrix size matrix' do
    expect do
      MatrixTransformer.new(not_rectangular_matrix).turn_left_in_90_degrees
    end.to raise_error('element size differs (3 should be 2)')
  end

  it 'rotate one dimensional matrix' do
    expect do
      MatrixTransformer.new(one_dimensional_matrix).turn_left_in_90_degrees
    end.to raise_error(TypeError)
  end

  it 'rotate not a matrix' do
    expect do
      MatrixTransformer.new(not_a_matrix).turn_left_in_90_degrees
    end.to raise_error(NoMethodError)
  end
end
