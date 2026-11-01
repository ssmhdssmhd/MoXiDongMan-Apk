package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes3.dex */
public class a0 extends Cif {
    public a0(byte b, int i) {
        this(m32747static(b), i);
    }

    public a0(int i) {
        super(Cif.m33055final(i), Cif.m33056while(i));
    }

    public a0(ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER), 0);
    }

    public a0(byte[] bArr) {
        this(bArr, 0);
    }

    public a0(byte[] bArr, int i) {
        super(bArr, i);
    }

    /* renamed from: native, reason: not valid java name */
    public static a0 m32744native(byte[] bArr) {
        if (bArr.length < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        byte b = bArr[0];
        int length = bArr.length - 1;
        byte[] bArr2 = new byte[length];
        if (length != 0) {
            System.arraycopy(bArr, 1, bArr2, 0, bArr.length - 1);
        }
        return new a0(bArr2, b);
    }

    /* renamed from: public, reason: not valid java name */
    public static Cif m32745public(Object obj) {
        if (obj == null || (obj instanceof a0)) {
            return (a0) obj;
        }
        if (obj instanceof Cinstanceof) {
            return (Cinstanceof) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Cif) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static Cif m32746return(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof a0)) ? m32745public(cfinalM33065const) : m32744native(((Cclass) cfinalM33065const).mo5490const());
    }

    /* renamed from: static, reason: not valid java name */
    private static byte[] m32747static(byte b) {
        return new byte[]{b};
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case, reason: not valid java name */
    public int mo32748case() {
        return m0.m33082do(this.f29091do.length + 1) + 1 + this.f29091do.length + 1;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto, reason: not valid java name */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cif, org.bouncycastle.asn1.Cfinal
    /* renamed from: try, reason: not valid java name */
    public void mo32750try(Cconst cconst) throws IOException {
        byte[] bArr = this.f29091do;
        int length = bArr.length + 1;
        byte[] bArr2 = new byte[length];
        bArr2[0] = (byte) m33060throw();
        System.arraycopy(bArr, 0, bArr2, 1, length - 1);
        cconst.m32909this(3, bArr2);
    }
}
