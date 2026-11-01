package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class jk1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final b1 f3124case;

    /* renamed from: else, reason: not valid java name */
    public static final Cgoto f3125else;

    /* renamed from: goto, reason: not valid java name */
    public static final Cgoto f3126goto;

    /* renamed from: try, reason: not valid java name */
    public static final b1 f3127try;

    /* renamed from: do, reason: not valid java name */
    private b1 f3128do;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f3129for;

    /* renamed from: if, reason: not valid java name */
    private b1 f3130if;

    /* renamed from: new, reason: not valid java name */
    private Cgoto f3131new;

    static {
        b1 b1Var = new b1(OIWObjectIdentifiers.idSHA1, org.bouncycastle.asn1.h.f29080do);
        f3127try = b1Var;
        f3124case = new b1(PKCSObjectIdentifiers.id_mgf1, b1Var);
        f3125else = new Cgoto(20L);
        f3126goto = new Cgoto(1L);
    }

    public jk1() {
        this.f3128do = f3127try;
        this.f3130if = f3124case;
        this.f3129for = f3125else;
        this.f3131new = f3126goto;
    }

    public jk1(b1 b1Var, b1 b1Var2, Cgoto cgoto, Cgoto cgoto2) {
        this.f3128do = b1Var;
        this.f3130if = b1Var2;
        this.f3129for = cgoto;
        this.f3131new = cgoto2;
    }

    private jk1(Csuper csuper) {
        this.f3128do = f3127try;
        this.f3130if = f3124case;
        this.f3129for = f3125else;
        this.f3131new = f3126goto;
        for (int i = 0; i != csuper.size(); i++) {
            Cimport cimport = (Cimport) csuper.mo33075final(i);
            int tagNo = cimport.getTagNo();
            if (tagNo == 0) {
                this.f3128do = b1.m417case(cimport, true);
            } else if (tagNo == 1) {
                this.f3130if = b1.m417case(cimport, true);
            } else if (tagNo == 2) {
                this.f3129for = Cgoto.m33041class(cimport, true);
            } else {
                if (tagNo != 3) {
                    throw new IllegalArgumentException("unknown tag");
                }
                this.f3131new = Cgoto.m33041class(cimport, true);
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static jk1 m3909try(Object obj) {
        if (obj instanceof jk1) {
            return (jk1) obj;
        }
        if (obj != null) {
            return new jk1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m3910case() {
        return this.f3130if;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m3911else() {
        return this.f3129for.m33044final();
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m3912goto() {
        return this.f3131new.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m3913new() {
        return this.f3128do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (!this.f3128do.equals(f3127try)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, this.f3128do));
        }
        if (!this.f3130if.equals(f3124case)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, this.f3130if));
        }
        if (!this.f3129for.equals(f3125else)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 2, this.f3129for));
        }
        if (!this.f3131new.equals(f3126goto)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 3, this.f3131new));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
