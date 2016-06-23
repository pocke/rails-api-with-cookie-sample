class ApplicationController < ActionController::API
  include ActionController::Cookies

  def root
    t = (cookies['count'] || 1).to_i
    cookies['count'] = t + 1
    render text: "#{t} 回目の訪問です!\n"
  end
end
