# Сделать хеш, содеращий месяцы и количество дней в месяце
# В цикле выводить те месяцы,у которых количество дней ровно 30
months = {
    Jan: 31,
    Feb: 28,
    Mar: 31,
    Apr: 30,
    May: 31,
    Jun: 30,
    Jul: 31,
    Aug: 31,
    Sep: 30,
    Oct: 31,
    Nov: 30,
    Dec: 31
}
puts 'The following months have 30 days'
months.each do |month, days|
  puts month if days == 30
end