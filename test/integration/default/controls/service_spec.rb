# frozen_string_literal: true

control 'Cron service' do
  title 'should be running and enabled'

  service_name =
    case os[:family]
    when 'debian', 'suse'
      'cron'
    # Catch remaining `linux` platforms to identify by `name` at the end
    when 'linux'
      case os[:name]
      when 'arch'
        'cronie'
      else
        'crond'
      end
    else
      'crond'
    end

  describe service(service_name) do
    it { should be_enabled }
    it { should be_running }
  end
end
