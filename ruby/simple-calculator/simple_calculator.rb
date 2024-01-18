class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
    raise SimpleCalculator::UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation

    begin
      "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
    rescue ZeroDivisionError => e
      'Division by zero is not allowed.'
    end
  end
end
