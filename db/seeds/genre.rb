puts 'ジャンルをインサートします。'
words = %w(
  恋愛
  セックス
  恋愛相談
  プレゼント
  性病
)
words.each do |word|
  gen = Genre.new(name: word)
  if gen.save
    puts "#{gen.name}を追加します"
  else
    puts gen.errors.full_messages
  end
end