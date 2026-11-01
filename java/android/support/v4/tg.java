package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class tg extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private rg f6503do;

    /* renamed from: if, reason: not valid java name */
    private rg f6504if;

    public tg(rg rgVar, rg rgVar2) {
        this.f6503do = rgVar;
        this.f6504if = rgVar2;
    }

    private tg(Csuper csuper) {
        if (csuper.size() != 1 && csuper.size() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            if (cimportM33063catch.getTagNo() == 0) {
                this.f6503do = rg.m6955case(cimportM33063catch, true);
            } else {
                if (cimportM33063catch.getTagNo() != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + cimportM33063catch.getTagNo());
                }
                this.f6504if = rg.m6955case(cimportM33063catch, true);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static tg m7867try(Object obj) {
        if (obj == null || (obj instanceof tg)) {
            return (tg) obj;
        }
        if (obj instanceof Csuper) {
            return new tg((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public rg m7868case() {
        return this.f6504if;
    }

    /* renamed from: new, reason: not valid java name */
    public rg m7869new() {
        return this.f6503do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f6503do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f6503do));
        }
        if (this.f6504if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(1, this.f6504if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
