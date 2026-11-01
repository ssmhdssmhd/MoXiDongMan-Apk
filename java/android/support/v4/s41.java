package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class s41 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private i10 f6007do;

    /* renamed from: if, reason: not valid java name */
    private Csuper f6008if;

    public s41(i10 i10Var, Cimport cimport) {
        this.f6007do = i10Var;
        this.f6008if = new org.bouncycastle.asn1.n(cimport);
    }

    public s41(String str, Cimport cimport) {
        this(new i10(str), cimport);
    }

    public s41(String str, Vector vector) {
        this(str, m7259new(vector));
    }

    private s41(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f6007do = i10.m3197new(csuper.mo33075final(0));
            this.f6008if = Csuper.m33129catch(csuper.mo33075final(1));
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static Cimport m7259new(Vector vector) {
        Cgoto cgoto;
        Cimport cimport = new Cimport();
        Enumeration enumerationElements = vector.elements();
        while (enumerationElements.hasMoreElements()) {
            Object objNextElement = enumerationElements.nextElement();
            if (objNextElement instanceof BigInteger) {
                cgoto = new Cgoto((BigInteger) objNextElement);
            } else {
                if (!(objNextElement instanceof Integer)) {
                    throw new IllegalArgumentException();
                }
                cgoto = new Cgoto(((Integer) objNextElement).intValue());
            }
            cimport.m3516do(cgoto);
        }
        return cimport;
    }

    /* renamed from: try, reason: not valid java name */
    public static s41 m7260try(Object obj) {
        if (obj instanceof s41) {
            return (s41) obj;
        }
        if (obj != null) {
            return new s41(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cgoto[] m7261case() {
        Cgoto[] cgotoArr = new Cgoto[this.f6008if.size()];
        for (int i = 0; i != this.f6008if.size(); i++) {
            cgotoArr[i] = Cgoto.m33040catch(this.f6008if.mo33075final(i));
        }
        return cgotoArr;
    }

    /* renamed from: else, reason: not valid java name */
    public i10 m7262else() {
        return this.f6007do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6007do);
        cimport.m3516do(this.f6008if);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
