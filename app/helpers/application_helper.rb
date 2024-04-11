module ApplicationHelper
  def button_link(text, url, color: "blue", icon: nil)
    render partial: 'shared/button', locals: { 
      text: text, 
      url: url, 
      icon: icon, 
      classes: "text-white bg-green-700 hover:bg-green-600 focus:ring-4 focus:outline-none font-medium rounded-lg text-sm px-5 py-2.5 text-center" 
    }
  end
end


