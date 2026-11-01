package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class pw1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f5207do;

    /* renamed from: if, reason: not valid java name */
    private tg0[] f5208if;

    public pw1(Ccatch ccatch) {
        this.f5207do = ccatch;
        this.f5208if = null;
    }

    public pw1(Ccatch ccatch, tg0[] tg0VarArr) {
        this.f5207do = ccatch;
        this.f5208if = m6235new(tg0VarArr);
    }

    private pw1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        if (csuper.size() < 1) {
            throw new IllegalArgumentException("no objects in SemanticsInformation");
        }
        Object objNextElement = enumerationMo33076super.nextElement();
        if (objNextElement instanceof Ccatch) {
            this.f5207do = Ccatch.m32790throw(objNextElement);
            objNextElement = enumerationMo33076super.hasMoreElements() ? enumerationMo33076super.nextElement() : null;
        }
        if (objNextElement != null) {
            Csuper csuperM33129catch = Csuper.m33129catch(objNextElement);
            this.f5208if = new tg0[csuperM33129catch.size()];
            for (int i = 0; i < csuperM33129catch.size(); i++) {
                this.f5208if[i] = tg0.m7877try(csuperM33129catch.mo33075final(i));
            }
        }
    }

    public pw1(tg0[] tg0VarArr) {
        this.f5207do = null;
        this.f5208if = m6235new(tg0VarArr);
    }

    /* renamed from: new, reason: not valid java name */
    private static tg0[] m6235new(tg0[] tg0VarArr) {
        if (tg0VarArr == null) {
            return null;
        }
        tg0[] tg0VarArr2 = new tg0[tg0VarArr.length];
        System.arraycopy(tg0VarArr, 0, tg0VarArr2, 0, tg0VarArr.length);
        return tg0VarArr2;
    }

    /* renamed from: try, reason: not valid java name */
    public static pw1 m6236try(Object obj) {
        if (obj instanceof pw1) {
            return (pw1) obj;
        }
        if (obj != null) {
            return new pw1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public tg0[] m6237case() {
        return m6235new(this.f5208if);
    }

    /* renamed from: else, reason: not valid java name */
    public Ccatch m6238else() {
        return this.f5207do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Ccatch ccatch = this.f5207do;
        if (ccatch != null) {
            cimport.m3516do(ccatch);
        }
        if (this.f5208if != null) {
            Cimport cimport2 = new Cimport();
            int i = 0;
            while (true) {
                tg0[] tg0VarArr = this.f5208if;
                if (i >= tg0VarArr.length) {
                    break;
                }
                cimport2.m3516do(tg0VarArr[i]);
                i++;
            }
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
