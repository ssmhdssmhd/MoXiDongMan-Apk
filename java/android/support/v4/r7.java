package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Celse;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class r7 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Cfor f5672do;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f5673if;

    public r7(int i) {
        this.f5672do = Cfor.m33021super(false);
        this.f5673if = null;
        this.f5672do = Cfor.m33021super(true);
        this.f5673if = new Cgoto(i);
    }

    private r7(Csuper csuper) {
        this.f5672do = Cfor.m33021super(false);
        this.f5673if = null;
        if (csuper.size() == 0) {
            this.f5672do = null;
            this.f5673if = null;
            return;
        }
        if (csuper.mo33075final(0) instanceof Cfor) {
            this.f5672do = Cfor.m33019const(csuper.mo33075final(0));
        } else {
            this.f5672do = null;
            this.f5673if = Cgoto.m33040catch(csuper.mo33075final(0));
        }
        if (csuper.size() > 1) {
            if (this.f5672do == null) {
                throw new IllegalArgumentException("wrong sequence in constructor");
            }
            this.f5673if = Cgoto.m33040catch(csuper.mo33075final(1));
        }
    }

    public r7(boolean z) {
        this.f5672do = Cfor.m33021super(false);
        this.f5673if = null;
        if (z) {
            this.f5672do = Cfor.m33021super(true);
        } else {
            this.f5672do = null;
        }
        this.f5673if = null;
    }

    /* renamed from: case, reason: not valid java name */
    public static r7 m6793case(Cimport cimport, boolean z) {
        return m6795try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public static r7 m6794new(y90 y90Var) {
        return m6795try(y90Var.m9791this(Cif.f29309break));
    }

    /* renamed from: try, reason: not valid java name */
    public static r7 m6795try(Object obj) {
        if (obj instanceof r7) {
            return (r7) obj;
        }
        if (obj instanceof Celse) {
            return m6795try(Celse.m33218do((Celse) obj));
        }
        if (obj != null) {
            return new r7(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m6796else() {
        Cgoto cgoto = this.f5673if;
        if (cgoto != null) {
            return cgoto.m33044final();
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m6797goto() {
        Cfor cfor = this.f5672do;
        return cfor != null && cfor.m33022throw();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Cfor cfor = this.f5672do;
        if (cfor != null) {
            cimport.m3516do(cfor);
        }
        Cgoto cgoto = this.f5673if;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        StringBuilder sb;
        if (this.f5673if != null) {
            sb = new StringBuilder();
            sb.append("BasicConstraints: isCa(");
            sb.append(m6797goto());
            sb.append("), pathLenConstraint = ");
            sb.append(this.f5673if.m33044final());
        } else {
            if (this.f5672do == null) {
                return "BasicConstraints: isCa(false)";
            }
            sb = new StringBuilder();
            sb.append("BasicConstraints: isCa(");
            sb.append(m6797goto());
            sb.append(")");
        }
        return sb.toString();
    }
}
