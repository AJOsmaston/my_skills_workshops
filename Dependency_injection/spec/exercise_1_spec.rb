require 'exercise_1'

describe Note do
  it "Creates a formatted note" do
    title, body = ["title", "body"]
    note_formatter_double = double :noteFormatter, format: "Title: #{title}\n#{body}"
    note = Note.new(title, body, note_formatter_double)
    expect(note.display).to eq "Title: title\nbody"
  end
end
