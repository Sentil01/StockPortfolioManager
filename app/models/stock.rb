require 'google_search_results'
class Stock < ApplicationRecord
  def self.search_stock(query)
    params = {
      engine: "google_finance",
      q: query,
      api_key: "50596adca887f9d48c318368ff734e89711d6afd63864e352705bdc53d63ebe3"
    }

    search = GoogleSearch.new(params)
    hash_results = search.get_hash
    return hash_results
  end
end
