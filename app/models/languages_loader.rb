# frozen_string_literal: true

# Used for loading languages from 'data.json'
class LanguagesLoader
  def self.load_languages
    json_file_path = Rails.root.join('db/data.json')
    languages_hashes = JSON.parse(File.read(json_file_path))
    languages_hashes.map do |language|
      LanguageBuilder.new(language).build
    end
  end
end
