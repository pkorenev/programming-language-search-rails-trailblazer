class LanguagesController < ApplicationController
  before_action :load_languages

  def index

  end

  def search
    if params[:query].present?
      query = QueryParser.new(params[:query]).parse
      @languages = Search.new(query, @languages).perform
    end

    render :index
  end

  private

  def load_languages
    @languages = LanguagesLoader.load_languages
  end
end