package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class yj1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final b1 f8247case;

    /* renamed from: new, reason: not valid java name */
    public static final b1 f8248new;

    /* renamed from: try, reason: not valid java name */
    public static final b1 f8249try;

    /* renamed from: do, reason: not valid java name */
    private b1 f8250do;

    /* renamed from: for, reason: not valid java name */
    private b1 f8251for;

    /* renamed from: if, reason: not valid java name */
    private b1 f8252if;

    static {
        b1 b1Var = new b1(OIWObjectIdentifiers.idSHA1, org.bouncycastle.asn1.h.f29080do);
        f8248new = b1Var;
        f8249try = new b1(PKCSObjectIdentifiers.id_mgf1, b1Var);
        f8247case = new b1(PKCSObjectIdentifiers.id_pSpecified, new org.bouncycastle.asn1.j(new byte[0]));
    }

    public yj1() {
        this.f8250do = f8248new;
        this.f8252if = f8249try;
        this.f8251for = f8247case;
    }

    public yj1(b1 b1Var, b1 b1Var2, b1 b1Var3) {
        this.f8250do = b1Var;
        this.f8252if = b1Var2;
        this.f8251for = b1Var3;
    }

    public yj1(Csuper csuper) {
        this.f8250do = f8248new;
        this.f8252if = f8249try;
        this.f8251for = f8247case;
        for (int i = 0; i != csuper.size(); i++) {
            Cimport cimport = (Cimport) csuper.mo33075final(i);
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f8250do = b1.m417case(cimport, true);
            } else if (tagNo == 1) {
                this.f8252if = b1.m417case(cimport, true);
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("unknown tag");
                }
                this.f8251for = b1.m417case(cimport, true);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static yj1 m9878try(Object obj) {
        if (obj instanceof yj1) {
            return (yj1) obj;
        }
        if (obj != null) {
            return new yj1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m9879case() {
        return this.f8252if;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m9880else() {
        return this.f8251for;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m9881new() {
        return this.f8250do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (!this.f8250do.equals(f8248new)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f8250do));
        }
        if (!this.f8252if.equals(f8249try)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f8252if));
        }
        if (!this.f8251for.equals(f8247case)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f8251for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
