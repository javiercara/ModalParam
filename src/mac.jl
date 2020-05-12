function mac(v1,v2)

	# This funcion compute the Modal Assurance Criterion (MAC) between
	# two vectors (real or complex vectors)

	# first we convert v1 and v2 in row matrices (1,n)

	n1 = length(v1)
	v1 = reshape(v1,1,n1)
	n2 = length(v2)
	v2 = reshape(v2,1,n2)

	# julia transpose is hermitic: transpose + conjugate
	m = (abs.(v1*v2'))^2/((v1*v1')*(v2*v2')) # m is an array with one complex element
	m = Real(m[1])

	return(m)

end
