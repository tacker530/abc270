# B - Hammer
x,y,z = gets.chomp.split.map(&:to_i)
pos = 0
len = 0

if x < 0 then # すべてゴールを正の方向にする。
  x *= -1
  y *= -1
  z *= -1
end


# ゴールが壁の手前にある場合（壊さなくていい）
if (x < y)  then
  puts x
  exit
end
# 逆方向にある場合
if (x * y) < 0  then
  puts x
  exit
end

# 壁があるならばハンマーまで移動,無ければ原点
if (z * y) >= 0 then  # 同じ方向にある場合
  if z.abs < y.abs then # 間に壁があるのでハンマーまで移動
    len += z.abs
    pos = z
  else
    puts -1
    exit
  end
else
  len += z.abs
  pos = z
end
# そのあとでゴールに移動
len += ( x - pos )
puts len



exit
# ------------------------------------------------------
# ゴールとの間に壁があるか.原点から見て同じ方向にあるか
if (X * Y) < 0 then 
    puts "#{X.abs}"  # 移動距離
    exit
end

# ハンマーとの間に壁があるか.原点から見て同じ方向にあるか
if Z.abs > Y.abs and ( Z * Y ) >= 0 then # 間に壁があるのでハンマーまで移動
  puts "-1"  # 移動距離
  exit
end


# 壁があるならばハンマーまで移動,無ければ原点
if X.abs > Y.abs then # 間に壁があるのでハンマーまで移動
  len += Z.abs
  pos = Z
end
# そのあとでゴールに移動
len += ( X - pos )

p len