#include <string>

namespace log_line {
int startOfMessage(std::string log) { return log.find(": "); }

std::string message(std::string log) {
  return log.substr(startOfMessage(log) + 2);
};

std::string log_level(std::string log) {
  return log.substr(1, startOfMessage(log) - 2);
};

std::string reformat(std::string log) {
  return message(log) + " (" + log_level(log) + ")";
};
} // namespace log_line
