package freemarker.debug;

import android.support.v4.c80;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.EventListener;

/* loaded from: classes.dex */
public interface DebuggerListener extends Remote, EventListener {
    void environmentSuspended(c80 c80Var) throws RemoteException;
}
