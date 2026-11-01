package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;

/* loaded from: classes3.dex */
public class s42 extends Cbreak implements ASN1Choice {

    /* renamed from: for, reason: not valid java name */
    public static final int f6009for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f6010new = 1;

    /* renamed from: do, reason: not valid java name */
    private tg0 f6011do;

    /* renamed from: if, reason: not valid java name */
    private tg0 f6012if;

    public s42(int i, tg0 tg0Var) {
        this(new org.bouncycastle.asn1.u(i, tg0Var));
    }

    private s42(Cimport cimport) {
        int tagNo = cimport.getTagNo();
        if (tagNo == 0) {
            this.f6011do = tg0.m7871case(cimport, true);
        } else {
            if (tagNo == 1) {
                this.f6012if = tg0.m7871case(cimport, true);
                return;
            }
            throw new IllegalArgumentException("unknown tag: " + cimport.getTagNo());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static s42 m7263new(Object obj) {
        if (obj == null || (obj instanceof s42)) {
            return (s42) obj;
        }
        if (obj instanceof Cimport) {
            return new s42((Cimport) obj);
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass());
    }

    /* renamed from: case, reason: not valid java name */
    public tg0 m7264case() {
        return this.f6011do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6011do != null ? new org.bouncycastle.asn1.u(true, 0, this.f6011do) : new org.bouncycastle.asn1.u(true, 1, this.f6012if);
    }

    /* renamed from: try, reason: not valid java name */
    public tg0 m7265try() {
        return this.f6012if;
    }
}
