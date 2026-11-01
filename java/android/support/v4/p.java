package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class p extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f4810case = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f4811else = 999;

    /* renamed from: new, reason: not valid java name */
    public static final int f4812new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f4813try = 999;

    /* renamed from: do, reason: not valid java name */
    public Cgoto f4814do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f4815for;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f4816if;

    public p() {
    }

    public p(Cgoto cgoto, Cgoto cgoto2, Cgoto cgoto3) {
        this.f4814do = cgoto;
        if (cgoto2 != null && (cgoto2.m33044final().intValue() < 1 || cgoto2.m33044final().intValue() > 999)) {
            throw new IllegalArgumentException("Invalid millis field : not in (1..999)");
        }
        this.f4816if = cgoto2;
        if (cgoto3 != null && (cgoto3.m33044final().intValue() < 1 || cgoto3.m33044final().intValue() > 999)) {
            throw new IllegalArgumentException("Invalid micros field : not in (1..999)");
        }
        this.f4815for = cgoto3;
    }

    private p(Csuper csuper) {
        this.f4814do = null;
        this.f4816if = null;
        this.f4815for = null;
        for (int i = 0; i < csuper.size(); i++) {
            if (csuper.mo33075final(i) instanceof Cgoto) {
                this.f4814do = (Cgoto) csuper.mo33075final(i);
            } else if (csuper.mo33075final(i) instanceof Cimport) {
                Cimport cimport = (Cimport) csuper.mo33075final(i);
                int tagNo = cimport.getTagNo();
                if (tagNo == 0) {
                    Cgoto cgotoM33041class = Cgoto.m33041class(cimport, false);
                    this.f4816if = cgotoM33041class;
                    if (cgotoM33041class.m33044final().intValue() < 1 || this.f4816if.m33044final().intValue() > 999) {
                        throw new IllegalArgumentException("Invalid millis field : not in (1..999).");
                    }
                } else {
                    if (tagNo != 1) {
                        throw new IllegalArgumentException("Invalig tag number");
                    }
                    Cgoto cgotoM33041class2 = Cgoto.m33041class(cimport, false);
                    this.f4815for = cgotoM33041class2;
                    if (cgotoM33041class2.m33044final().intValue() < 1 || this.f4815for.m33044final().intValue() > 999) {
                        throw new IllegalArgumentException("Invalid micros field : not in (1..999).");
                    }
                }
            } else {
                continue;
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static p m5823new(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cgoto m5824case() {
        return this.f4816if;
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m5825else() {
        return this.f4814do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Cgoto cgoto = this.f4814do;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        if (this.f4816if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f4816if));
        }
        if (this.f4815for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f4815for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto m5826try() {
        return this.f4815for;
    }
}
