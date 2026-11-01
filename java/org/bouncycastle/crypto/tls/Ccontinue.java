package org.bouncycastle.crypto.tls;

import android.support.v4.ux1;
import android.support.v4.zi0;
import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.crypto.tls.continue, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccontinue implements TlsHandshakeHash {

    /* renamed from: try, reason: not valid java name */
    public static final int f30564try = 4;

    /* renamed from: do, reason: not valid java name */
    public TlsContext f30565do;

    /* renamed from: for, reason: not valid java name */
    private Hashtable f30566for;

    /* renamed from: if, reason: not valid java name */
    private Cstrictfp f30567if;

    /* renamed from: new, reason: not valid java name */
    private Short f30568new;

    public Ccontinue() {
        this.f30567if = new Cstrictfp();
        this.f30566for = new Hashtable();
        this.f30568new = null;
    }

    private Ccontinue(Short sh, Digest digest) {
        this.f30567if = null;
        Hashtable hashtable = new Hashtable();
        this.f30566for = hashtable;
        this.f30568new = sh;
        hashtable.put(sh, digest);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34046do() {
        if (this.f30567if == null || this.f30566for.size() > 4) {
            return;
        }
        Enumeration enumerationElements = this.f30566for.elements();
        while (enumerationElements.hasMoreElements()) {
            this.f30567if.m34356do((Digest) enumerationElements.nextElement());
        }
        this.f30567if = null;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        throw new IllegalStateException("Use fork() to get a definite Digest");
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public Digest forkPRFHash() {
        m34046do();
        if (this.f30567if == null) {
            return l0.m34205public(this.f30568new.shortValue(), (Digest) this.f30566for.get(this.f30568new));
        }
        Digest digestM34214throws = l0.m34214throws(this.f30568new.shortValue());
        this.f30567if.m34356do(digestM34214throws);
        return digestM34214throws;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        throw new IllegalStateException("Use fork() to get a definite Digest");
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        throw new IllegalStateException("Use fork() to get a definite Digest");
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public byte[] getFinalHash(short s) {
        Digest digest = (Digest) this.f30566for.get(ux1.m8695do(s));
        if (digest == null) {
            throw new IllegalStateException("HashAlgorithm." + zi0.m10217if(s) + " is not being tracked");
        }
        Digest digestM34205public = l0.m34205public(s, digest);
        Cstrictfp cstrictfp = this.f30567if;
        if (cstrictfp != null) {
            cstrictfp.m34356do(digestM34205public);
        }
        byte[] bArr = new byte[digestM34205public.getDigestSize()];
        digestM34205public.doFinal(bArr, 0);
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public void m34047if(Short sh) {
        if (this.f30566for.containsKey(sh)) {
            return;
        }
        this.f30566for.put(sh, l0.m34214throws(sh.shortValue()));
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public void init(TlsContext tlsContext) {
        this.f30565do = tlsContext;
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public TlsHandshakeHash notifyPRFDetermined() {
        int iM5024goto = this.f30565do.getSecurityParameters().m5024goto();
        if (iM5024goto == 0) {
            Cthrow cthrow = new Cthrow();
            cthrow.init(this.f30565do);
            this.f30567if.m34356do(cthrow);
            return cthrow.notifyPRFDetermined();
        }
        Short shM8695do = ux1.m8695do(l0.c(iM5024goto));
        this.f30568new = shM8695do;
        m34047if(shM8695do);
        return this;
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        Cstrictfp cstrictfp = this.f30567if;
        if (cstrictfp != null) {
            cstrictfp.reset();
            return;
        }
        Enumeration enumerationElements = this.f30566for.elements();
        while (enumerationElements.hasMoreElements()) {
            ((Digest) enumerationElements.nextElement()).reset();
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public void sealHashAlgorithms() {
        m34046do();
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public TlsHandshakeHash stopTracking() {
        Digest digestM34205public = l0.m34205public(this.f30568new.shortValue(), (Digest) this.f30566for.get(this.f30568new));
        Cstrictfp cstrictfp = this.f30567if;
        if (cstrictfp != null) {
            cstrictfp.m34356do(digestM34205public);
        }
        Ccontinue ccontinue = new Ccontinue(this.f30568new, digestM34205public);
        ccontinue.init(this.f30565do);
        return ccontinue;
    }

    @Override // org.bouncycastle.crypto.tls.TlsHandshakeHash
    public void trackHashAlgorithm(short s) {
        if (this.f30567if == null) {
            throw new IllegalStateException("Too late to track more hash algorithms");
        }
        m34047if(ux1.m8695do(s));
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) {
        Cstrictfp cstrictfp = this.f30567if;
        if (cstrictfp != null) {
            cstrictfp.write(b);
            return;
        }
        Enumeration enumerationElements = this.f30566for.elements();
        while (enumerationElements.hasMoreElements()) {
            ((Digest) enumerationElements.nextElement()).update(b);
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) {
        Cstrictfp cstrictfp = this.f30567if;
        if (cstrictfp != null) {
            cstrictfp.write(bArr, i, i2);
            return;
        }
        Enumeration enumerationElements = this.f30566for.elements();
        while (enumerationElements.hasMoreElements()) {
            ((Digest) enumerationElements.nextElement()).update(bArr, i, i2);
        }
    }
}
