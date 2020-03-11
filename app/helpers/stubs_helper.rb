# TODO
# Everything in this class needs moving out

module StubsHelper
  def code_person_widget
  end

  def notice_and_alert(a)
    safe_join([
      content_tag(:div, notice, id: "notice"),
      content_tag(:div, alert, id: "alert")
    ])
  end
end
