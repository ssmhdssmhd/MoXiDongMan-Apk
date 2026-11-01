package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class qr extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Csuper f5516do;

    public qr(ua uaVar) {
        this.f5516do = new org.bouncycastle.asn1.n(uaVar);
    }

    private qr(Csuper csuper) {
        if (csuper.size() != 1) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f5516do = Csuper.m33129catch(csuper.mo33075final(0));
    }

    public qr(ua[] uaVarArr) {
        this.f5516do = new org.bouncycastle.asn1.n(uaVarArr);
    }

    /* renamed from: try, reason: not valid java name */
    public static qr m6657try(Object obj) {
        if (obj instanceof qr) {
            return (qr) obj;
        }
        if (obj != null) {
            return new qr(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public ua[] m6658new() {
        ua[] uaVarArr = new ua[this.f5516do.size()];
        for (int i = 0; i != this.f5516do.size(); i++) {
            uaVarArr[i] = ua.m8310case(this.f5516do.mo33075final(i));
        }
        return uaVarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(this.f5516do);
    }
}
