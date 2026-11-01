package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class l70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final b1 f3555do;

    /* renamed from: if, reason: not valid java name */
    private final Cclass f3556if;

    public l70(b1 b1Var, byte[] bArr) {
        this.f3555do = b1Var;
        this.f3556if = new org.bouncycastle.asn1.j(bArr);
    }

    private l70(Csuper csuper) {
        this.f3555do = b1.m418try(csuper.mo33075final(0));
        this.f3556if = Cclass.m32796catch(csuper.mo33075final(1));
    }

    /* renamed from: case, reason: not valid java name */
    public static l70 m4605case(Object obj) {
        if (obj instanceof l70) {
            return (l70) obj;
        }
        if (obj != null) {
            return new l70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Cclass m4606new() {
        return this.f3556if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3555do);
        cimport.m3516do(this.f3556if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m4607try() {
        return this.f3555do;
    }
}
