package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class ug0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final tg0[] f6883do;

    public ug0(tg0 tg0Var) {
        this.f6883do = new tg0[]{tg0Var};
    }

    private ug0(Csuper csuper) {
        this.f6883do = new tg0[csuper.size()];
        for (int i = 0; i != csuper.size(); i++) {
            this.f6883do[i] = tg0.m7877try(csuper.mo33075final(i));
        }
    }

    public ug0(tg0[] tg0VarArr) {
        this.f6883do = m8438new(tg0VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static ug0 m8436case(Object obj) {
        if (obj instanceof ug0) {
            return (ug0) obj;
        }
        if (obj != null) {
            return new ug0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static ug0 m8437else(Cimport cimport, boolean z) {
        return m8436case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    private tg0[] m8438new(tg0[] tg0VarArr) {
        int length = tg0VarArr.length;
        tg0[] tg0VarArr2 = new tg0[length];
        System.arraycopy(tg0VarArr, 0, tg0VarArr2, 0, length);
        return tg0VarArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static ug0 m8439try(y90 y90Var, Ccatch ccatch) {
        return m8436case(y90Var.m9791this(ccatch));
    }

    /* renamed from: goto, reason: not valid java name */
    public tg0[] m8440goto() {
        return m8438new(this.f6883do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(this.f6883do);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String strM36360new = Cfor.m36360new();
        stringBuffer.append("GeneralNames:");
        stringBuffer.append(strM36360new);
        for (int i = 0; i != this.f6883do.length; i++) {
            stringBuffer.append("    ");
            stringBuffer.append(this.f6883do[i]);
            stringBuffer.append(strM36360new);
        }
        return stringBuffer.toString();
    }
}
