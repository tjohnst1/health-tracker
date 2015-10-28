module ApplicationHelper
  def flashToAlertClass(key)
    case key
    when "message"
      "alert-success"
    when "warning"
      "alert-danger"
    when "notice"
      "alert-info"
    else
      key.to_s
    end
  end
end
