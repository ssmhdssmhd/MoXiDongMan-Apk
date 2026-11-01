package android.support.v4;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Celse;

/* loaded from: classes3.dex */
public class fh2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Hashtable f1825do;

    /* renamed from: if, reason: not valid java name */
    private Vector f1826if;

    /* renamed from: for, reason: not valid java name */
    public static final Ccatch f1806for = new Ccatch("2.5.29.9");

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f1810new = new Ccatch("2.5.29.14");

    /* renamed from: try, reason: not valid java name */
    public static final Ccatch f1822try = new Ccatch("2.5.29.15");

    /* renamed from: case, reason: not valid java name */
    public static final Ccatch f1796case = new Ccatch("2.5.29.16");

    /* renamed from: else, reason: not valid java name */
    public static final Ccatch f1802else = new Ccatch("2.5.29.17");

    /* renamed from: goto, reason: not valid java name */
    public static final Ccatch f1807goto = new Ccatch("2.5.29.18");

    /* renamed from: this, reason: not valid java name */
    public static final Ccatch f1819this = new Ccatch("2.5.29.19");

    /* renamed from: break, reason: not valid java name */
    public static final Ccatch f1795break = new Ccatch("2.5.29.20");

    /* renamed from: catch, reason: not valid java name */
    public static final Ccatch f1797catch = new Ccatch("2.5.29.21");

    /* renamed from: class, reason: not valid java name */
    public static final Ccatch f1798class = new Ccatch("2.5.29.23");

    /* renamed from: const, reason: not valid java name */
    public static final Ccatch f1799const = new Ccatch("2.5.29.24");

    /* renamed from: final, reason: not valid java name */
    public static final Ccatch f1804final = new Ccatch("2.5.29.27");

    /* renamed from: super, reason: not valid java name */
    public static final Ccatch f1817super = new Ccatch("2.5.29.28");

    /* renamed from: throw, reason: not valid java name */
    public static final Ccatch f1820throw = new Ccatch("2.5.29.29");

    /* renamed from: while, reason: not valid java name */
    public static final Ccatch f1824while = new Ccatch("2.5.29.30");

    /* renamed from: import, reason: not valid java name */
    public static final Ccatch f1808import = new Ccatch("2.5.29.31");

    /* renamed from: native, reason: not valid java name */
    public static final Ccatch f1809native = new Ccatch("2.5.29.32");

    /* renamed from: public, reason: not valid java name */
    public static final Ccatch f1813public = new Ccatch("2.5.29.33");

    /* renamed from: return, reason: not valid java name */
    public static final Ccatch f1814return = new Ccatch("2.5.29.35");

    /* renamed from: static, reason: not valid java name */
    public static final Ccatch f1815static = new Ccatch("2.5.29.36");

    /* renamed from: switch, reason: not valid java name */
    public static final Ccatch f1818switch = new Ccatch("2.5.29.37");

    /* renamed from: throws, reason: not valid java name */
    public static final Ccatch f1821throws = new Ccatch("2.5.29.46");

    /* renamed from: default, reason: not valid java name */
    public static final Ccatch f1801default = new Ccatch("2.5.29.54");

    /* renamed from: extends, reason: not valid java name */
    public static final Ccatch f1803extends = new Ccatch("1.3.6.1.5.5.7.1.1");

    /* renamed from: finally, reason: not valid java name */
    public static final Ccatch f1805finally = new Ccatch("1.3.6.1.5.5.7.1.11");

    /* renamed from: package, reason: not valid java name */
    public static final Ccatch f1811package = new Ccatch("1.3.6.1.5.5.7.1.12");

    /* renamed from: private, reason: not valid java name */
    public static final Ccatch f1812private = new Ccatch("1.3.6.1.5.5.7.1.2");

    /* renamed from: abstract, reason: not valid java name */
    public static final Ccatch f1794abstract = new Ccatch("1.3.6.1.5.5.7.1.3");

    /* renamed from: continue, reason: not valid java name */
    public static final Ccatch f1800continue = new Ccatch("1.3.6.1.5.5.7.1.4");

    /* renamed from: strictfp, reason: not valid java name */
    public static final Ccatch f1816strictfp = new Ccatch("2.5.29.56");

    /* renamed from: volatile, reason: not valid java name */
    public static final Ccatch f1823volatile = new Ccatch("2.5.29.55");

    public fh2(Hashtable hashtable) {
        this((Vector) null, hashtable);
    }

    public fh2(Vector vector, Hashtable hashtable) {
        this.f1825do = new Hashtable();
        this.f1826if = new Vector();
        Enumeration enumerationKeys = vector == null ? hashtable.keys() : vector.elements();
        while (enumerationKeys.hasMoreElements()) {
            this.f1826if.addElement(Ccatch.m32790throw(enumerationKeys.nextElement()));
        }
        Enumeration enumerationElements = this.f1826if.elements();
        while (enumerationElements.hasMoreElements()) {
            Ccatch ccatchM32790throw = Ccatch.m32790throw(enumerationElements.nextElement());
            this.f1825do.put(ccatchM32790throw, (Celse) hashtable.get(ccatchM32790throw));
        }
    }

    public fh2(Vector vector, Vector vector2) {
        this.f1825do = new Hashtable();
        this.f1826if = new Vector();
        Enumeration enumerationElements = vector.elements();
        while (enumerationElements.hasMoreElements()) {
            this.f1826if.addElement(enumerationElements.nextElement());
        }
        int i = 0;
        Enumeration enumerationElements2 = this.f1826if.elements();
        while (enumerationElements2.hasMoreElements()) {
            this.f1825do.put((Ccatch) enumerationElements2.nextElement(), (Celse) vector2.elementAt(i));
            i++;
        }
    }

    public fh2(Csuper csuper) {
        this.f1825do = new Hashtable();
        this.f1826if = new Vector();
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Csuper csuperM33129catch = Csuper.m33129catch(enumerationMo33076super.nextElement());
            if (csuperM33129catch.size() == 3) {
                this.f1825do.put(csuperM33129catch.mo33075final(0), new Celse(Cfor.m33019const(csuperM33129catch.mo33075final(1)), Cclass.m32796catch(csuperM33129catch.mo33075final(2))));
            } else {
                if (csuperM33129catch.size() != 2) {
                    throw new IllegalArgumentException("Bad sequence size: " + csuperM33129catch.size());
                }
                this.f1825do.put(csuperM33129catch.mo33075final(0), new Celse(false, Cclass.m32796catch(csuperM33129catch.mo33075final(1))));
            }
            this.f1826if.addElement(csuperM33129catch.mo33075final(0));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static fh2 m2286break(Cimport cimport, boolean z) {
        return m2289this(Csuper.m33130class(cimport, z));
    }

    /* renamed from: const, reason: not valid java name */
    private Ccatch[] m2287const(Vector vector) {
        int size = vector.size();
        Ccatch[] ccatchArr = new Ccatch[size];
        for (int i = 0; i != size; i++) {
            ccatchArr[i] = (Ccatch) vector.elementAt(i);
        }
        return ccatchArr;
    }

    /* renamed from: goto, reason: not valid java name */
    private Ccatch[] m2288goto(boolean z) {
        Vector vector = new Vector();
        for (int i = 0; i != this.f1826if.size(); i++) {
            Object objElementAt = this.f1826if.elementAt(i);
            if (((Celse) this.f1825do.get(objElementAt)).m33221new() == z) {
                vector.addElement(objElementAt);
            }
        }
        return m2287const(vector);
    }

    /* renamed from: this, reason: not valid java name */
    public static fh2 m2289this(Object obj) {
        if (obj == null || (obj instanceof fh2)) {
            return (fh2) obj;
        }
        if (obj instanceof Csuper) {
            return new fh2((Csuper) obj);
        }
        if (obj instanceof y90) {
            return new fh2((Csuper) ((y90) obj).toASN1Primitive());
        }
        if (obj instanceof Cimport) {
            return m2289this(((Cimport) obj).m33065const());
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public Celse m2290case(Ccatch ccatch) {
        return (Celse) this.f1825do.get(ccatch);
    }

    /* renamed from: catch, reason: not valid java name */
    public Ccatch[] m2291catch() {
        return m2288goto(false);
    }

    /* renamed from: class, reason: not valid java name */
    public Enumeration m2292class() {
        return this.f1826if.elements();
    }

    /* renamed from: else, reason: not valid java name */
    public Ccatch[] m2293else() {
        return m2287const(this.f1826if);
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m2294new(fh2 fh2Var) {
        if (this.f1825do.size() != fh2Var.f1825do.size()) {
            return false;
        }
        Enumeration enumerationKeys = this.f1825do.keys();
        while (enumerationKeys.hasMoreElements()) {
            Object objNextElement = enumerationKeys.nextElement();
            if (!this.f1825do.get(objNextElement).equals(fh2Var.f1825do.get(objNextElement))) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Enumeration enumerationElements = this.f1826if.elements();
        while (enumerationElements.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) enumerationElements.nextElement();
            Celse celse = (Celse) this.f1825do.get(ccatch);
            Cimport cimport2 = new Cimport();
            cimport2.m3516do(ccatch);
            if (celse.m33221new()) {
                cimport2.m3516do(Cfor.f29068try);
            }
            cimport2.m3516do(celse.m33219for());
            cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccatch[] m2295try() {
        return m2288goto(true);
    }
}
