module Capybara
  module Ember
    module AsyncHelpers
      def wait_for_ember_run_loop_to_complete
        Capybara.default_wait_time*100.times do #this means up to 5 seconds if Capybara.default_wait_time is 5
          return if  Capybara.current_session.evaluate_script "(typeof Ember === 'object') && !Ember.run.hasScheduledTimers() && !Ember.run.currentRunLoop"
          sleep 0.01
        end
      end

      def click_ensuring_ember_run_loop_has_finished
        wait_for_ember_run_loop_to_complete
        click_original
      end
    end
  end
end

if defined?(Capybara::Poltergeist::Node)
  Capybara::Poltergeist::Node.send(:include, Capybara::Ember::AsyncHelpers)
  Capybara::Poltergeist::Node.send(:alias_method, :click_original, :click)
  Capybara::Poltergeist::Node.send(:alias_method, :click, :click_ensuring_ember_run_loop_has_finished)
end
