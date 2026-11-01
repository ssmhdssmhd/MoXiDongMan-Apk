package org.bouncycastle.asn1;

import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.instanceof, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cinstanceof extends Cif {
    public Cinstanceof(byte b, int i) {
        this(m33070static(b), i);
    }

    public Cinstanceof(int i) {
        super(Cif.m33055final(i), Cif.m33056while(i));
    }

    public Cinstanceof(ASN1Encodable aSN1Encodable) throws IOException {
        super(aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER), 0);
    }

    public Cinstanceof(byte[] bArr) {
        this(bArr, 0);
    }

    public Cinstanceof(byte[] bArr, int i) {
        super(bArr, i);
    }

    /* renamed from: native, reason: not valid java name */
    public static Cinstanceof m33067native(byte[] bArr) {
        if (bArr.length < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        byte b = bArr[0];
        int length = bArr.length - 1;
        byte[] bArr2 = new byte[length];
        if (length != 0) {
            System.arraycopy(bArr, 1, bArr2, 0, bArr.length - 1);
        }
        return new Cinstanceof(bArr2, b);
    }

    /* renamed from: public, reason: not valid java name */
    public static Cinstanceof m33068public(Object obj) {
        if (obj == null || (obj instanceof Cinstanceof)) {
            return (Cinstanceof) obj;
        }
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            return new Cinstanceof(a0Var.f29091do, a0Var.f29092if);
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Cinstanceof) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static Cinstanceof m33069return(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Cinstanceof)) ? m33068public(cfinalM33065const) : m33067native(((Cclass) cfinalM33065const).mo5490const());
    }

    /* renamed from: static, reason: not valid java name */
    private static byte[] m33070static(byte b) {
        return new byte[]{b};
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29091do.length + 1) + 1 + this.f29091do.length + 1;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cif, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        byte[] bArrM33053catch = Cif.m33053catch(this.f29091do, this.f29092if);
        int length = bArrM33053catch.length + 1;
        byte[] bArr = new byte[length];
        bArr[0] = (byte) m33060throw();
        System.arraycopy(bArrM33053catch, 0, bArr, 1, length - 1);
        cconst.m32909this(3, bArr);
    }
}
