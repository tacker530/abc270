# C - Simple path
N,X,Y = gets.chomp.split.map(&:to_i)
side = Array.new(N-2)
(N-1).times do |i|
  side[i]= gets.chomp.split.map(&:to_i)
end
pp side.flatten.sort.uniq

node    = Hash.new
visited = Hash.new

side.flatten.sort.uniq.each do |i|
  node[i] = []
  visited[i] = false
end

side.each do |from,to|
  node[from] << to
  node[ to ] << from
end

queue = []
def search(v)
  pos = queue.shift
  if pos == v then
    break # 発見
  else
    
  end 
 end
end



