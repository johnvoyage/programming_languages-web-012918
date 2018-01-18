require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |styl, hash|
    hash.each do |lang, hash_two|
      if new_hash[lang] == nil
        new_hash[lang] = {
          type: "#{hash_two[:type]}",
          style: [styl]
        }
      else
        new_hash[lang][:style].push(styl)
      end
    end
  end
  new_hash
end
