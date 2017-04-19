require('title_case')
require('rspec')

describe('String#title_case') do
  it('capitalize the first letter of a single word') do
    expect("ulysses".title_case()).to(eq("Ulysses"))
  end
  it('capitalizes the first letter of each word in a multi-word title') do
    expect("american gods".title_case()).to(eq("American Gods"))
  end
  it('does not capitalize articles, conjunctions or propositions unless they are the first word in the title') do
    expect("of mice and men".title_case()).to(eq("Of Mice and Men"))
  end
end
