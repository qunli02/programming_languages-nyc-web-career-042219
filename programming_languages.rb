def reformat_languages(languages)
  new = languages.values
  hash = new[0].merge(new[1])
  key1 = languages[:oo].keys
  key2 = languages[:functional].keys
  hash.each do |lan, stuff|
    if key1.include?(lan)
      hash[lan][:style] = [:oo]
    end
    if key2.include?(lan)
      hash[lan][:style] = [:functional]
    end
  end
end
