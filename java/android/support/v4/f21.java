package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.isismtt.ISISMTTObjectIdentifiers;

/* loaded from: classes3.dex */
public class f21 extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f1674new = new Ccatch(ISISMTTObjectIdentifiers.id_isismtt_at_namingAuthorities + ".1");

    /* renamed from: do, reason: not valid java name */
    private Ccatch f1675do;

    /* renamed from: for, reason: not valid java name */
    private g10 f1676for;

    /* renamed from: if, reason: not valid java name */
    private String f1677if;

    public f21(Ccatch ccatch, String str, g10 g10Var) {
        this.f1675do = ccatch;
        this.f1677if = str;
        this.f1676for = g10Var;
    }

    private f21(Csuper csuper) {
        if (csuper.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        if (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable instanceof Ccatch) {
                this.f1675do = (Ccatch) aSN1Encodable;
            } else if (aSN1Encodable instanceof org.bouncycastle.asn1.g) {
                this.f1677if = org.bouncycastle.asn1.g.m33023catch(aSN1Encodable).getString();
            } else {
                if (!(aSN1Encodable instanceof ASN1String)) {
                    throw new IllegalArgumentException("Bad object encountered: " + aSN1Encodable.getClass());
                }
                this.f1676for = g10.m2502new(aSN1Encodable);
            }
        }
        if (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable2 = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable2 instanceof org.bouncycastle.asn1.g) {
                this.f1677if = org.bouncycastle.asn1.g.m33023catch(aSN1Encodable2).getString();
            } else {
                if (!(aSN1Encodable2 instanceof ASN1String)) {
                    throw new IllegalArgumentException("Bad object encountered: " + aSN1Encodable2.getClass());
                }
                this.f1676for = g10.m2502new(aSN1Encodable2);
            }
        }
        if (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable3 = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable3 instanceof ASN1String) {
                this.f1676for = g10.m2502new(aSN1Encodable3);
                return;
            }
            throw new IllegalArgumentException("Bad object encountered: " + aSN1Encodable3.getClass());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static f21 m2120new(Object obj) {
        if (obj == null || (obj instanceof f21)) {
            return (f21) obj;
        }
        if (obj instanceof Csuper) {
            return new f21((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static f21 m2121try(Cimport cimport, boolean z) {
        return m2120new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m2122case() {
        return this.f1675do;
    }

    /* renamed from: else, reason: not valid java name */
    public g10 m2123else() {
        return this.f1676for;
    }

    /* renamed from: goto, reason: not valid java name */
    public String m2124goto() {
        return this.f1677if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Ccatch ccatch = this.f1675do;
        if (ccatch != null) {
            cimport.m3516do(ccatch);
        }
        String str = this.f1677if;
        if (str != null) {
            cimport.m3516do(new org.bouncycastle.asn1.g(str, true));
        }
        g10 g10Var = this.f1676for;
        if (g10Var != null) {
            cimport.m3516do(g10Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
