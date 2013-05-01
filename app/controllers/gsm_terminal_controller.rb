class GsmTerminalController < ApplicationController
  def home
  	if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def connect
    @sp = SerialPort.new("/dev/ttyS0", 9600)
    @sp.write "AT+CPIN=1111\r"
    redirect_to root_path
  end

  def sendd
    @sp = SerialPort.new("/dev/ttyS0", 9600)
    @sp.write "ATD0662857384;\r"
    redirect_to root_path
  end

end