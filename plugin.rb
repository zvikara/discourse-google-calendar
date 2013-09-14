# name: google_calendar_onebox
# about: Google Calendar Onebox
# version: 0.1
# authors: Zvika Rap

require 'oneboxer'

class Oneboxer::GoogleCalendarOnebox < Oneboxer::BaseOnebox

  matcher /^https?:\/\/(?:www\.)?google\.com\/calendar\/embed\?.+/

  def onebox
    "<iframe src='#{@url}' style='border-width:0' frameborder='0' scrolling='no' width='100%'></iframe>"
  end

end

Oneboxer.add_onebox "Oneboxer::GoogleCalendarOnebox".constantize
