package android.support.v4;

import fi.iki.elonen.NanoHTTPD;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class ex1 {

    /* renamed from: do, reason: not valid java name */
    private static final Logger f1615do = Logger.getLogger(ex1.class.getName());

    /* renamed from: do, reason: not valid java name */
    public static void m2058do(NanoHTTPD nanoHTTPD) throws InterruptedException {
        try {
            nanoHTTPD.start(NanoHTTPD.SOCKET_READ_TIMEOUT, false);
        } catch (IOException e) {
            System.err.println("Couldn't start server:\n" + e);
            System.exit(-1);
        }
        System.out.println("Server started, Hit Enter to stop.\n");
        try {
            System.in.read();
        } catch (Throwable unused) {
        }
        nanoHTTPD.stop();
        System.out.println("Server stopped.\n");
    }

    /* renamed from: if, reason: not valid java name */
    public static <T extends NanoHTTPD> void m2059if(Class<T> cls) {
        try {
            m2058do(cls.newInstance());
        } catch (Exception e) {
            f1615do.log(Level.SEVERE, "Cound nor create server", (Throwable) e);
        }
    }
}
