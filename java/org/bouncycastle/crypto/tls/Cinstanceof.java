package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.vl;
import android.support.v4.wy;
import java.io.IOException;

/* renamed from: org.bouncycastle.crypto.tls.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cinstanceof extends Cif {

    /* renamed from: break, reason: not valid java name */
    public TlsPSKIdentity f30644break;

    /* renamed from: this, reason: not valid java name */
    public TlsDHVerifier f30645this;

    public Cinstanceof(TlsCipherFactory tlsCipherFactory, TlsDHVerifier tlsDHVerifier, TlsPSKIdentity tlsPSKIdentity) {
        super(tlsCipherFactory);
        this.f30645this = tlsDHVerifier;
        this.f30644break = tlsPSKIdentity;
    }

    public Cinstanceof(TlsCipherFactory tlsCipherFactory, TlsPSKIdentity tlsPSKIdentity) {
        this(tlsCipherFactory, new wy(), tlsPSKIdentity);
    }

    public Cinstanceof(TlsPSKIdentity tlsPSKIdentity) {
        this(new Cextends(), tlsPSKIdentity);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsAuthentication getAuthentication() throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public int[] getCipherSuites() {
        return new int[]{vl.N1, vl.L1};
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsKeyExchange getKeyExchange() throws IOException {
        int iD = l0.d(this.f30632else);
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
        return m34167new(iD);
    }

    /* renamed from: new, reason: not valid java name */
    public TlsKeyExchange m34167new(int i) {
        return new z(i, this.f30633for, this.f30644break, null, this.f30645this, null, this.f30636new, this.f30637try, this.f30630case);
    }
}
