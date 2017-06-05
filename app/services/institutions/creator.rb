module Institutions
  class Creator < BaseService

    attr_reader :record

    def initialize(user, params)
      @user   = user
      @record = Institution.new(params)
    end

    def call
      Institution.transaction do
        record.save!
        Administration.create!(user: @user, institution: record)
      end
      true
    rescue ActiveRecord::RecordNotSaved
      false
    end
  end
end
