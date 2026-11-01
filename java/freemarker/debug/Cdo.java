package freemarker.debug;

import android.support.v4.hc;
import android.support.v4.kb2;
import freemarker.debug.impl.Cthis;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.rmi.RemoteException;
import java.rmi.server.RemoteObject;
import java.security.MessageDigest;
import java.util.Collection;
import java.util.List;

/* renamed from: freemarker.debug.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo {

    /* renamed from: freemarker.debug.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0246do implements Debugger {

        /* renamed from: do, reason: not valid java name */
        private final Debugger f24333do;

        public C0246do(Debugger debugger) {
            this.f24333do = debugger;
        }

        @Override // freemarker.debug.Debugger
        public void addBreakpoint(hc hcVar) throws RemoteException {
            this.f24333do.addBreakpoint(hcVar);
        }

        @Override // freemarker.debug.Debugger
        public Object addDebuggerListener(DebuggerListener debuggerListener) throws RemoteException {
            if (debuggerListener instanceof RemoteObject) {
                return this.f24333do.addDebuggerListener(debuggerListener);
            }
            return this.f24333do.addDebuggerListener(new Cthis(debuggerListener));
        }

        @Override // freemarker.debug.Debugger
        public List getBreakpoints() throws RemoteException {
            return this.f24333do.getBreakpoints();
        }

        @Override // freemarker.debug.Debugger
        public Collection getSuspendedEnvironments() throws RemoteException {
            return this.f24333do.getSuspendedEnvironments();
        }

        @Override // freemarker.debug.Debugger
        public void removeBreakpoint(hc hcVar) throws RemoteException {
            this.f24333do.removeBreakpoint(hcVar);
        }

        @Override // freemarker.debug.Debugger
        public void removeBreakpoints(String str) throws RemoteException {
            this.f24333do.removeBreakpoints(str);
        }

        @Override // freemarker.debug.Debugger
        public void removeDebuggerListener(Object obj) throws RemoteException {
            this.f24333do.removeDebuggerListener(obj);
        }

        @Override // freemarker.debug.Debugger
        public List getBreakpoints(String str) throws RemoteException {
            return this.f24333do.getBreakpoints(str);
        }

        @Override // freemarker.debug.Debugger
        public void removeBreakpoints() throws RemoteException {
            this.f24333do.removeBreakpoints();
        }
    }

    private Cdo() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Debugger m28404do(InetAddress inetAddress, int i, String str) throws IOException {
        try {
            Socket socket = new Socket(inetAddress, i);
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(socket.getOutputStream());
                ObjectInputStream objectInputStream = new ObjectInputStream(socket.getInputStream());
                int i2 = objectInputStream.readInt();
                if (i2 > 220) {
                    throw new IOException("Incompatible protocol version " + i2 + ". At most 220 was expected.");
                }
                byte[] bArr = (byte[]) objectInputStream.readObject();
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(str.getBytes("UTF-8"));
                messageDigest.update(bArr);
                objectOutputStream.writeObject(messageDigest.digest());
                return new C0246do((Debugger) objectInputStream.readObject());
            } finally {
                socket.close();
            }
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            throw new kb2(e2);
        }
    }
}
