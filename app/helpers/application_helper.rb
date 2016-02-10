module ApplicationHelper
  def to_html(user)
    return "<h1>#{user.username}</h1>"
  end

  def user_class(user)
    return user.is_a?(Instructor) ? "instructor" : "student"
  end
end


# erb
# <%= to_html(current_user) %>
# <div class="<%= user_class(current_user) %>">


# css
# div.student {}
# div.instructor {}