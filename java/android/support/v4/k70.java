package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class k70 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private b80 f3320do;

    /* renamed from: if, reason: not valid java name */
    private q70 f3321if;

    public k70(b80 b80Var) {
        this.f3320do = b80Var;
    }

    public k70(q70 q70Var) {
        this.f3321if = q70Var;
    }

    /* renamed from: new, reason: not valid java name */
    public static k70 m4278new(Object obj) {
        return obj instanceof k70 ? (k70) obj : obj instanceof Cimport ? new k70(b80.m465else((Cimport) obj, false)) : obj instanceof q70 ? new k70((q70) obj) : new k70(q70.m6423else(obj));
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m4279case() {
        return this.f3321if != null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        q70 q70Var = this.f3321if;
        return q70Var != null ? q70Var.toASN1Primitive() : new org.bouncycastle.asn1.u(false, 0, this.f3320do);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m4280try() {
        q70 q70Var = this.f3321if;
        return q70Var != null ? q70Var : this.f3320do;
    }
}
