function modalparam(A,C,dt)
	#
	# Compute modal parameters from A, C and dt
	#
	# javier.cara@upm.es, 2016-02
	#

	no,ns = size(C)

	# allocating
	wm1 = zeros(ns)
	zm1 = zeros(ns)
	vm1 = zeros(no,ns)

	# eigenvalues and eigenvectors
	D,V = eigen(A)

	# C*V
	vm0 = C*V

	i = 1
	ii = 1
	fm1 = zeros(Number,no,ns) # can be real or complex numbers
	while i < ns
		d = D[i]
		if abs(imag(d)) > 1e-10 # complex number
			wm1[ii] = abs(log(d))/dt
			zm1[ii] = -real(log(d))/(wm1[ii]*dt)

			# modal shapes normalized with max component = 1
			maxval = vm0[1,i]
			for j in 2:no
				if abs(vm0[j,i]) > abs(maxval)
					maxval = vm0[j,i]
				end
			end
			vm1[:,ii] = real( vm0[:,i]/maxval )

			i = i+2
			ii = ii+1

		else
			# real eigenvalue
			i = i+1
		end
	end

	# deleting zero values
	wm = wm1[1:ii-1]
	zm = zm1[1:ii-1]
	vm = vm1[:,1:ii-1]

	# sorting frequencies
	pos=sortperm(wm)
	wm = wm[pos]
	zm = zm[pos]
	vm = vm[:,pos]

	return wm,zm,vm

end
