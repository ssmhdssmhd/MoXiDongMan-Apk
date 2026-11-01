package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class pa1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f4885do;

    public pa1(String str) {
        this(new org.bouncycastle.asn1.v(str));
    }

    private pa1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            if (!(enumerationMo33076super.nextElement() instanceof org.bouncycastle.asn1.v)) {
                throw new IllegalArgumentException("attempt to insert non UTF8 STRING into PKIFreeText");
            }
        }
        this.f4885do = csuper;
    }

    public pa1(org.bouncycastle.asn1.v vVar) {
        this.f4885do = new org.bouncycastle.asn1.n(vVar);
    }

    public pa1(String[] strArr) {
        Cimport cimport = new Cimport();
        for (String str : strArr) {
            cimport.m3516do(new org.bouncycastle.asn1.v(str));
        }
        this.f4885do = new org.bouncycastle.asn1.n(cimport);
    }

    public pa1(org.bouncycastle.asn1.v[] vVarArr) {
        this.f4885do = new org.bouncycastle.asn1.n(vVarArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static pa1 m5928new(Object obj) {
        if (obj instanceof pa1) {
            return (pa1) obj;
        }
        if (obj != null) {
            return new pa1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static pa1 m5929try(Cimport cimport, boolean z) {
        return m5928new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public org.bouncycastle.asn1.v m5930case(int i) {
        return (org.bouncycastle.asn1.v) this.f4885do.mo33075final(i);
    }

    public int size() {
        return this.f4885do.size();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4885do;
    }
}
