package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cdo;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class ag extends Cbreak implements ASN1Choice {

    /* renamed from: break, reason: not valid java name */
    public static final int f157break = 6;

    /* renamed from: case, reason: not valid java name */
    public static final int f158case = 2;

    /* renamed from: catch, reason: not valid java name */
    public static final int f159catch = 7;

    /* renamed from: class, reason: not valid java name */
    public static final int f160class = 8;

    /* renamed from: const, reason: not valid java name */
    private static final boolean[] f161const = {false, true, false, true, false, true, false, false, true};

    /* renamed from: else, reason: not valid java name */
    public static final int f162else = 3;

    /* renamed from: goto, reason: not valid java name */
    public static final int f163goto = 4;

    /* renamed from: new, reason: not valid java name */
    public static final int f164new = 0;

    /* renamed from: this, reason: not valid java name */
    public static final int f165this = 5;

    /* renamed from: try, reason: not valid java name */
    public static final int f166try = 1;

    /* renamed from: do, reason: not valid java name */
    private int f167do;

    /* renamed from: for, reason: not valid java name */
    private Cif f168for;

    /* renamed from: if, reason: not valid java name */
    private ASN1Encodable f169if;

    public ag(int i, ASN1Encodable aSN1Encodable) {
        this.f167do = i;
        this.f169if = aSN1Encodable;
    }

    private ag(Cimport cimport) {
        ASN1Encodable aSN1EncodableM6955case;
        int tagNo = cimport.getTagNo();
        this.f167do = tagNo;
        switch (tagNo) {
            case 0:
                aSN1EncodableM6955case = rg.m6955case(cimport, false);
                break;
            case 1:
                aSN1EncodableM6955case = n50.m5089try(cimport.m33065const());
                break;
            case 2:
                aSN1EncodableM6955case = xa1.m9443case(cimport, false);
                break;
            case 3:
                aSN1EncodableM6955case = fr.m2388case(cimport.m33065const());
                break;
            case 4:
                aSN1EncodableM6955case = Cdo.m33208try(cimport, false);
                break;
            case 5:
                aSN1EncodableM6955case = mg.m4925new(cimport.m33065const());
                break;
            case 6:
                aSN1EncodableM6955case = cg.m903case(cimport, false);
                break;
            case 7:
                aSN1EncodableM6955case = j51.m3728try(cimport, false);
                break;
            case 8:
                aSN1EncodableM6955case = mq1.m4982try(cimport.m33065const());
                break;
            default:
                throw new IllegalArgumentException("Unknown tag: " + this.f167do);
        }
        this.f169if = aSN1EncodableM6955case;
    }

    public ag(Cif cif) {
        this.f167do = -1;
        this.f168for = cif;
    }

    /* renamed from: case, reason: not valid java name */
    public static ag m238case(Object obj) {
        if (obj instanceof ag) {
            return (ag) obj;
        }
        if (obj instanceof Cimport) {
            return new ag((Cimport) obj);
        }
        if (obj != null) {
            return new ag(Cif.m33244else(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static ag[] m239new(Csuper csuper) {
        int size = csuper.size();
        ag[] agVarArr = new ag[size];
        for (int i = 0; i != size; i++) {
            agVarArr[i] = m238case(csuper.mo33075final(i));
        }
        return agVarArr;
    }

    /* renamed from: else, reason: not valid java name */
    public ASN1Encodable m240else() {
        return this.f169if;
    }

    public int getTagNo() {
        return this.f167do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cif cif = this.f168for;
        if (cif != null) {
            return cif.toASN1Primitive();
        }
        boolean[] zArr = f161const;
        int i = this.f167do;
        return new org.bouncycastle.asn1.u(zArr[i], i, this.f169if);
    }

    public String toString() {
        return "CertEtcToken {\n" + this.f169if + "}\n";
    }

    /* renamed from: try, reason: not valid java name */
    public Cif m241try() {
        return this.f168for;
    }
}
