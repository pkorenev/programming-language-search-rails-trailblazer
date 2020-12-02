module LanguagesHelper
  def no_languages_message
    if action_name == 'index'
      'There are no languages in database'
    else
      'No languages found. Try another query.'
    end
  end
end