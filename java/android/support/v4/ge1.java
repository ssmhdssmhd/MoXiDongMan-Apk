package android.support.v4;

import java.util.Enumeration;
import java.util.Hashtable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ge1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Csuper f2109do;

    public ge1(gg ggVar, gg ggVar2) {
        this.f2109do = null;
        Cimport cimport = new Cimport();
        cimport.m3516do(ggVar);
        cimport.m3516do(ggVar2);
        this.f2109do = new org.bouncycastle.asn1.n(new org.bouncycastle.asn1.n(cimport));
    }

    public ge1(Hashtable hashtable) {
        this.f2109do = null;
        Cimport cimport = new Cimport();
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            String str = (String) enumerationKeys.nextElement();
            String str2 = (String) hashtable.get(str);
            Cimport cimport2 = new Cimport();
            cimport2.m3516do(new Ccatch(str));
            cimport2.m3516do(new Ccatch(str2));
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        }
        this.f2109do = new org.bouncycastle.asn1.n(cimport);
    }

    private ge1(Csuper csuper) {
        this.f2109do = null;
        this.f2109do = csuper;
    }

    public ge1(gg[] ggVarArr, gg[] ggVarArr2) {
        this.f2109do = null;
        Cimport cimport = new Cimport();
        for (int i = 0; i != ggVarArr.length; i++) {
            Cimport cimport2 = new Cimport();
            cimport2.m3516do(ggVarArr[i]);
            cimport2.m3516do(ggVarArr2[i]);
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        }
        this.f2109do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: new, reason: not valid java name */
    public static ge1 m2652new(Object obj) {
        if (obj instanceof ge1) {
            return (ge1) obj;
        }
        if (obj != null) {
            return new ge1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2109do;
    }
}
