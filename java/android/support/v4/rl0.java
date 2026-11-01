package android.support.v4;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class rl0 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f5865case = 3;

    /* renamed from: new, reason: not valid java name */
    public static final int f5866new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f5867try = 2;

    /* renamed from: do, reason: not valid java name */
    public ug0 f5868do;

    /* renamed from: for, reason: not valid java name */
    public int f5869for;

    /* renamed from: if, reason: not valid java name */
    public Vector f5870if = new Vector();

    /* JADX WARN: Removed duplicated region for block: B:11:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private rl0(Csuper csuper) {
        int i;
        ug0 ug0VarM8436case;
        this.f5868do = null;
        this.f5869for = -1;
        int i2 = 0;
        if (!(csuper.mo33075final(0) instanceof Cimport)) {
            ug0VarM8436case = csuper.size() == 2 ? ug0.m8436case(csuper.mo33075final(0)) : ug0VarM8436case;
            if (csuper.mo33075final(i2) instanceof Csuper) {
                throw new IllegalArgumentException("Non-IetfAttrSyntax encoding");
            }
            Enumeration enumerationMo33076super = ((Csuper) csuper.mo33075final(i2)).mo33076super();
            while (enumerationMo33076super.hasMoreElements()) {
                Cfinal cfinal = (Cfinal) enumerationMo33076super.nextElement();
                if (cfinal instanceof Ccatch) {
                    i = 2;
                } else if (cfinal instanceof org.bouncycastle.asn1.v) {
                    i = 3;
                } else {
                    if (!(cfinal instanceof org.bouncycastle.asn1.j)) {
                        throw new IllegalArgumentException("Bad value type encoding IetfAttrSyntax");
                    }
                    i = 1;
                }
                if (this.f5869for < 0) {
                    this.f5869for = i;
                }
                if (i != this.f5869for) {
                    throw new IllegalArgumentException("Mix of value types in IetfAttrSyntax");
                }
                this.f5870if.addElement(cfinal);
            }
            return;
        }
        ug0VarM8436case = ug0.m8437else((Cimport) csuper.mo33075final(0), false);
        this.f5868do = ug0VarM8436case;
        i2 = 1;
        if (csuper.mo33075final(i2) instanceof Csuper) {
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static rl0 m7053new(Object obj) {
        if (obj instanceof rl0) {
            return (rl0) obj;
        }
        if (obj != null) {
            return new rl0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public int m7054case() {
        return this.f5869for;
    }

    /* renamed from: else, reason: not valid java name */
    public Object[] m7055else() {
        int i = 0;
        if (m7054case() == 1) {
            int size = this.f5870if.size();
            Cclass[] cclassArr = new Cclass[size];
            while (i != size) {
                cclassArr[i] = (Cclass) this.f5870if.elementAt(i);
                i++;
            }
            return cclassArr;
        }
        if (m7054case() == 2) {
            int size2 = this.f5870if.size();
            Ccatch[] ccatchArr = new Ccatch[size2];
            while (i != size2) {
                ccatchArr[i] = (Ccatch) this.f5870if.elementAt(i);
                i++;
            }
            return ccatchArr;
        }
        int size3 = this.f5870if.size();
        org.bouncycastle.asn1.v[] vVarArr = new org.bouncycastle.asn1.v[size3];
        while (i != size3) {
            vVarArr[i] = (org.bouncycastle.asn1.v) this.f5870if.elementAt(i);
            i++;
        }
        return vVarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f5868do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(0, this.f5868do));
        }
        Cimport cimport2 = new Cimport();
        Enumeration enumerationElements = this.f5870if.elements();
        while (enumerationElements.hasMoreElements()) {
            cimport2.m3516do((ASN1Encodable) enumerationElements.nextElement());
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public ug0 m7056try() {
        return this.f5868do;
    }
}
