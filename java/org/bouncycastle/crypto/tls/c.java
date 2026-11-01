package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.vl;
import android.support.v4.xy;
import java.io.IOException;
import java.util.Hashtable;

/* loaded from: classes3.dex */
public class c extends Cif {

    /* renamed from: break, reason: not valid java name */
    public byte[] f30536break;

    /* renamed from: catch, reason: not valid java name */
    public byte[] f30537catch;

    /* renamed from: this, reason: not valid java name */
    public TlsSRPGroupVerifier f30538this;

    public c(TlsCipherFactory tlsCipherFactory, TlsSRPGroupVerifier tlsSRPGroupVerifier, byte[] bArr, byte[] bArr2) {
        super(tlsCipherFactory);
        this.f30538this = tlsSRPGroupVerifier;
        this.f30536break = q3.m6371final(bArr);
        this.f30537catch = q3.m6371final(bArr2);
    }

    public c(TlsCipherFactory tlsCipherFactory, byte[] bArr, byte[] bArr2) {
        this(tlsCipherFactory, new xy(), bArr, bArr2);
    }

    public c(byte[] bArr, byte[] bArr2) {
        this(new Cextends(), new xy(), bArr, bArr2);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsAuthentication getAuthentication() throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public int[] getCipherSuites() {
        return new int[]{vl.x0};
    }

    @Override // org.bouncycastle.crypto.tls.Cif, org.bouncycastle.crypto.tls.TlsClient
    public Hashtable getClientExtensions() throws IOException {
        Hashtable hashtableM34410import = v.m34410import(super.getClientExtensions());
        f0.m34089do(hashtableM34410import, this.f30536break);
        return hashtableM34410import;
    }

    @Override // org.bouncycastle.crypto.tls.TlsClient
    public TlsKeyExchange getKeyExchange() throws IOException {
        int iD = l0.d(this.f30632else);
        switch (iD) {
            case 21:
            case 22:
            case 23:
                return m34019new(iD);
            default:
                throw new n72((short) 80);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public TlsKeyExchange m34019new(int i) {
        return new e0(i, this.f30633for, this.f30538this, this.f30536break, this.f30537catch);
    }

    @Override // org.bouncycastle.crypto.tls.Cif, org.bouncycastle.crypto.tls.TlsClient
    public void processServerExtensions(Hashtable hashtable) throws IOException {
        if (!l0.k(hashtable, f0.f30589do, (short) 47) && m34020try()) {
            throw new n72((short) 47);
        }
        super.processServerExtensions(hashtable);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m34020try() {
        return false;
    }
}
