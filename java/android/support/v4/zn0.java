package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class zn0 extends Cbreak implements ASN1Choice {

    /* renamed from: new, reason: not valid java name */
    public ASN1Encodable f8618new;

    /* renamed from: try, reason: not valid java name */
    public int f8619try;

    /* renamed from: do, reason: not valid java name */
    public final int f8615do = 3;

    /* renamed from: if, reason: not valid java name */
    public final int f8617if = 1;

    /* renamed from: for, reason: not valid java name */
    public final int f8616for = 999;

    public zn0(int i) {
        if (i > 999 || i < 1) {
            throw new IllegalArgumentException("wrong size in numeric code : not in (1..999)");
        }
        this.f8618new = new Cgoto(i);
    }

    public zn0(String str) {
        if (str.length() > 3) {
            throw new IllegalArgumentException("wrong size in alphabetic code : max size is 3");
        }
        this.f8618new = new org.bouncycastle.asn1.m(str);
    }

    /* renamed from: try, reason: not valid java name */
    public static zn0 m10250try(Object obj) {
        if (obj == null || (obj instanceof zn0)) {
            return (zn0) obj;
        }
        if (obj instanceof Cgoto) {
            return new zn0(Cgoto.m33040catch(obj).m33044final().intValue());
        }
        if (obj instanceof org.bouncycastle.asn1.m) {
            return new zn0(org.bouncycastle.asn1.m.m33078catch(obj).getString());
        }
        throw new IllegalArgumentException("unknown object in getInstance");
    }

    /* renamed from: case, reason: not valid java name */
    public int m10251case() {
        return ((Cgoto) this.f8618new).m33044final().intValue();
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m10252else() {
        return this.f8618new instanceof org.bouncycastle.asn1.m;
    }

    /* renamed from: new, reason: not valid java name */
    public String m10253new() {
        return ((org.bouncycastle.asn1.m) this.f8618new).getString();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f8618new.toASN1Primitive();
    }
}
