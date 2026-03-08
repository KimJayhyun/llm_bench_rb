module SessionsHelper
  def status_badge(status)
    styles = {
      "pending"   => "bg-gray-100 text-gray-600",
      "running"   => "bg-yellow-100 text-yellow-600",
      "completed" => "bg-green-100 text-green-600",
      "failed"    => "bg-red-100 text-red-600"
    }
    content_tag(:span, status, class: "px-2 py-1 rounded-full text-xs font-medium #{styles[status]}")
  end
end
