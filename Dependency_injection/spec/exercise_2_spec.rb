require 'exercise_2'

describe Diary do

  it "creates a new diary" do

    entry_double = double(:title => "Day 1", :body => "I'm the best")
    new_diary = Diary.new
    new_diary.add("Title", "Body", entry_double)
    expect(new_diary.index).to eq "Day 1"

  end

end