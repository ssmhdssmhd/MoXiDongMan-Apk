package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.ou;
import android.support.v4.su;
import android.support.v4.vl;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.synchronized, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csynchronized extends Ccase {

    /* renamed from: native, reason: not valid java name */
    public TlsPSKIdentityManager f30773native;

    public Csynchronized(TlsCipherFactory tlsCipherFactory, TlsPSKIdentityManager tlsPSKIdentityManager) {
        super(tlsCipherFactory);
        this.f30773native = tlsPSKIdentityManager;
    }

    public Csynchronized(TlsPSKIdentityManager tlsPSKIdentityManager) {
        this(new Cextends(), tlsPSKIdentityManager);
    }

    /* renamed from: else, reason: not valid java name */
    public TlsKeyExchange m34367else(int i) {
        return new z(i, this.f30539break, null, this.f30773native, null, m34368goto(), this.f30542class, this.f30543const, this.f30546final);
    }

    @Override // org.bouncycastle.crypto.tls.Ccase
    public int[] getCipherSuites() {
        return new int[]{vl.N1, vl.L1, 178, 144};
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public TlsCredentials getCredentials() throws IOException {
        int iD = l0.d(this.f30554throw);
        if (iD == 24) {
            return null;
        }
        switch (iD) {
            case 13:
            case 14:
                return null;
            case 15:
                return m34369this();
            default:
                throw new n72((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public TlsKeyExchange getKeyExchange() throws IOException {
        int iD = l0.d(this.f30554throw);
        if (iD != 24) {
            switch (iD) {
                case 13:
                case 14:
                case 15:
                    break;
                default:
                    throw new n72((short) 80);
            }
        }
        return m34367else(iD);
    }

    /* renamed from: goto, reason: not valid java name */
    public ou m34368goto() {
        return su.d;
    }

    /* renamed from: this, reason: not valid java name */
    public TlsEncryptionCredentials m34369this() throws IOException {
        throw new n72((short) 80);
    }
}
