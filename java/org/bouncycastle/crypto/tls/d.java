package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.s72;
import android.support.v4.vl;
import android.support.v4.z0;
import java.io.IOException;
import java.util.Hashtable;

/* loaded from: classes3.dex */
public class d extends Ccase {

    /* renamed from: native, reason: not valid java name */
    public TlsSRPIdentityManager f30569native;

    /* renamed from: public, reason: not valid java name */
    public byte[] f30570public;

    /* renamed from: return, reason: not valid java name */
    public s72 f30571return;

    public d(TlsCipherFactory tlsCipherFactory, TlsSRPIdentityManager tlsSRPIdentityManager) {
        super(tlsCipherFactory);
        this.f30570public = null;
        this.f30571return = null;
        this.f30569native = tlsSRPIdentityManager;
    }

    public d(TlsSRPIdentityManager tlsSRPIdentityManager) {
        this(new Cextends(), tlsSRPIdentityManager);
    }

    /* renamed from: else, reason: not valid java name */
    public TlsKeyExchange m34048else(int i) {
        return new e0(i, this.f30539break, this.f30570public, this.f30571return);
    }

    @Override // org.bouncycastle.crypto.tls.Ccase
    public int[] getCipherSuites() {
        return new int[]{vl.B0, vl.y0, vl.A0, vl.x0, vl.z0, vl.w0};
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public TlsCredentials getCredentials() throws IOException {
        switch (l0.d(this.f30554throw)) {
            case 21:
                return null;
            case 22:
                return m34049goto();
            case 23:
                return m34050this();
            default:
                throw new n72((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsServer
    public TlsKeyExchange getKeyExchange() throws IOException {
        int iD = l0.d(this.f30554throw);
        switch (iD) {
            case 21:
            case 22:
            case 23:
                return m34048else(iD);
            default:
                throw new n72((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Ccase, org.bouncycastle.crypto.tls.TlsServer
    public int getSelectedCipherSuite() throws IOException {
        int selectedCipherSuite = super.getSelectedCipherSuite();
        if (f0.m34093new(selectedCipherSuite)) {
            byte[] bArr = this.f30570public;
            if (bArr != null) {
                this.f30571return = this.f30569native.getLoginParameters(bArr);
            }
            if (this.f30571return == null) {
                throw new n72(z0.f8381abstract);
            }
        }
        return selectedCipherSuite;
    }

    /* renamed from: goto, reason: not valid java name */
    public TlsSignerCredentials m34049goto() throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.Ccase, org.bouncycastle.crypto.tls.TlsServer
    public void processClientExtensions(Hashtable hashtable) throws IOException {
        super.processClientExtensions(hashtable);
        this.f30570public = f0.m34091for(hashtable);
    }

    /* renamed from: this, reason: not valid java name */
    public TlsSignerCredentials m34050this() throws IOException {
        throw new n72((short) 80);
    }
}
