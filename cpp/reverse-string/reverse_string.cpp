#include "reverse_string.h"
#include <string>

namespace reverse_string {
std::string reverse_string(std::string text) {
  int left = 0;
  int right = text.length() - 1;

  while (left < right) {
    std::swap(text[left], text[right]);
    left++;
    right--;
  }
  return text;
}
} // namespace reverse_string
