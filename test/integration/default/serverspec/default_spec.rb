require 'serverspec'
require_relative './spec_helper'

# Required by serverspec
set :backend, :exec

describe file("#{ENV['elPrep_DIR']}/elprep") do
  it { should be_file }
  it { should be_executable.by('owner') }
  it { should be_executable.by('group') }
  it { should be_executable.by('others') }
end

describe file("#{ENV['elPrep_DIR']}/elprep-sfm.py") do
  it { should be_file }
  it { should be_executable.by('owner') }
  it { should be_executable.by('group') }
  it { should be_executable.by('others') }
end

describe command('which elprep-sfm.py') do
  its(:exit_status) { should eq 0 }
end
describe command('which elprep') do
  its(:exit_status) { should eq 0 }
end
