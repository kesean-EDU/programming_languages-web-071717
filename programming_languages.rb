def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language_hash|
    language_hash.each do |language, data|
      new_hash[language] ||= data
      new_hash[language][:style] ||= []
      new_hash[language][:style] << type
    end
  end
  return new_hash
end
