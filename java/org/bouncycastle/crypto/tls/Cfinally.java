package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.vl;
import android.support.v4.wy;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfinally extends Cif {

    /* renamed from: this, reason: not valid java name */
    public TlsDHVerifier f30593this;

    public Cfinally() {
        this(new Cextends());
    }

    public Cfinally(TlsCipherFactory tlsCipherFactory) {
        this(tlsCipherFactory, new wy());
    }

    public Cfinally(TlsCipherFactory tlsCipherFactory, TlsDHVerifier tlsDHVerifier) {
        super(tlsCipherFactory);
        this.f30593this = tlsDHVerifier;
    }

    /* renamed from: case, reason: not valid java name */
    public TlsKeyExchange m34100case(int i) {
        return new t(i, this.f30633for, this.f30636new, this.f30637try, this.f30630case);
    }

    /* renamed from: else, reason: not valid java name */
    public TlsKeyExchange m34101else(int i) {
        return new u(i, this.f30633for, this.f30636new, this.f30637try, this.f30630case);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public int[] getCipherSuites() {
        return new int[]{vl.j1, vl.b1, vl.Z, vl.n1, vl.f1, vl.j0, 156, 60, 47};
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsKeyExchange getKeyExchange() throws IOException {
        int iD = l0.d(this.f30632else);
        if (iD == 1) {
            return m34102goto();
        }
        if (iD == 3 || iD == 5) {
            return m34103new(iD);
        }
        if (iD == 7 || iD == 9 || iD == 11) {
            return m34104try(iD);
        }
        switch (iD) {
            case 16:
            case 18:
            case 20:
                return m34101else(iD);
            case 17:
            case 19:
                return m34100case(iD);
            default:
                throw new n72((short) 80);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public TlsKeyExchange m34102goto() {
        return new b0(this.f30633for);
    }

    /* renamed from: new, reason: not valid java name */
    public TlsKeyExchange m34103new(int i) {
        return new o(i, this.f30633for, this.f30593this, null);
    }

    /* renamed from: try, reason: not valid java name */
    public TlsKeyExchange m34104try(int i) {
        return new p(i, this.f30633for, this.f30593this, null);
    }
}
