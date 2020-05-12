println("Testing modalparam: ")

m = simula01()
A = m["A"]
C = m["C"]
dt = m["dt"]
wm = m["wm"]
zm = m["zm"]
Vm = m["Vm"]
wm1,zm1,Vm1 = modalparam(A,C,dt)

if (sum((wm-wm1).^2) < 0.1)
    println(" wm OK")
end
if (sum((zm-zm1).^2) < 0.1) && (sum((Vm-Vm1).^2) < 0.1)
    println(" zm OK")
end
if (sum((Vm-Vm1).^2) < 0.1)
    println(" Vm OK")
end
