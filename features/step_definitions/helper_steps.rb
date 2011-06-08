# encoding: utf-8

def must_have_confirmation_message(message = nil)
  must_have_message('notice', message)
end

def must_have_error_message(message = nil)
  must_have_message('alert', message)
end

def must_have_message(type, message = nil)
  if message
    within("div#flash-#{type}") do
      page.has_content?(message).must_equal true
    end
  else
    page.has_css?("div#flash-#{type}").must_equal true
  end
end
