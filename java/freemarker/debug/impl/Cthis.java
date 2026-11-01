package freemarker.debug.impl;

import android.support.v4.c80;
import freemarker.debug.DebuggerListener;
import freemarker.log.Cif;
import java.rmi.NoSuchObjectException;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.rmi.server.Unreferenced;

/* renamed from: freemarker.debug.impl.this, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthis extends UnicastRemoteObject implements DebuggerListener, Unreferenced {

    /* renamed from: for, reason: not valid java name */
    private static final long f24416for = 1;

    /* renamed from: if, reason: not valid java name */
    private static final Cif f24417if = Cif.m29193break("freemarker.debug.client");

    /* renamed from: do, reason: not valid java name */
    private final DebuggerListener f24418do;

    public Cthis(DebuggerListener debuggerListener) throws RemoteException {
        this.f24418do = debuggerListener;
    }

    /* renamed from: do, reason: not valid java name */
    public void m28446do() {
        try {
            UnicastRemoteObject.unexportObject(this, false);
        } catch (NoSuchObjectException e) {
            f24417if.mo29188private("Failed to unexport RMI debugger listener", e);
        }
    }

    @Override // freemarker.debug.DebuggerListener
    public void environmentSuspended(c80 c80Var) throws RemoteException {
        this.f24418do.environmentSuspended(c80Var);
    }
}
