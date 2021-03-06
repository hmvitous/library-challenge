require './lib/library.rb'
require 'date'

describe Library do
  let(:person) { instance_double('Person', password: '1234', mybooks: 'Skratta lagom! Sa pappa Åberg') }

  it 'can search book list by title' do
    expect(subject.select_book("Skratta lagom! Sa pappa Åberg")).to be_truthy
  end

  it 'should be possible to display what books are available' do
    expect(subject.show_available_books).to be_truthy
    end

  it 'show the due date at borrowing' do
    expect(subject.due_date)
  end

  # it 'show a list of books borrowed by person' do
  #   expect(subject.mybooks)
  # end



end


