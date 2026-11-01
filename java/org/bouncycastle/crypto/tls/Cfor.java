package org.bouncycastle.crypto.tls;

import android.support.v4.h72;
import android.support.v4.mw1;
import android.support.v4.y00;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.prng.RandomGenerator;

/* renamed from: org.bouncycastle.crypto.tls.for, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Cfor implements TlsContext {

    /* renamed from: goto, reason: not valid java name */
    private static long f30594goto = h72.m2963do();

    /* renamed from: do, reason: not valid java name */
    private RandomGenerator f30596do;

    /* renamed from: for, reason: not valid java name */
    private mw1 f30598for;

    /* renamed from: if, reason: not valid java name */
    private SecureRandom f30599if;

    /* renamed from: new, reason: not valid java name */
    private a f30600new = null;

    /* renamed from: try, reason: not valid java name */
    private a f30601try = null;

    /* renamed from: case, reason: not valid java name */
    private TlsSession f30595case = null;

    /* renamed from: else, reason: not valid java name */
    private Object f30597else = null;

    public Cfor(SecureRandom secureRandom, mw1 mw1Var) {
        Digest digestM34214throws = l0.m34214throws((short) 4);
        byte[] bArr = new byte[digestM34214throws.getDigestSize()];
        secureRandom.nextBytes(bArr);
        y00 y00Var = new y00(digestM34214throws);
        this.f30596do = y00Var;
        y00Var.addSeedMaterial(m34105do());
        this.f30596do.addSeedMaterial(h72.m2963do());
        this.f30596do.addSeedMaterial(bArr);
        this.f30599if = secureRandom;
        this.f30598for = mw1Var;
    }

    /* renamed from: do, reason: not valid java name */
    private static synchronized long m34105do() {
        long j;
        j = f30594goto + 1;
        f30594goto = j;
        return j;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public byte[] exportKeyingMaterial(String str, byte[] bArr, int i) {
        if (bArr != null && !l0.z(bArr.length)) {
            throw new IllegalArgumentException("'context_value' must have length less than 2^16 (or be null)");
        }
        mw1 securityParameters = getSecurityParameters();
        if (!securityParameters.m5022final()) {
            throw new IllegalStateException("cannot export keying material without extended_master_secret");
        }
        byte[] bArrM5023for = securityParameters.m5023for();
        byte[] bArrM5017catch = securityParameters.m5017catch();
        int length = bArrM5023for.length + bArrM5017catch.length;
        if (bArr != null) {
            length += bArr.length + 2;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArrM5023for, 0, bArr2, 0, bArrM5023for.length);
        int length2 = bArrM5023for.length + 0;
        System.arraycopy(bArrM5017catch, 0, bArr2, length2, bArrM5017catch.length);
        int length3 = length2 + bArrM5017catch.length;
        if (bArr != null) {
            l0.s0(bArr.length, bArr2, length3);
            int i2 = length3 + 2;
            System.arraycopy(bArr, 0, bArr2, i2, bArr.length);
            length3 = i2 + bArr.length;
        }
        if (length3 == length) {
            return l0.m34188do(this, securityParameters.m5016case(), str, bArr2, i);
        }
        throw new IllegalStateException("error in calculation of seed for export");
    }

    /* renamed from: for, reason: not valid java name */
    public void m34106for(TlsSession tlsSession) {
        this.f30595case = tlsSession;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public a getClientVersion() {
        return this.f30600new;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public RandomGenerator getNonceRandomGenerator() {
        return this.f30596do;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public TlsSession getResumableSession() {
        return this.f30595case;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public SecureRandom getSecureRandom() {
        return this.f30599if;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public mw1 getSecurityParameters() {
        return this.f30598for;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public a getServerVersion() {
        return this.f30601try;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public Object getUserObject() {
        return this.f30597else;
    }

    /* renamed from: if, reason: not valid java name */
    public void m34107if(a aVar) {
        this.f30600new = aVar;
    }

    /* renamed from: new, reason: not valid java name */
    public void m34108new(a aVar) {
        this.f30601try = aVar;
    }

    @Override // org.bouncycastle.crypto.tls.TlsContext
    public void setUserObject(Object obj) {
        this.f30597else = obj;
    }
}
