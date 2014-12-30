class KernelController < ApplicationController
  def man

    begin
      @command = Command.find_by!(name: params[:name])
    rescue ActiveRecord::RecordNotFound
      flash[:error] = "Command not found"
      redirect_to root_path
    end
  end

  def parse
    begin
      command_name, param = QueryParser.call(params[:query])

      command = Command.find_by!(name: command_name) 
      url = URLInterpolator.call(command.url, param)

      redirect_to url
    rescue MissingParameterError
      flash[:error] = "Syntax Error: Missing parameter"
      redirect_to root_path
    rescue ActiveRecord::RecordNotFound
      flash[:error] = "Command not found"
      redirect_to root_path
    end
  end
end
