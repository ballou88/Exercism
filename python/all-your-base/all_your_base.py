def rebase(input_base: int, digits: list[int], output_base: int) -> list[int]:
    if input_base < 2:
        raise ValueError("input base must be >= 2")
    if output_base < 2:
        raise ValueError("output base must be >= 2")
    return to_output_base(to_base_10(input_base, digits), output_base)


def to_base_10(input_base: int, digits: list[int]) -> int:
    base_10 = 0
    for digit in digits:
        if not (0 <= digit < input_base):
            raise ValueError("all digits must satisfy 0 <= d < input base")
        base_10 = base_10 * input_base + digit
    return base_10


def to_output_base(base_10: int, output_base: int) -> list[int]:
    output = []
    while base_10 > 0:
        base_10, rem = divmod(base_10, output_base)
        output.append(rem)
    output.reverse()
    return output or [0]
