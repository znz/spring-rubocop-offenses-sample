# frozen_string_literal: true

def hoge(ary)
  ary.each do |i|
    [1, 2].exclude?(i)
  end
rescue ActiveRecord::RecordNotFound, ActiveRecord::ActiveRecordError, StandardError => e
  Rails.logger.error(e)
end
