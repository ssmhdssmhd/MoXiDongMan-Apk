package freemarker.debug;

import java.rmi.RemoteException;

/* loaded from: classes.dex */
public interface DebuggedEnvironment extends DebugModel {
    long getId() throws RemoteException;

    void resume() throws RemoteException;

    void stop() throws RemoteException;
}
