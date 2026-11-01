package freemarker.debug.impl;

import android.support.v4.c80;
import freemarker.debug.DebuggerListener;
import java.lang.reflect.Method;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.rmi.UnexpectedException;
import java.rmi.server.RemoteObject;
import java.rmi.server.RemoteRef;
import java.rmi.server.RemoteStub;

/* renamed from: freemarker.debug.impl.break, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cbreak extends RemoteStub implements DebuggerListener, Remote {

    /* renamed from: do, reason: not valid java name */
    private static final long f24334do = 2;

    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ Class f24335for;

    /* renamed from: if, reason: not valid java name */
    private static Method f24336if;

    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ Class f24337new;

    static {
        try {
            Class clsM28405do = f24335for;
            if (clsM28405do == null) {
                clsM28405do = m28405do("freemarker.debug.DebuggerListener");
                f24335for = clsM28405do;
            }
            Class<?>[] clsArr = new Class[1];
            Class<?> clsM28405do2 = f24337new;
            if (clsM28405do2 == null) {
                clsM28405do2 = m28405do("freemarker.debug.EnvironmentSuspendedEvent");
                f24337new = clsM28405do2;
            }
            clsArr[0] = clsM28405do2;
            f24336if = clsM28405do.getMethod("environmentSuspended", clsArr);
        } catch (NoSuchMethodException unused) {
            throw new NoSuchMethodError("stub class initialization failed");
        }
    }

    public Cbreak(RemoteRef remoteRef) {
        super(remoteRef);
    }

    /* renamed from: do, reason: not valid java name */
    public static /* synthetic */ Class m28405do(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.RemoteException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnexpectedException */
    @Override // freemarker.debug.DebuggerListener
    public void environmentSuspended(c80 c80Var) throws UnexpectedException, RemoteException {
        try {
            ((RemoteObject) this).ref.invoke(this, f24336if, new Object[]{c80Var}, -2541155567719209082L);
        } catch (Exception e) {
            throw new UnexpectedException("undeclared checked exception", e);
        } catch (RemoteException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        }
    }
}
