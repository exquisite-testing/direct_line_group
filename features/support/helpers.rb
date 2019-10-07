require 'capybara'
require 'capybara/cucumber'
require_relative "../../features/page_objects/requires"
require_relative "../../features/page_objects/pages/search"

def wait_for_ajax
  Timeout.timeout(Capybara.default_max_wait_time) do
    loop until finished_all_ajax_requests?
  end
end

def finished_all_ajax_requests?
  page.evaluate_script('jQuery.active').zero?
end

def wait_for
  sleep 3
end
