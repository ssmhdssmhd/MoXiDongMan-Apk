package org.bouncycastle.asn1.cmc;

import android.support.v4.ta;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;

/* renamed from: org.bouncycastle.asn1.cmc.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final ta[] f28933do;

    public Cif(ta taVar) {
        this.f28933do = new ta[]{taVar};
    }

    private Cif(Csuper csuper) {
        this.f28933do = Cgoto.m32834for(csuper);
    }

    public Cif(ta[] taVarArr) {
        this.f28933do = Cgoto.m32833do(taVarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cif m32836case(Cimport cimport, boolean z) {
        return m32837try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static Cif m32837try(Object obj) {
        if (obj instanceof Cif) {
            return (Cif) obj;
        }
        if (obj != null) {
            return new Cif(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public ta[] m32838new() {
        return Cgoto.m32833do(this.f28933do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new n(this.f28933do);
    }
}
