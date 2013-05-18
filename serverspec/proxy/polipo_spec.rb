require File.expand_path('../../spec_helper', __FILE__)

describe 'polipo' do
  it { should be_installed }
  it { should be_enabled   }
  it { should be_running   }
end

describe 'port 8123' do
  it { should be_listening }
end

describe '/etc/polipo/config' do
  it { should be_file }
  it { should contain 'proxyName = "proxy"' }
end
