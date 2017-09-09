my.normalize = function(mat)
{
  #normalize
  #mat = X[1:5, 1:10]
  
  # mat.ra = diag(1 / apply(mat, 1, sum)) %*% as.matrix(mat)
  # rownames(df.200k.ra) = rownames(df.200k)
  log10mat = log10(mat + 10e-8)#
  #sd.vec = apply(mat,1,sd)
  #tenth.perc = quantile(sd.vec,c(0.10))
  
  log10mat.2 = log10mat
  
  a1 = log10mat - apply(log10mat,1, mean)
  a2 = apply(log10mat, 1, sd)
  a3 = diag(1 / a2) %*% as.matrix(a1) 
  log10mat.2 = a3
  #for (cnt in 1:nrow(log10mat))
  #{
  #  log10mat.2[cnt,] = (log10mat[cnt,] - mean(as.numeric(log10mat[cnt,])))/(sd(log10mat[cnt,]) )#+tenth.perc
  #}
  return(log10mat.2)
}
