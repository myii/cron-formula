control 'Cron service' do
  title 'should be running and enabled'

  service_name =
    case os[:family]
    when 'debian', 'suse'
      'cron'
    else
      'crond'
    end

  describe service(service_name) do
    it { should be_enabled }
    it { should be_running }
  end

end
