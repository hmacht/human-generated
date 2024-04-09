module ApplicationHelper
  def button_link(text, url, color: "blue", icon: nil)
    render partial: 'shared/button', locals: { text: text, url: url, icon: icon, classes: "bg-gray-900 hover:bg-gray-700 text-white py-2 px-4 border border-gray-700 rounded" }
  end
end
