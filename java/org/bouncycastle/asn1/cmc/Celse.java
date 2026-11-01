package org.bouncycastle.asn1.cmc;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.x509.Cif;

/* renamed from: org.bouncycastle.asn1.cmc.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cif[] f28926do;

    private Celse(Csuper csuper) {
        this.f28926do = new Cif[csuper.size()];
        for (int i = 0; i != csuper.size(); i++) {
            this.f28926do[i] = Cif.m33244else(csuper.mo33075final(i));
        }
    }

    public Celse(Cif cif) {
        this.f28926do = new Cif[]{cif};
    }

    public Celse(Cif[] cifArr) {
        this.f28926do = Cgoto.m32835if(cifArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static Celse m32821case(Cimport cimport, boolean z) {
        return m32822try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static Celse m32822try(Object obj) {
        if (obj instanceof Celse) {
            return (Celse) obj;
        }
        if (obj != null) {
            return new Celse(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Cif[] m32823new() {
        return Cgoto.m32835if(this.f28926do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new n(this.f28926do);
    }
}
