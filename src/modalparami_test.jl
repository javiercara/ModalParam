println("Testing modalparami: ")

m = simula01()
A = m["A"]
B = m["B"]
C = m["C"]
dt = m["dt"]
wm = m["wm"]
zm = m["zm"]
Vm = m["Vm"]
mm = m["mm"]
dofu = [1,2]
wm1,zm1,Vm1,mm1 = modalparami(A,B,C,dt,dofu)

if (sum((wm-wm1).^2) < 0.1)
    println(" wm OK")
end
if (sum((zm-zm1).^2) < 0.1) && (sum((Vm-Vm1).^2) < 0.1)
    println(" zm OK")
end
if (sum((Vm-Vm1).^2) < 0.1)
    println(" Vm OK")
end
if (sum((mm-mm1).^2) < 0.1)
    println(" mm OK")
end
