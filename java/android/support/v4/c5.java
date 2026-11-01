package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cif;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.util.encoders.Cfor;

/* loaded from: classes3.dex */
public class c5 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cclass f601do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f602for;

    /* renamed from: if, reason: not valid java name */
    public ug0 f603if;

    public c5(ug0 ug0Var, BigInteger bigInteger) {
        this((byte[]) null, ug0Var, bigInteger);
    }

    public c5(Csuper csuper) {
        this.f601do = null;
        this.f603if = null;
        this.f602for = null;
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimportM33063catch = Cimport.m33063catch(enumerationMo33076super.nextElement());
            int tagNo = cimportM33063catch.getTagNo();
            if (tagNo == 0) {
                this.f601do = Cclass.m32797class(cimportM33063catch, false);
            } else if (tagNo == 1) {
                this.f603if = ug0.m8437else(cimportM33063catch, false);
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("illegal tag");
                }
                this.f602for = Cgoto.m33041class(cimportM33063catch, false);
            }
        }
    }

    public c5(Ctry ctry) {
        this.f601do = null;
        this.f603if = null;
        this.f602for = null;
        wp1 wp1Var = new wp1();
        byte[] bArr = new byte[wp1Var.getDigestSize()];
        byte[] bArrM33057const = ctry.m33296this().m33057const();
        wp1Var.update(bArrM33057const, 0, bArrM33057const.length);
        wp1Var.doFinal(bArr, 0);
        this.f601do = new org.bouncycastle.asn1.j(bArr);
    }

    public c5(Ctry ctry, ug0 ug0Var, BigInteger bigInteger) {
        this.f601do = null;
        this.f603if = null;
        this.f602for = null;
        wp1 wp1Var = new wp1();
        byte[] bArr = new byte[wp1Var.getDigestSize()];
        byte[] bArrM33057const = ctry.m33296this().m33057const();
        wp1Var.update(bArrM33057const, 0, bArrM33057const.length);
        wp1Var.doFinal(bArr, 0);
        this.f601do = new org.bouncycastle.asn1.j(bArr);
        this.f603if = ug0.m8436case(ug0Var.toASN1Primitive());
        this.f602for = new Cgoto(bigInteger);
    }

    public c5(byte[] bArr) {
        this(bArr, (ug0) null, (BigInteger) null);
    }

    public c5(byte[] bArr, ug0 ug0Var, BigInteger bigInteger) {
        this.f601do = null;
        this.f603if = null;
        this.f602for = null;
        this.f601do = bArr != null ? new org.bouncycastle.asn1.j(bArr) : null;
        this.f603if = ug0Var;
        this.f602for = bigInteger != null ? new Cgoto(bigInteger) : null;
    }

    /* renamed from: else, reason: not valid java name */
    public static c5 m743else(Object obj) {
        if (obj instanceof c5) {
            return (c5) obj;
        }
        if (obj != null) {
            return new c5(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static c5 m744goto(Cimport cimport, boolean z) {
        return m743else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public static c5 m745new(y90 y90Var) {
        return m743else(y90Var.m9791this(Cif.f29330static));
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m746case() {
        Cgoto cgoto = this.f602for;
        if (cgoto != null) {
            return cgoto.m33044final();
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m747this() {
        Cclass cclass = this.f601do;
        if (cclass != null) {
            return cclass.mo5490const();
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f601do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f601do));
        }
        if (this.f603if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f603if));
        }
        if (this.f602for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f602for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AuthorityKeyIdentifier: KeyID(");
        Cclass cclass = this.f601do;
        sb.append(cclass != null ? Cfor.m36331goto(cclass.mo5490const()) : "null");
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public ug0 m748try() {
        return this.f603if;
    }
}
