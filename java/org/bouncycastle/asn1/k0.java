package org.bouncycastle.asn1;

import java.io.IOException;
import java.util.Enumeration;

/* loaded from: classes3.dex */
class k0 extends Csuper {

    /* renamed from: if, reason: not valid java name */
    private byte[] f29104if;

    public k0(byte[] bArr) throws IOException {
        this.f29104if = bArr;
    }

    /* renamed from: import, reason: not valid java name */
    private void m33074import() {
        j0 j0Var = new j0(this.f29104if);
        while (j0Var.hasMoreElements()) {
            this.f29167do.addElement(j0Var.nextElement());
        }
        this.f29104if = null;
    }

    @Override // org.bouncycastle.asn1.Csuper, org.bouncycastle.asn1.Cfinal
    /* renamed from: break */
    public Cfinal mo32798break() {
        if (this.f29104if != null) {
            m33074import();
        }
        return super.mo32798break();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        byte[] bArr = this.f29104if;
        return bArr != null ? m0.m33082do(bArr.length) + 1 + this.f29104if.length : super.mo32798break().mo32748case();
    }

    @Override // org.bouncycastle.asn1.Csuper
    /* renamed from: final, reason: not valid java name */
    public synchronized ASN1Encodable mo33075final(int i) {
        if (this.f29104if != null) {
            m33074import();
        }
        return super.mo33075final(i);
    }

    @Override // org.bouncycastle.asn1.Csuper
    public synchronized int size() {
        if (this.f29104if != null) {
            m33074import();
        }
        return super.size();
    }

    @Override // org.bouncycastle.asn1.Csuper
    /* renamed from: super, reason: not valid java name */
    public synchronized Enumeration mo33076super() {
        byte[] bArr = this.f29104if;
        if (bArr == null) {
            return super.mo33076super();
        }
        return new j0(bArr);
    }

    @Override // org.bouncycastle.asn1.Csuper, org.bouncycastle.asn1.Cfinal
    /* renamed from: this */
    public Cfinal mo32780this() {
        if (this.f29104if != null) {
            m33074import();
        }
        return super.mo32780this();
    }

    @Override // org.bouncycastle.asn1.Csuper, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        byte[] bArr = this.f29104if;
        if (bArr != null) {
            cconst.m32909this(48, bArr);
        } else {
            super.mo32798break().mo32750try(cconst);
        }
    }
}
