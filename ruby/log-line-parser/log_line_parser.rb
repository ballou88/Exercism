require 'strscan'
class LogLineParser
  def initialize(line)
    data = StringScanner.new(line)
    data.scan(/\[(\w+)\]: (.*)/)
    @log_level = data.captures[0].downcase
    @message = data.captures[1].strip
  end

  attr_reader :message, :log_level

  def reformat
    "#{@message} (#{log_level})"
  end
end
