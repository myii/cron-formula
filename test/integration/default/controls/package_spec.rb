# frozen_string_literal: true

control 'Cron package' do
  title 'should be installed'

  package_name =
    case os[:family]
    when 'debian'
      'cron'
    else
      'cronie'
    end

  describe package(package_name) do
    it { should be_installed }
  end
end
