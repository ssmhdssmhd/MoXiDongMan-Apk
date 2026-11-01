package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class fe1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Ccatch f1775do;

    /* renamed from: if, reason: not valid java name */
    private Csuper f1776if;

    public fe1(Ccatch ccatch) {
        this.f1775do = ccatch;
    }

    public fe1(Ccatch ccatch, Csuper csuper) {
        this.f1775do = ccatch;
        this.f1776if = csuper;
    }

    private fe1(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        this.f1775do = Ccatch.m32790throw(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f1776if = Csuper.m33129catch(csuper.mo33075final(1));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static fe1 m2258new(Object obj) {
        return (obj == null || (obj instanceof fe1)) ? (fe1) obj : new fe1(Csuper.m33129catch(obj));
    }

    /* renamed from: case, reason: not valid java name */
    public Csuper m2259case() {
        return this.f1776if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f1775do);
        Csuper csuper = this.f1776if;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Policy information: ");
        stringBuffer.append(this.f1775do);
        if (this.f1776if != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            for (int i = 0; i < this.f1776if.size(); i++) {
                if (stringBuffer2.length() != 0) {
                    stringBuffer2.append(", ");
                }
                stringBuffer2.append(ie1.m3402new(this.f1776if.mo33075final(i)));
            }
            stringBuffer.append("[");
            stringBuffer.append(stringBuffer2);
            stringBuffer.append("]");
        }
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch m2260try() {
        return this.f1775do;
    }
}
