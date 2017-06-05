module Institutions
  class Creator < BaseService

    attr_reader :record

    def initialize(params)
      @params = params
      @record = nil
    end

    def call
      Institution.transaction do
        record = Institution.create!(params)
      end
      true
    rescue ActiveRecord::RecordNotSaved
      false
    end
  end
end
