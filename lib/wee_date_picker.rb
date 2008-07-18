module WeeDatePicker

  def date_picker(field_name, date_obj)
    tag(:input, {:type => "text", :class => "w8em format-d-m-y divider-dash highlight-days-7 no-transparency",
    :name => field_name, :id => field_name, :value => date_obj.strftime("%d-%m-%Y"), :maxlength => "10", :size => "10"})
  end

  def load_date_picker
    content_for(:date_includes) do
      stylesheet_link_tag('datepicker')
    end
    content_for(:date_includes) do
      javascript_include_tag('datepicker')
    end
    return content_tag(:script, 'datePickerController.create()')
  end

end
