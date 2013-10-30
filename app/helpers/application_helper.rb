module ApplicationHelper
	def title(page_title)
    content_for(:title) { page_title }
  end
  
  def pyk_del
    "<span class='pyk_del glyphicon glyphicon-trash'></span>".html_safe
  end
  
  def pyk_edit
    "<span class='pyk_edit'>Edit</span>".html_safe
  end
  
  def dp(email, size=20)
    identifier = Digest::MD5.hexdigest((email.blank? ? "" : email).downcase)
    "http://gravatar.com/avatar/#{identifier}.png?s=#{size}"
  end
end
