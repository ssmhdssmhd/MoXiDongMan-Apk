package org.bouncycastle.asn1.est;

import android.support.v4.l4;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;

/* renamed from: org.bouncycastle.asn1.est.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final l4[] f29061do;

    public Cdo(l4 l4Var) {
        this.f29061do = new l4[]{l4Var};
    }

    private Cdo(Csuper csuper) {
        this.f29061do = new l4[csuper.size()];
        for (int i = 0; i != csuper.size(); i++) {
            this.f29061do[i] = l4.m4584try(csuper.mo33075final(i));
        }
    }

    public Cdo(l4[] l4VarArr) {
        this.f29061do = Cif.m33011do(l4VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cdo m33008case(Cimport cimport, boolean z) {
        return m33009try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m33009try(Object obj) {
        if (obj instanceof Cdo) {
            return (Cdo) obj;
        }
        if (obj != null) {
            return new Cdo(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public l4[] m33010new() {
        return Cif.m33011do(this.f29061do);
    }

    public int size() {
        return this.f29061do.length;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new n(this.f29061do);
    }
}
