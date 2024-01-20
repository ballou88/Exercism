def equilateral(sides: list[int]) -> bool:
    return is_triangle(sides) and len(set(sides)) == 1


def isosceles(sides: list[int]) -> bool:
    return is_triangle(sides) and len(set(sides)) < 3


def scalene(sides: list[int]) -> bool:
    return is_triangle(sides) and len(set(sides)) == 3


def is_triangle(sides: list[int]) -> bool:
    if 0 in sides:
        return False
    sorted_sides = sorted(sides)
    if sorted_sides[0] + sorted_sides[1] < sorted_sides[2]:
        return False
    return True
