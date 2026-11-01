package freemarker.debug.impl;

import android.support.v4.hc;
import freemarker.debug.Debugger;
import freemarker.debug.DebuggerListener;
import java.lang.reflect.Method;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.rmi.UnexpectedException;
import java.rmi.server.RemoteObject;
import java.rmi.server.RemoteRef;
import java.rmi.server.RemoteStub;
import java.util.Collection;
import java.util.List;

/* renamed from: freemarker.debug.impl.goto, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cgoto extends RemoteStub implements Debugger, Remote {

    /* renamed from: break, reason: not valid java name */
    private static Method f24383break = null;

    /* renamed from: case, reason: not valid java name */
    private static Method f24384case = null;

    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ Class f24385catch = null;

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ Class f24386class = null;

    /* renamed from: const, reason: not valid java name */
    public static /* synthetic */ Class f24387const = null;

    /* renamed from: do, reason: not valid java name */
    private static final long f24388do = 2;

    /* renamed from: else, reason: not valid java name */
    private static Method f24389else;

    /* renamed from: final, reason: not valid java name */
    public static /* synthetic */ Class f24390final;

    /* renamed from: for, reason: not valid java name */
    private static Method f24391for;

    /* renamed from: goto, reason: not valid java name */
    private static Method f24392goto;

    /* renamed from: if, reason: not valid java name */
    private static Method f24393if;

    /* renamed from: new, reason: not valid java name */
    private static Method f24394new;

    /* renamed from: super, reason: not valid java name */
    public static /* synthetic */ Class f24395super;

    /* renamed from: this, reason: not valid java name */
    private static Method f24396this;

    /* renamed from: try, reason: not valid java name */
    private static Method f24397try;

    static {
        try {
            Class clsM28439do = f24385catch;
            if (clsM28439do == null) {
                clsM28439do = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do;
            }
            Class<?>[] clsArr = new Class[1];
            Class<?> clsM28439do2 = f24386class;
            if (clsM28439do2 == null) {
                clsM28439do2 = m28439do("freemarker.debug.Breakpoint");
                f24386class = clsM28439do2;
            }
            clsArr[0] = clsM28439do2;
            f24393if = clsM28439do.getMethod("addBreakpoint", clsArr);
            Class clsM28439do3 = f24385catch;
            if (clsM28439do3 == null) {
                clsM28439do3 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do3;
            }
            Class<?>[] clsArr2 = new Class[1];
            Class<?> clsM28439do4 = f24387const;
            if (clsM28439do4 == null) {
                clsM28439do4 = m28439do("freemarker.debug.DebuggerListener");
                f24387const = clsM28439do4;
            }
            clsArr2[0] = clsM28439do4;
            f24391for = clsM28439do3.getMethod("addDebuggerListener", clsArr2);
            Class clsM28439do5 = f24385catch;
            if (clsM28439do5 == null) {
                clsM28439do5 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do5;
            }
            f24394new = clsM28439do5.getMethod("getBreakpoints", new Class[0]);
            Class clsM28439do6 = f24385catch;
            if (clsM28439do6 == null) {
                clsM28439do6 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do6;
            }
            Class<?>[] clsArr3 = new Class[1];
            Class<?> clsM28439do7 = f24390final;
            if (clsM28439do7 == null) {
                clsM28439do7 = m28439do("java.lang.String");
                f24390final = clsM28439do7;
            }
            clsArr3[0] = clsM28439do7;
            f24397try = clsM28439do6.getMethod("getBreakpoints", clsArr3);
            Class clsM28439do8 = f24385catch;
            if (clsM28439do8 == null) {
                clsM28439do8 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do8;
            }
            f24384case = clsM28439do8.getMethod("getSuspendedEnvironments", new Class[0]);
            Class clsM28439do9 = f24385catch;
            if (clsM28439do9 == null) {
                clsM28439do9 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do9;
            }
            Class<?>[] clsArr4 = new Class[1];
            Class<?> clsM28439do10 = f24386class;
            if (clsM28439do10 == null) {
                clsM28439do10 = m28439do("freemarker.debug.Breakpoint");
                f24386class = clsM28439do10;
            }
            clsArr4[0] = clsM28439do10;
            f24389else = clsM28439do9.getMethod("removeBreakpoint", clsArr4);
            Class clsM28439do11 = f24385catch;
            if (clsM28439do11 == null) {
                clsM28439do11 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do11;
            }
            f24392goto = clsM28439do11.getMethod("removeBreakpoints", new Class[0]);
            Class clsM28439do12 = f24385catch;
            if (clsM28439do12 == null) {
                clsM28439do12 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do12;
            }
            Class<?>[] clsArr5 = new Class[1];
            Class<?> clsM28439do13 = f24390final;
            if (clsM28439do13 == null) {
                clsM28439do13 = m28439do("java.lang.String");
                f24390final = clsM28439do13;
            }
            clsArr5[0] = clsM28439do13;
            f24396this = clsM28439do12.getMethod("removeBreakpoints", clsArr5);
            Class clsM28439do14 = f24385catch;
            if (clsM28439do14 == null) {
                clsM28439do14 = m28439do("freemarker.debug.Debugger");
                f24385catch = clsM28439do14;
            }
            Class<?>[] clsArr6 = new Class[1];
            Class<?> clsM28439do15 = f24395super;
            if (clsM28439do15 == null) {
                clsM28439do15 = m28439do("java.lang.Object");
                f24395super = clsM28439do15;
            }
            clsArr6[0] = clsM28439do15;
            f24383break = clsM28439do14.getMethod("removeDebuggerListener", clsArr6);
        } catch (NoSuchMethodException unused) {
            throw new NoSuchMethodError("stub class initialization failed");
        }
    }

    public Cgoto(RemoteRef remoteRef) {
        super(remoteRef);
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ Class m28439do(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public void addBreakpoint(hc hcVar) throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24393if, new Object[]{hcVar}, -7089035859976030762L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public Object addDebuggerListener(DebuggerListener debuggerListener) throws UnexpectedException, RemoteException {
        try {
            return ((RemoteObject) this).ref.invoke(this, f24391for, new Object[]{debuggerListener}, 3973888913376431645L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public List getBreakpoints() throws UnexpectedException, RemoteException {
        try {
            return (List) ((RemoteObject) this).ref.invoke(this, f24394new, (Object[]) null, 2717170791450965365L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public List getBreakpoints(String str) throws UnexpectedException, RemoteException {
        try {
            return (List) ((RemoteObject) this).ref.invoke(this, f24397try, new Object[]{str}, 2245868106496574916L);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnexpectedException("undeclared checked exception", e2);
        } catch (RemoteException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public Collection getSuspendedEnvironments() throws UnexpectedException, RemoteException {
        try {
            return (Collection) ((RemoteObject) this).ref.invoke(this, f24384case, (Object[]) null, 6416507983008154583L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public void removeBreakpoint(hc hcVar) throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24389else, new Object[]{hcVar}, -6894101526753771883L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public void removeBreakpoints() throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24392goto, (Object[]) null, -431815962995809519L);
        } catch (RemoteException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new UnexpectedException("undeclared checked exception", e3);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public void removeBreakpoints(String str) throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24396this, new Object[]{str}, -4131389507095882284L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.Debugger
    public void removeDebuggerListener(Object obj) throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24383break, new Object[]{obj}, 8368105080961049709L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }
}
