module ApplicationHelper
  def is_active(selected_controller)  
    puts selected_controller + " selected"
    puts controller_name + "controller"
    if selected_controller == controller_name      
      "class=active"
    else
      nil
    end
  end
end
