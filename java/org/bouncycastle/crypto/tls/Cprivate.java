package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.ou;
import android.support.v4.su;
import android.support.v4.vl;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.private, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cprivate extends Ccase {
    public Cprivate() {
    }

    public Cprivate(TlsCipherFactory tlsCipherFactory) {
        super(tlsCipherFactory);
    }

    /* renamed from: break, reason: not valid java name */
    public TlsKeyExchange m34231break(int i) {
        return new u(i, this.f30539break, this.f30542class, this.f30543const, this.f30546final);
    }

    /* renamed from: catch, reason: not valid java name */
    public TlsKeyExchange m34232catch() {
        return new b0(this.f30539break);
    }

    /* renamed from: class, reason: not valid java name */
    public ou m34233class() {
        return su.d;
    }

    /* renamed from: const, reason: not valid java name */
    public TlsSignerCredentials m34234const() throws IOException {
        throw new n72((short) 80);
    }

    /* renamed from: else, reason: not valid java name */
    public TlsKeyExchange m34235else(int i) {
        return new o(i, this.f30539break, null, m34233class());
    }

    /* renamed from: final, reason: not valid java name */
    public TlsSignerCredentials m34236final() throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.Ccase
    public int[] getCipherSuites() {
        return new int[]{vl.o1, vl.n1, vl.g1, vl.f1, vl.k0, vl.j0, 159, 158, 107, 103, 57, 51, 157, 156, 61, 60, 53, 47};
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public TlsCredentials getCredentials() throws IOException {
        int iD = l0.d(this.f30554throw);
        if (iD == 1) {
            return m34238super();
        }
        if (iD == 3) {
            return m34234const();
        }
        if (iD != 5) {
            if (iD == 11) {
                return null;
            }
            if (iD == 17) {
                return m34236final();
            }
            if (iD != 19) {
                if (iD == 20) {
                    return null;
                }
                throw new n72((short) 80);
            }
        }
        return m34240throw();
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public TlsKeyExchange getKeyExchange() throws IOException {
        int iD = l0.d(this.f30554throw);
        if (iD == 1) {
            return m34232catch();
        }
        if (iD == 3 || iD == 5) {
            return m34235else(iD);
        }
        if (iD == 7 || iD == 9 || iD == 11) {
            return m34237goto(iD);
        }
        switch (iD) {
            case 16:
            case 18:
            case 20:
                return m34231break(iD);
            case 17:
            case 19:
                return m34239this(iD);
            default:
                throw new n72((short) 80);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public TlsKeyExchange m34237goto(int i) {
        return new p(i, this.f30539break, null, m34233class());
    }

    /* renamed from: super, reason: not valid java name */
    public TlsEncryptionCredentials m34238super() throws IOException {
        throw new n72((short) 80);
    }

    /* renamed from: this, reason: not valid java name */
    public TlsKeyExchange m34239this(int i) {
        return new t(i, this.f30539break, this.f30542class, this.f30543const, this.f30546final);
    }

    /* renamed from: throw, reason: not valid java name */
    public TlsSignerCredentials m34240throw() throws IOException {
        throw new n72((short) 80);
    }
}
