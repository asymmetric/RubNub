class MissingParameterError < StandardError ; end

class QueryParser
  def self.call(query)
    @command, @param = query.split

    raise MissingParameterError if @param.blank?

    [ @command, @param ]
  end
end
