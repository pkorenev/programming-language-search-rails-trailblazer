module Language::Operations
  class Index < ApplicationOperation
    step :load_languages

    def load_languages(ctx, **)
      ctx[:languages] = LanguagesLoader.load_languages
    end
  end
end