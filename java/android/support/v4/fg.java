package android.support.v4;

import java.security.cert.CertPath;

/* loaded from: classes3.dex */
public class fg extends nv0 {
    private CertPath certPath;
    private int index;

    public fg(g80 g80Var) {
        super(g80Var);
        this.index = -1;
        this.certPath = null;
    }

    public fg(g80 g80Var, Throwable th) {
        super(g80Var, th);
        this.index = -1;
        this.certPath = null;
    }

    public fg(g80 g80Var, Throwable th, CertPath certPath, int i) {
        super(g80Var, th);
        this.index = -1;
        this.certPath = null;
        if (certPath == null || i == -1) {
            throw new IllegalArgumentException();
        }
        if (i < -1 || i >= certPath.getCertificates().size()) {
            throw new IndexOutOfBoundsException();
        }
        this.certPath = certPath;
        this.index = i;
    }

    public fg(g80 g80Var, CertPath certPath, int i) {
        super(g80Var);
        this.index = -1;
        this.certPath = null;
        if (certPath == null || i == -1) {
            throw new IllegalArgumentException();
        }
        if (i < -1 || i >= certPath.getCertificates().size()) {
            throw new IndexOutOfBoundsException();
        }
        this.certPath = certPath;
        this.index = i;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getIndex() {
        return this.index;
    }
}
