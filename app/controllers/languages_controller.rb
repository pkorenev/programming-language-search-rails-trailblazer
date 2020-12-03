class LanguagesController < ApplicationController
  #res = Language::Operations::Search.({query: 'lisp', languages: languages})

  def index
    run Language::Operations::Search, params: params do |result|
      @languages = result[:languages]
    end
  end

  def search
    run Language::Operations::Search, params: params do |result|
      @languages = result[:languages]
      render :index
    end
  end
end