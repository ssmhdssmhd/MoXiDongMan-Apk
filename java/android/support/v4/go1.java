package android.support.v4;

import org.bouncycastle.asn1.x509.Cdo;

/* loaded from: classes3.dex */
public class go1 {

    /* renamed from: do, reason: not valid java name */
    private Cimport f2179do = new Cimport();

    /* renamed from: if, reason: not valid java name */
    private Cimport f2181if = new Cimport();

    /* renamed from: for, reason: not valid java name */
    private Cimport f2180for = new Cimport();

    /* renamed from: do, reason: not valid java name */
    public go1 m2749do(xa1 xa1Var) {
        this.f2179do.m3516do(xa1Var);
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public go1 m2750for(Cdo cdo) {
        this.f2180for.m3516do(cdo);
        return this;
    }

    /* renamed from: if, reason: not valid java name */
    public go1 m2751if(xa1 xa1Var, dg dgVar) {
        if (this.f2179do.m3519new() != this.f2181if.m3519new()) {
            throw new IllegalStateException("status and revCerts sequence must be in common order");
        }
        this.f2179do.m3516do(xa1Var);
        this.f2181if.m3516do(dgVar);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public fo1 m2752new() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new org.bouncycastle.asn1.n(this.f2179do));
        if (this.f2181if.m3519new() != 0) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, new org.bouncycastle.asn1.n(this.f2181if)));
        }
        if (this.f2180for.m3519new() != 0) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, new org.bouncycastle.asn1.n(this.f2180for)));
        }
        return fo1.m2375case(new org.bouncycastle.asn1.n(cimport));
    }
}
