package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes3.dex */
public class j extends Cclass {
    public j(ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER));
    }

    public j(byte[] bArr) {
        super(bArr);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m33072super(l lVar, byte[] bArr) throws IOException {
        lVar.m32909this(4, bArr);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f28915do.length) + 1 + this.f28915do.length;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cclass, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(4, this.f28915do);
    }
}
