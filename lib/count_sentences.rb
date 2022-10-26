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
    a_sentence = self.split(/\.|\?|!/)
    # binding.pry
    a_sentence.filter { |sentence| !sentence.empty? }.size
  end
end