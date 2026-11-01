package android.support.v4;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class t4 {

    /* renamed from: do, reason: not valid java name */
    private Hashtable f6415do;

    public t4(Cimport cimport) {
        this.f6415do = new Hashtable();
        for (int i = 0; i != cimport.m3519new(); i++) {
            p4 p4VarM5872else = p4.m5872else(cimport.m3517for(i));
            m7710if(p4VarM5872else.m5874new(), p4VarM5872else);
        }
    }

    public t4(p4 p4Var) {
        this.f6415do = new Hashtable();
        m7710if(p4Var.m5874new(), p4Var);
    }

    public t4(w4 w4Var) {
        this(Cthrow.m33151class(w4Var.toASN1Primitive()));
    }

    public t4(Hashtable hashtable) {
        this.f6415do = new Hashtable();
        this.f6415do = m7709for(hashtable);
    }

    public t4(Cthrow cthrow) {
        this.f6415do = new Hashtable();
        for (int i = 0; i != cthrow.size(); i++) {
            p4 p4VarM5872else = p4.m5872else(cthrow.m33158super(i));
            m7710if(p4VarM5872else.m5874new(), p4VarM5872else);
        }
    }

    /* renamed from: for, reason: not valid java name */
    private Hashtable m7709for(Hashtable hashtable) {
        Hashtable hashtable2 = new Hashtable();
        Enumeration enumerationKeys = hashtable.keys();
        while (enumerationKeys.hasMoreElements()) {
            Object objNextElement = enumerationKeys.nextElement();
            hashtable2.put(objNextElement, hashtable.get(objNextElement));
        }
        return hashtable2;
    }

    /* renamed from: if, reason: not valid java name */
    private void m7710if(Ccatch ccatch, p4 p4Var) {
        Vector vector;
        Object obj = this.f6415do.get(ccatch);
        if (obj == null) {
            this.f6415do.put(ccatch, p4Var);
            return;
        }
        if (obj instanceof p4) {
            vector = new Vector();
            vector.addElement(obj);
        } else {
            vector = (Vector) obj;
        }
        vector.addElement(p4Var);
        this.f6415do.put(ccatch, vector);
    }

    /* renamed from: break, reason: not valid java name */
    public Hashtable m7711break() {
        return m7709for(this.f6415do);
    }

    /* renamed from: case, reason: not valid java name */
    public t4 m7712case(Ccatch ccatch) {
        t4 t4Var = new t4(this.f6415do);
        t4Var.f6415do.remove(ccatch);
        return t4Var;
    }

    /* renamed from: do, reason: not valid java name */
    public t4 m7713do(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        t4 t4Var = new t4(this.f6415do);
        t4Var.m7710if(ccatch, new p4(ccatch, new org.bouncycastle.asn1.q(aSN1Encodable)));
        return t4Var;
    }

    /* renamed from: else, reason: not valid java name */
    public int m7714else() {
        Enumeration enumerationElements = this.f6415do.elements();
        int size = 0;
        while (enumerationElements.hasMoreElements()) {
            Object objNextElement = enumerationElements.nextElement();
            size = objNextElement instanceof Vector ? size + ((Vector) objNextElement).size() : size + 1;
        }
        return size;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cimport m7715goto() {
        Cimport cimport = new Cimport();
        Enumeration enumerationElements = this.f6415do.elements();
        while (enumerationElements.hasMoreElements()) {
            Object objNextElement = enumerationElements.nextElement();
            if (objNextElement instanceof Vector) {
                Enumeration enumerationElements2 = ((Vector) objNextElement).elements();
                while (enumerationElements2.hasMoreElements()) {
                    cimport.m3516do(p4.m5872else(enumerationElements2.nextElement()));
                }
            } else {
                cimport.m3516do(p4.m5872else(objNextElement));
            }
        }
        return cimport;
    }

    /* renamed from: new, reason: not valid java name */
    public p4 m7716new(Ccatch ccatch) {
        Object obj = this.f6415do.get(ccatch);
        return obj instanceof Vector ? (p4) ((Vector) obj).elementAt(0) : (p4) obj;
    }

    /* renamed from: this, reason: not valid java name */
    public w4 m7717this() {
        return new w4(m7715goto());
    }

    /* renamed from: try, reason: not valid java name */
    public Cimport m7718try(Ccatch ccatch) {
        Cimport cimport = new Cimport();
        Object obj = this.f6415do.get(ccatch);
        if (obj instanceof Vector) {
            Enumeration enumerationElements = ((Vector) obj).elements();
            while (enumerationElements.hasMoreElements()) {
                cimport.m3516do((p4) enumerationElements.nextElement());
            }
        } else if (obj != null) {
            cimport.m3516do((p4) obj);
        }
        return cimport;
    }
}
