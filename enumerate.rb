def any?
  return false unless block_given?
  each { |para| return true if yield(para) }
  false
end
def filter
  result = []
  each { |para| result << para if yield(para) }
  result
end
