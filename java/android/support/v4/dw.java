package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class dw extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    private static final int f1139break = 1;

    /* renamed from: catch, reason: not valid java name */
    private static final int f1140catch = 0;

    /* renamed from: class, reason: not valid java name */
    private static final int f1141class = 1;

    /* renamed from: const, reason: not valid java name */
    private static final int f1142const = 2;

    /* renamed from: final, reason: not valid java name */
    private static final int f1143final = 3;

    /* renamed from: super, reason: not valid java name */
    private static final int f1144super = 4;

    /* renamed from: case, reason: not valid java name */
    private fe1 f1145case;

    /* renamed from: do, reason: not valid java name */
    private int f1146do;

    /* renamed from: else, reason: not valid java name */
    private ug0 f1147else;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f1148for;

    /* renamed from: goto, reason: not valid java name */
    private ug0 f1149goto;

    /* renamed from: if, reason: not valid java name */
    private hx1 f1150if;

    /* renamed from: new, reason: not valid java name */
    private gw f1151new;

    /* renamed from: this, reason: not valid java name */
    private y90 f1152this;

    /* renamed from: try, reason: not valid java name */
    private ug0 f1153try;

    private dw(Csuper csuper) {
        int i;
        this.f1146do = 1;
        if (csuper.mo33075final(0) instanceof Cgoto) {
            this.f1146do = Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().intValue();
            i = 1;
        } else {
            this.f1146do = 1;
            i = 0;
        }
        this.f1150if = hx1.m3153new(csuper.mo33075final(i));
        for (int i2 = i + 1; i2 < csuper.size(); i2++) {
            ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(i2);
            if (aSN1EncodableMo33075final instanceof Cgoto) {
                this.f1148for = Cgoto.m33040catch(aSN1EncodableMo33075final).m33044final();
            } else if (!(aSN1EncodableMo33075final instanceof Ccase) && (aSN1EncodableMo33075final instanceof Cimport)) {
                Cimport cimportM33063catch = Cimport.m33063catch(aSN1EncodableMo33075final);
                int tagNo = cimportM33063catch.getTagNo();
                if (tagNo == 0) {
                    this.f1153try = ug0.m8437else(cimportM33063catch, false);
                } else if (tagNo == 1) {
                    this.f1145case = fe1.m2258new(Csuper.m33130class(cimportM33063catch, false));
                } else if (tagNo == 2) {
                    this.f1147else = ug0.m8437else(cimportM33063catch, false);
                } else if (tagNo == 3) {
                    this.f1149goto = ug0.m8437else(cimportM33063catch, false);
                } else {
                    if (tagNo != 4) {
                        throw new IllegalArgumentException("unknown tag number encountered: " + tagNo);
                    }
                    this.f1152this = y90.m9783catch(cimportM33063catch, false);
                }
            } else {
                this.f1151new = gw.m2791try(aSN1EncodableMo33075final);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static dw m1551else(Object obj) {
        if (obj instanceof dw) {
            return (dw) obj;
        }
        if (obj != null) {
            return new dw(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static dw m1552goto(Cimport cimport, boolean z) {
        return m1551else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public fe1 m1553break() {
        return this.f1145case;
    }

    /* renamed from: case, reason: not valid java name */
    public y90 m1554case() {
        return this.f1152this;
    }

    /* renamed from: catch, reason: not valid java name */
    public gw m1555catch() {
        return this.f1151new;
    }

    /* renamed from: class, reason: not valid java name */
    public ug0 m1556class() {
        return this.f1153try;
    }

    /* renamed from: const, reason: not valid java name */
    public hx1 m1557const() {
        return this.f1150if;
    }

    /* renamed from: final, reason: not valid java name */
    public int m1558final() {
        return this.f1146do;
    }

    /* renamed from: new, reason: not valid java name */
    public ug0 m1559new() {
        return this.f1147else;
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m1560this() {
        return this.f1148for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        int i = this.f1146do;
        if (i != 1) {
            cimport.m3516do(new Cgoto(i));
        }
        cimport.m3516do(this.f1150if);
        BigInteger bigInteger = this.f1148for;
        if (bigInteger != null) {
            cimport.m3516do(new Cgoto(bigInteger));
        }
        gw gwVar = this.f1151new;
        if (gwVar != null) {
            cimport.m3516do(gwVar);
        }
        int[] iArr = {0, 1, 2, 3, 4};
        ASN1Encodable[] aSN1EncodableArr = {this.f1153try, this.f1145case, this.f1147else, this.f1149goto, this.f1152this};
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            ASN1Encodable aSN1Encodable = aSN1EncodableArr[i2];
            if (aSN1Encodable != null) {
                cimport.m3516do(new org.bouncycastle.asn1.u(false, i3, aSN1Encodable));
            }
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DVCSRequestInformation {\n");
        if (this.f1146do != 1) {
            stringBuffer.append("version: " + this.f1146do + "\n");
        }
        stringBuffer.append("service: " + this.f1150if + "\n");
        if (this.f1148for != null) {
            stringBuffer.append("nonce: " + this.f1148for + "\n");
        }
        if (this.f1151new != null) {
            stringBuffer.append("requestTime: " + this.f1151new + "\n");
        }
        if (this.f1153try != null) {
            stringBuffer.append("requester: " + this.f1153try + "\n");
        }
        if (this.f1145case != null) {
            stringBuffer.append("requestPolicy: " + this.f1145case + "\n");
        }
        if (this.f1147else != null) {
            stringBuffer.append("dvcs: " + this.f1147else + "\n");
        }
        if (this.f1149goto != null) {
            stringBuffer.append("dataLocations: " + this.f1149goto + "\n");
        }
        if (this.f1152this != null) {
            stringBuffer.append("extensions: " + this.f1152this + "\n");
        }
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public ug0 m1561try() {
        return this.f1149goto;
    }
}
