package freemarker.debug.impl;

import android.support.v4.hc;
import freemarker.debug.Debugger;
import freemarker.debug.DebuggerListener;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.Collection;
import java.util.List;

/* renamed from: freemarker.debug.impl.else, reason: invalid class name */
/* loaded from: classes.dex */
class Celse extends UnicastRemoteObject implements Debugger {

    /* renamed from: if, reason: not valid java name */
    private static final long f24378if = 1;

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f24379do;

    public Celse(Ccatch ccatch) throws RemoteException {
        this.f24379do = ccatch;
    }

    @Override // freemarker.debug.Debugger
    public void addBreakpoint(hc hcVar) {
        this.f24379do.m28415break(hcVar);
    }

    @Override // freemarker.debug.Debugger
    public Object addDebuggerListener(DebuggerListener debuggerListener) {
        return this.f24379do.m28416catch(debuggerListener);
    }

    @Override // freemarker.debug.Debugger
    public List getBreakpoints() {
        return this.f24379do.m28423super();
    }

    @Override // freemarker.debug.Debugger
    public Collection getSuspendedEnvironments() {
        return this.f24379do.m28425throw();
    }

    @Override // freemarker.debug.Debugger
    public void removeBreakpoint(hc hcVar) {
        this.f24379do.m28420native(hcVar);
    }

    @Override // freemarker.debug.Debugger
    public void removeBreakpoints() {
        this.f24379do.m28421public();
    }

    @Override // freemarker.debug.Debugger
    public void removeDebuggerListener(Object obj) {
        this.f24379do.m28417default(obj);
    }

    @Override // freemarker.debug.Debugger
    public List getBreakpoints(String str) {
        return this.f24379do.mo28419for(str);
    }

    @Override // freemarker.debug.Debugger
    public void removeBreakpoints(String str) {
        this.f24379do.m28422static(str);
    }
}
