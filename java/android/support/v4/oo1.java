package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class oo1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private ug0 f4706do;

    /* renamed from: if, reason: not valid java name */
    private tg0 f4707if;

    public oo1(tg0 tg0Var) {
        this(null, tg0Var);
    }

    public oo1(ug0 ug0Var, tg0 tg0Var) {
        if (tg0Var == null || tg0Var.getTagNo() != 6 || ((ASN1String) tg0Var.m7878else()).getString().equals("")) {
            throw new IllegalArgumentException("the role name MUST be non empty and MUST use the URI option of GeneralName");
        }
        this.f4706do = ug0Var;
        this.f4707if = tg0Var;
    }

    public oo1(String str) {
        this(new tg0(6, str == null ? "" : str));
    }

    private oo1(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        for (int i = 0; i != csuper.size(); i++) {
            Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(i));
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f4706do = ug0.m8437else(cimportM33063catch, false);
            } else {
                if (tagNo != 1) {
                    throw new IllegalArgumentException("Unknown tag in RoleSyntax");
                }
                this.f4707if = tg0.m7871case(cimportM33063catch, true);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static oo1 m5722new(Object obj) {
        if (obj instanceof oo1) {
            return (oo1) obj;
        }
        if (obj != null) {
            return new oo1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public String[] m5723case() {
        ug0 ug0Var = this.f4706do;
        if (ug0Var == null) {
            return new String[0];
        }
        tg0[] tg0VarArrM8440goto = ug0Var.m8440goto();
        String[] strArr = new String[tg0VarArrM8440goto.length];
        for (int i = 0; i < tg0VarArrM8440goto.length; i++) {
            ASN1Encodable aSN1EncodableM7878else = tg0VarArrM8440goto[i].m7878else();
            if (aSN1EncodableM7878else instanceof ASN1String) {
                strArr[i] = ((ASN1String) aSN1EncodableM7878else).getString();
            } else {
                strArr[i] = aSN1EncodableM7878else.toString();
            }
        }
        return strArr;
    }

    /* renamed from: else, reason: not valid java name */
    public tg0 m5724else() {
        return this.f4707if;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m5725goto() {
        return ((ASN1String) this.f4707if.m7878else()).getString();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f4706do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f4706do));
        }
        cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f4707if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Name: " + m5725goto() + " - Auth: ");
        ug0 ug0Var = this.f4706do;
        if (ug0Var == null || ug0Var.m8440goto().length == 0) {
            stringBuffer.append("N/A");
        } else {
            String[] strArrM5723case = m5723case();
            stringBuffer.append('[');
            stringBuffer.append(strArrM5723case[0]);
            for (int i = 1; i < strArrM5723case.length; i++) {
                stringBuffer.append(", ");
                stringBuffer.append(strArrM5723case[i]);
            }
            stringBuffer.append(']');
        }
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public ug0 m5726try() {
        return this.f4706do;
    }
}
