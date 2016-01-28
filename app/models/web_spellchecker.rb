class Web_Spellchecker < Spellchecker

  def initialize()
  end

  def correct(word)
	return ["testing", "purposes"]
  end

  def known(words)
    result = words.find_all {|word| SpellcheckWord.where("word = ?", word)}
	  if result.empty?
		return []
	  else
		return result.map{|x| x[:word]}
	  end

  end


end

