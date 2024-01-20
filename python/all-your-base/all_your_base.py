def rebase(input_base, digits, output_base):
    if input_base < 2:
        raise ValueError("input base must be >= 2")
    if output_base < 2:
        raise ValueError("output base must be >= 2")
    return to_output_base(to_base_10(input_base, digits), output_base)


def to_base_10(input_base, digits):
    base_10 = 0
    digits.reverse()
    for index, digit in enumerate(digits):
        if not (0 <= digit < input_base):
            raise ValueError("all digits must satisfy 0 <= d < input base")
        base_10 += digit * input_base**index
    return base_10


def to_output_base(base_10, output_base):
    output = []
    while base_10 > 0:
        output.insert(0, base_10 % output_base)
        base_10 //= output_base
    return output if output else [0]
