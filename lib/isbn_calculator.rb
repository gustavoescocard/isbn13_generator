class IsbnCalculator
  attr_accessor :number


  def calculate_last_digit(number)
    array_number = number.to_s.chars.map(&:to_i)

    array_number.each_with_index do |n, index|
      array_number[index] = index.even? ? n * 1 : n * 3
    end

    mod_isbn = array_number.sum.modulo(10)

    last_digit = mod_isbn > 0 ? 10 - mod_isbn : 0

    return last_digit
  end
end
