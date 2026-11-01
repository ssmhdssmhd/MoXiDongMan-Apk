package android.support.v4;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class y90 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Hashtable f8169do;

    /* renamed from: if, reason: not valid java name */
    private Vector f8170if;

    private y90(Csuper csuper) {
        this.f8169do = new Hashtable();
        this.f8170if = new Vector();
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cif cifM33244else = Cif.m33244else(enumerationMo33076super.nextElement());
            if (this.f8169do.containsKey(cifM33244else.m33249try())) {
                throw new IllegalArgumentException("repeated extension found: " + cifM33244else.m33249try());
            }
            this.f8169do.put(cifM33244else.m33249try(), cifM33244else);
            this.f8170if.addElement(cifM33244else.m33249try());
        }
    }

    public y90(Cif cif) {
        this.f8169do = new Hashtable();
        Vector vector = new Vector();
        this.f8170if = vector;
        vector.addElement(cif.m33249try());
        this.f8169do.put(cif.m33249try(), cif);
    }

    public y90(Cif[] cifArr) {
        this.f8169do = new Hashtable();
        this.f8170if = new Vector();
        for (int i = 0; i != cifArr.length; i++) {
            Cif cif = cifArr[i];
            this.f8170if.addElement(cif.m33249try());
            this.f8169do.put(cif.m33249try(), cif);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static y90 m9782break(Object obj) {
        if (obj instanceof y90) {
            return (y90) obj;
        }
        if (obj != null) {
            return new y90(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: catch, reason: not valid java name */
    public static y90 m9783catch(Cimport cimport, boolean z) {
        return m9782break(Csuper.m33130class(cimport, z));
    }

    /* renamed from: final, reason: not valid java name */
    private Ccatch[] m9784final(Vector vector) {
        int size = vector.size();
        Ccatch[] ccatchArr = new Ccatch[size];
        for (int i = 0; i != size; i++) {
            ccatchArr[i] = (Ccatch) vector.elementAt(i);
        }
        return ccatchArr;
    }

    /* renamed from: goto, reason: not valid java name */
    private Ccatch[] m9785goto(boolean z) {
        Vector vector = new Vector();
        for (int i = 0; i != this.f8170if.size(); i++) {
            Object objElementAt = this.f8170if.elementAt(i);
            if (((Cif) this.f8169do.get(objElementAt)).m33248this() == z) {
                vector.addElement(objElementAt);
            }
        }
        return m9784final(vector);
    }

    /* renamed from: case, reason: not valid java name */
    public Cif m9786case(Ccatch ccatch) {
        return (Cif) this.f8169do.get(ccatch);
    }

    /* renamed from: class, reason: not valid java name */
    public Ccatch[] m9787class() {
        return m9785goto(false);
    }

    /* renamed from: const, reason: not valid java name */
    public Enumeration m9788const() {
        return this.f8170if.elements();
    }

    /* renamed from: else, reason: not valid java name */
    public Ccatch[] m9789else() {
        return m9784final(this.f8170if);
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m9790new(y90 y90Var) {
        if (this.f8169do.size() != y90Var.f8169do.size()) {
            return false;
        }
        Enumeration enumerationKeys = this.f8169do.keys();
        while (enumerationKeys.hasMoreElements()) {
            Object objNextElement = enumerationKeys.nextElement();
            if (!this.f8169do.get(objNextElement).equals(y90Var.f8169do.get(objNextElement))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    public ASN1Encodable m9791this(Ccatch ccatch) {
        Cif cifM9786case = m9786case(ccatch);
        if (cifM9786case != null) {
            return cifM9786case.m33247goto();
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Enumeration enumerationElements = this.f8170if.elements();
        while (enumerationElements.hasMoreElements()) {
            cimport.m3516do((Cif) this.f8169do.get((Ccatch) enumerationElements.nextElement()));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch[] m9792try() {
        return m9785goto(true);
    }
}
