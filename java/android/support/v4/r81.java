package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;

/* loaded from: classes3.dex */
public class r81 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private Cclass f5719do;

    /* renamed from: if, reason: not valid java name */
    private s81 f5720if;

    public r81(s81 s81Var) {
        this.f5720if = s81Var;
    }

    private r81(Cclass cclass) {
        this.f5719do = cclass;
    }

    public r81(byte[] bArr) {
        this.f5719do = new org.bouncycastle.asn1.j(bArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static r81 m6846case(Object obj) {
        return obj instanceof r81 ? (r81) obj : obj instanceof Cclass ? new r81((Cclass) obj) : new r81(s81.m7302case(obj));
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m6847new() {
        s81 s81Var = this.f5720if;
        return s81Var == null ? new b1(OIWObjectIdentifiers.idSHA1) : s81Var.m7303new();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        s81 s81Var = this.f5720if;
        return s81Var == null ? this.f5719do : s81Var.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m6848try() {
        s81 s81Var = this.f5720if;
        return (s81Var == null ? this.f5719do : s81Var.m7304try()).mo5490const();
    }
}
