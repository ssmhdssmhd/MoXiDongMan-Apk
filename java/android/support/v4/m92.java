package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class m92 extends Cbreak implements ASN1Choice {

    /* renamed from: for, reason: not valid java name */
    public static final int f3862for = 1;

    /* renamed from: if, reason: not valid java name */
    public static final int f3863if = 0;

    /* renamed from: do, reason: not valid java name */
    public ASN1Encodable f3864do;

    public m92(int i) {
        if (i == 0 || i == 1) {
            this.f3864do = new Cgoto(i);
            return;
        }
        throw new IllegalArgumentException("unknow PredefinedBiometricType : " + i);
    }

    public m92(Ccatch ccatch) {
        this.f3864do = ccatch;
    }

    /* renamed from: try, reason: not valid java name */
    public static m92 m4873try(Object obj) {
        if (obj == null || (obj instanceof m92)) {
            return (m92) obj;
        }
        if (obj instanceof Cgoto) {
            return new m92(Cgoto.m33040catch(obj).m33044final().intValue());
        }
        if (obj instanceof Ccatch) {
            return new m92(Ccatch.m32790throw(obj));
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    /* renamed from: case, reason: not valid java name */
    public int m4874case() {
        return ((Cgoto) this.f3864do).m33044final().intValue();
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m4875else() {
        return this.f3864do instanceof Cgoto;
    }

    /* renamed from: new, reason: not valid java name */
    public Ccatch m4876new() {
        return (Ccatch) this.f3864do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f3864do.toASN1Primitive();
    }
}
