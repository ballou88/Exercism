proc reverse*(s: string): string =
  var reversed_string = ""
  for i in countdown(s.len - 1, 0):
    reversed_string.add s[i]
  return reversed_string
