require 'spec_helper'

describe Task do
  it {should validate_presence_of :description}

  describe '.done' do
    it 'should show all the tasks that are complete' do
      task = Task.create({description: 'clean'})
      task.update(done: true)
      Task.done.should eq [task]
    end
  end
end
