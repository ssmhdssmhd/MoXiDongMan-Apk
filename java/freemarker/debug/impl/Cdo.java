package freemarker.debug.impl;

import android.support.v4.kb2;
import androidx.fragment.app.FragmentManagerImpl;
import freemarker.debug.Debugger;
import freemarker.template.utility.Cconst;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Random;

/* renamed from: freemarker.debug.impl.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo {

    /* renamed from: case, reason: not valid java name */
    private static final freemarker.log.Cif f24368case = freemarker.log.Cif.m29193break("freemarker.debug.server");

    /* renamed from: else, reason: not valid java name */
    private static final Random f24369else = new SecureRandom();

    /* renamed from: do, reason: not valid java name */
    private final byte[] f24370do;

    /* renamed from: for, reason: not valid java name */
    private final Serializable f24371for;

    /* renamed from: try, reason: not valid java name */
    private ServerSocket f24374try;

    /* renamed from: new, reason: not valid java name */
    private boolean f24373new = false;

    /* renamed from: if, reason: not valid java name */
    private final int f24372if = Cconst.m29257do("freemarker.debug.port", Debugger.DEFAULT_PORT).intValue();

    /* renamed from: freemarker.debug.impl.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0247do implements Runnable {
        public RunnableC0247do() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cdo.this.m28430else();
        }
    }

    /* renamed from: freemarker.debug.impl.do$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final Socket f24376do;

        public Cif(Socket socket) {
            this.f24376do = socket;
        }

        @Override // java.lang.Runnable
        public void run() throws NoSuchAlgorithmException, IOException {
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(this.f24376do.getOutputStream());
                ObjectInputStream objectInputStream = new ObjectInputStream(this.f24376do.getInputStream());
                byte[] bArr = new byte[512];
                Cdo.f24369else.nextBytes(bArr);
                objectOutputStream.writeInt(FragmentManagerImpl.ANIM_DUR);
                objectOutputStream.writeObject(bArr);
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(Cdo.this.f24370do);
                messageDigest.update(bArr);
                if (Arrays.equals((byte[]) objectInputStream.readObject(), messageDigest.digest())) {
                    objectOutputStream.writeObject(Cdo.this.f24371for);
                } else {
                    objectOutputStream.writeObject(null);
                }
            } catch (Exception e) {
                Cdo.f24368case.mo29188private("Connection to " + this.f24376do.getInetAddress().getHostAddress() + " abruply broke", e);
            }
        }
    }

    public Cdo(Serializable serializable) {
        try {
            this.f24370do = Cconst.m29258for("freemarker.debug.password", "").getBytes("UTF-8");
            this.f24371for = serializable;
        } catch (UnsupportedEncodingException e) {
            throw new kb2(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public void m28430else() {
        try {
            this.f24374try = new ServerSocket(this.f24372if);
            while (!this.f24373new) {
                new Thread(new Cif(this.f24374try.accept())).start();
            }
        } catch (IOException e) {
            f24368case.mo29181else("Debugger server shut down.", e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m28435case() {
        new Thread(new RunnableC0247do(), "FreeMarker Debugger Server Acceptor").start();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m28436goto() throws IOException {
        this.f24373new = true;
        ServerSocket serverSocket = this.f24374try;
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (IOException e) {
                f24368case.mo29181else("Unable to close server socket.", e);
            }
        }
    }
}
