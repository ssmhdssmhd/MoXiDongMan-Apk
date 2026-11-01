package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class wx1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f7715do;

    private wx1(Csuper csuper) {
        this.f7715do = csuper;
    }

    public wx1(vx1[] vx1VarArr) {
        Cimport cimport = new Cimport();
        for (vx1 vx1Var : vx1VarArr) {
            cimport.m3516do(vx1Var);
        }
        this.f7715do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public static wx1 m9299try(Object obj) {
        if (obj instanceof wx1) {
            return (wx1) obj;
        }
        if (obj instanceof Csuper) {
            return new wx1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public vx1 m9300new(int i) {
        return vx1.m8995new(this.f7715do.mo33075final(i));
    }

    public int size() {
        return this.f7715do.size();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7715do;
    }
}
