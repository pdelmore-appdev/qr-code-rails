Rails.application.routes.draw do
  # Write your routes here. URLs to support:
  
  # /text
  # /url
  # /wifi
  # /sms
  
  get("/", {:controller => "application", :action => "index"})

  get("/text", {:controller => "qr_codes", :action => "text"})

  get("/url", {:controller => "qr_codes", :action => "url"})

  get("/wifi", {:controller => "qr_codes", :action => "wifi"})

  # Solutions below.

  get("/solutions/text", {:controller => "solutions", :action => "text_qr"})

  get("/solutions/url", {:controller => "solutions", :action => "url_qr"})

  get("/solutions/wifi", {:controller => "solutions", :action => "wifi_qr"})

  get("/solutions/sms", {:controller => "solutions", :action => "sms_qr"})

end
