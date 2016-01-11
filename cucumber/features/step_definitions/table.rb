Given(/^this table:$/) do |table|
  @table = table
end

Then(/^the following equalities hold true:$/) do |truth_table|
  table = @table
  truth_table.hashes.each do |row|
    p row
    actual = binding.eval row["expression"]
    expect(actual).to eq(binding.eval(row["result"]))
  end
end
