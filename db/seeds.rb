Score.delete_all

20.times do |i|
  Score.create!(
    score: (i + 1) * 10,
    name: "Player #{i + 1}"
  )
end
