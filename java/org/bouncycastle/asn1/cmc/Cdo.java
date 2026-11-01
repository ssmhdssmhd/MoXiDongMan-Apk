package org.bouncycastle.asn1.cmc;

import android.support.v4.ta;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;

/* renamed from: org.bouncycastle.asn1.cmc.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta[] f28925do;

    public Cdo(ta taVar) {
        this.f28925do = new ta[]{taVar};
    }

    private Cdo(Csuper csuper) {
        this.f28925do = Cgoto.m32834for(csuper);
    }

    public Cdo(ta[] taVarArr) {
        this.f28925do = Cgoto.m32833do(taVarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cdo m32818case(Cimport cimport, boolean z) {
        return m32819try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m32819try(Object obj) {
        if (obj instanceof Cdo) {
            return (Cdo) obj;
        }
        if (obj != null) {
            return new Cdo(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public ta[] m32820new() {
        return Cgoto.m32833do(this.f28925do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new n(this.f28925do);
    }
}
