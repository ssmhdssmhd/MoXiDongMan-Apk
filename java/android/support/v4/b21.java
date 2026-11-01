package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class b21 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private wg0[] f312do;

    /* renamed from: if, reason: not valid java name */
    private wg0[] f313if;

    private b21(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f312do = m424try(Csuper.m33130class(cimportM33063catch, false));
            } else {
                if (tagNo != 1) {
                    throw new IllegalArgumentException("Unknown tag encountered: " + cimportM33063catch.getTagNo());
                }
                this.f313if = m424try(Csuper.m33130class(cimportM33063catch, false));
            }
        }
    }

    public b21(wg0[] wg0VarArr, wg0[] wg0VarArr2) {
        this.f312do = m423new(wg0VarArr);
        this.f313if = m423new(wg0VarArr2);
    }

    /* renamed from: else, reason: not valid java name */
    public static b21 m422else(Object obj) {
        if (obj instanceof b21) {
            return (b21) obj;
        }
        if (obj != null) {
            return new b21(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private static wg0[] m423new(wg0[] wg0VarArr) {
        if (wg0VarArr == null) {
            return null;
        }
        int length = wg0VarArr.length;
        wg0[] wg0VarArr2 = new wg0[length];
        System.arraycopy(wg0VarArr, 0, wg0VarArr2, 0, length);
        return wg0VarArr2;
    }

    /* renamed from: try, reason: not valid java name */
    private wg0[] m424try(Csuper csuper) {
        int size = csuper.size();
        wg0[] wg0VarArr = new wg0[size];
        for (int i = 0; i != size; i++) {
            wg0VarArr[i] = wg0.m9145try(csuper.mo33075final(i));
        }
        return wg0VarArr;
    }

    /* renamed from: case, reason: not valid java name */
    public wg0[] m425case() {
        return m423new(this.f313if);
    }

    /* renamed from: goto, reason: not valid java name */
    public wg0[] m426goto() {
        return m423new(this.f312do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f312do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, new org.bouncycastle.asn1.n(this.f312do)));
        }
        if (this.f313if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, new org.bouncycastle.asn1.n(this.f313if)));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
