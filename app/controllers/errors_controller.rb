class ErrorsController < ApplicationController
  def index
  end
  
  def ajax
    value = some_internal_logic(params['p'].to_i)
    render :text => value
  end
  
  def some_internal_logic(x)
    begin
      i = 1 / x
    rescue ZeroDivisionError
      i = 0
    end
    return i
  end
end
