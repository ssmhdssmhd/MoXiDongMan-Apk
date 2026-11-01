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
public class u90 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Hashtable f6806do = new Hashtable();

    /* renamed from: if, reason: not valid java name */
    public Csuper f6807if;

    public u90(hr0 hr0Var) {
        this.f6807if = new org.bouncycastle.asn1.n(hr0Var);
        this.f6806do.put(hr0Var, hr0Var);
    }

    public u90(Vector vector) {
        Cimport cimport = new Cimport();
        Enumeration enumerationElements = vector.elements();
        while (enumerationElements.hasMoreElements()) {
            hr0 hr0VarM3107try = hr0.m3107try(enumerationElements.nextElement());
            cimport.m3516do(hr0VarM3107try);
            this.f6806do.put(hr0VarM3107try, hr0VarM3107try);
        }
        this.f6807if = new org.bouncycastle.asn1.n(cimport);
    }

    private u90(Csuper csuper) {
        this.f6807if = csuper;
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (!(aSN1Encodable.toASN1Primitive() instanceof Ccatch)) {
                throw new IllegalArgumentException("Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage.");
            }
            this.f6806do.put(aSN1Encodable, aSN1Encodable);
        }
    }

    public u90(hr0[] hr0VarArr) {
        Cimport cimport = new Cimport();
        for (int i = 0; i != hr0VarArr.length; i++) {
            cimport.m3516do(hr0VarArr[i]);
            this.f6806do.put(hr0VarArr[i], hr0VarArr[i]);
        }
        this.f6807if = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: case, reason: not valid java name */
    public static u90 m8303case(Cimport cimport, boolean z) {
        return m8305try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public static u90 m8304new(y90 y90Var) {
        return m8305try(y90Var.m9791this(Cif.f29336throws));
    }

    /* renamed from: try, reason: not valid java name */
    public static u90 m8305try(Object obj) {
        if (obj instanceof u90) {
            return (u90) obj;
        }
        if (obj != null) {
            return new u90(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public hr0[] m8306else() {
        hr0[] hr0VarArr = new hr0[this.f6807if.size()];
        Enumeration enumerationMo33076super = this.f6807if.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            hr0VarArr[i] = hr0.m3107try(enumerationMo33076super.nextElement());
            i++;
        }
        return hr0VarArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m8307goto(hr0 hr0Var) {
        return this.f6806do.get(hr0Var) != null;
    }

    public int size() {
        return this.f6806do.size();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6807if;
    }
}
