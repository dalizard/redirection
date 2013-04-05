require 'fixtures/application'
require 'fixtures/controllers'
require 'rspec/rails'

describe PostsController, :type => :controller do
  it 'has default param set to :referrer' do
    subject.redirection_param.should == :referrer
  end

  it 'lets you update the param' do
    subject.class.use_redirection_param :mecho
    subject.redirection_param.should == :mecho
  end
end
