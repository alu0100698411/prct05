def gcd(u, v) #V SIEMPRE DEBE DE SER MENOR
  u, v = u.abs, v.abs

  while v != 0 
    aux = u
    u = v 
    v = aux % v 
  end
  u   
end
