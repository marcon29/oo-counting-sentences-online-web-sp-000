require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    count_punctuation = self.split("").select do |character|
      character == ". " || character == "? " || character == "! "
    end
    count_punctuation.length
  end

end
