module Language::Operations
  class Search < ApplicationOperation
    step :load_languages
    step :parse_query
    step :search

    def load_languages(ctx, **)
      ctx[:languages] = LanguagesLoader.load_languages
    end

    def parse_query(ctx, flow_options, **)
      @query = QueryParser.new(flow_options[:params][:query] || '').parse
    end

    def search(ctx, flow_options, **)
      ctx[:languages] = ::Search.new(@query, flow_options[:languages]).perform
    end
  end
end