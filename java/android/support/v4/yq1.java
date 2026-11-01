package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class yq1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f8320do;

    /* renamed from: if, reason: not valid java name */
    private final b1 f8321if;

    public yq1(b1 b1Var) {
        this.f8320do = new Cgoto(0L);
        this.f8321if = b1Var;
    }

    private yq1(Csuper csuper) {
        this.f8320do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f8321if = b1.m418try(csuper.mo33075final(1));
    }

    /* renamed from: new, reason: not valid java name */
    public static final yq1 m9929new(Object obj) {
        if (obj instanceof yq1) {
            return (yq1) obj;
        }
        if (obj != null) {
            return new yq1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f8320do);
        cimport.m3516do(this.f8321if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m9930try() {
        return this.f8321if;
    }
}
