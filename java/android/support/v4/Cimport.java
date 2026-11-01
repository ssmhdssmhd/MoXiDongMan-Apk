package android.support.v4;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;

/* renamed from: android.support.v4.import, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimport {

    /* renamed from: do, reason: not valid java name */
    private final Vector f2812do = new Vector();

    /* renamed from: do, reason: not valid java name */
    public void m3516do(ASN1Encodable aSN1Encodable) {
        this.f2812do.addElement(aSN1Encodable);
    }

    /* renamed from: for, reason: not valid java name */
    public ASN1Encodable m3517for(int i) {
        return (ASN1Encodable) this.f2812do.elementAt(i);
    }

    /* renamed from: if, reason: not valid java name */
    public void m3518if(Cimport cimport) {
        Enumeration enumerationElements = cimport.f2812do.elements();
        while (enumerationElements.hasMoreElements()) {
            this.f2812do.addElement(enumerationElements.nextElement());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public int m3519new() {
        return this.f2812do.size();
    }
}
