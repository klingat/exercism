require 'pry'

class Bob
  def self.hey(remark)
    case
    when is_silence?(remark)
      "Fine. Be that way!"
    when is_yelling?(remark) && is_question?(remark)
      "Calm down, I know what I'm doing!"
    when is_question?(remark)
      "Sure."
    when is_yelling?(remark)
      "Whoa, chill out!"
    else
      "Whatever."
    end
  end

  private

  def self.is_silence?(string)
    string.strip.empty?
  end

  def self.is_question?(string)
    string = string.strip
    last_index = string.length - 1
    string[last_index] == '?'
  end

  def self.is_yelling?(string)
    string.upcase == string && contains_letters?(string)
  end

  def self.contains_letters?(string)
    string.count("a-zA-Z") > 0
  end
end
