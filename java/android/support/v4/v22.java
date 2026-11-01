package android.support.v4;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class v22 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Vector f7040do = new Vector();

    public v22(Vector vector) {
        Enumeration enumerationElements = vector.elements();
        while (enumerationElements.hasMoreElements()) {
            this.f7040do.addElement(enumerationElements.nextElement());
        }
    }

    private v22(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            this.f7040do.addElement(n4.m5080else(Csuper.m33129catch(enumerationMo33076super.nextElement())));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static v22 m8725try(Object obj) {
        if (obj instanceof v22) {
            return (v22) obj;
        }
        if (obj != null) {
            return new v22(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public Vector m8726new() {
        return this.f7040do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Enumeration enumerationElements = this.f7040do.elements();
        while (enumerationElements.hasMoreElements()) {
            cimport.m3516do((n4) enumerationElements.nextElement());
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
