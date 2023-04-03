class QrCodesController < ApplicationController

  def text
@user_text = params.fetch("content")


    qrcode = RQRCode::QRCode.new(@user_text)

    @svg = qrcode.as_svg

render template: "my_templates/text"
  end


def url
  @user_url = params.fetch("page")

  qrcode = RQRCode::QRCode.new(@user_url)

  @svg = qrcode.as_svg

  render template: "my_templates/url"
end


def wifi
  @ssid = params.fetch("ssid")

  @pw = params.fetch("pw")

  text_to_encode = "WIFI:T:WPA;S:#{@ssid};P:#{@pw};;"

  qrcode = RQRCode::QRCode.new(text_to_encode)

  @svg = qrcode.as_svg

  render template: "my_templates/wifi"
end



end
