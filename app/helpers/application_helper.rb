module ApplicationHelper
  def flash_class(type)
    case type
      when "success" then "success"
      when "error"   then "danger"
      when "alert"   then "warning"
      when "notice"  then "info"
      else "info"
    end
  end

  def markdown(text)
    options = { hard_wrap: true,
                filter_html: false,
                autolink: true,
                no_intra_emphasis: true,
                fenced_code_blocks: true,
                lax_html_blocks: true,
                strikethrough: true,
                superscript: true
              }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    return markdown.render(text).html_safe
  end

end
