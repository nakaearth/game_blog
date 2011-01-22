module EntriesHelper
  def is_public(flag)
    if flag==1
      return "PUBLIC"
    else
      return "NOT PUBLIC"
    end
  end

  def format_string_length(message, max_length)
    if (message.length > max_length)
      return CGI.escapeHTML(message[0,max_length]+".....")
    else
      return CGI.escapeHTML(message)
    end
  end
end
