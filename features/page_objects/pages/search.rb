module Search
  class <<self
    include Capybara::DSL
      def search_box
        find('#vehicleReg')
      end

      def find_vehicle
        find('[name=btnfind]')
      end

      def vehicle_results
        find('.result')
      end

      def page_title
        find("[title='Volkswagen Financial Services']")
      end

      def cover_details
        all('.resultDate-bold')
      end

      def error_message
        find('.error-required')
      end

  end
end

module Kernel
  def search
    Search
  end
end
