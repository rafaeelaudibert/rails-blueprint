# frozen_string_literal: true

ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  class_attr_index = html_tag.index 'class="'

  error_class = 'is-danger'

  if class_attr_index
    html_tag.insert class_attr_index + 7, "#{error_class} "
  else
    html_tag.insert html_tag.index('>'), " class='#{error_class}'"
  end
end
