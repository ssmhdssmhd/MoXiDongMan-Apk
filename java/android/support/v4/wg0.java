package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class wg0 extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    private static final BigInteger f7517new = BigInteger.valueOf(0);

    /* renamed from: do, reason: not valid java name */
    private tg0 f7518do;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f7519for;

    /* renamed from: if, reason: not valid java name */
    private Cgoto f7520if;

    public wg0(tg0 tg0Var) {
        this(tg0Var, null, null);
    }

    public wg0(tg0 tg0Var, BigInteger bigInteger, BigInteger bigInteger2) {
        this.f7518do = tg0Var;
        if (bigInteger2 != null) {
            this.f7519for = new Cgoto(bigInteger2);
        }
        this.f7520if = bigInteger == null ? null : new Cgoto(bigInteger);
    }

    private wg0(Csuper csuper) {
        Cimport cimportM33063catch;
        this.f7518do = tg0.m7877try(csuper.mo33075final(0));
        int size = csuper.size();
        if (size != 1) {
            if (size == 2) {
                cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(1));
                int tagNo = cimportM33063catch.getTagNo();
                if (tagNo == 0) {
                    this.f7520if = Cgoto.m33041class(cimportM33063catch, false);
                    return;
                } else if (tagNo != 1) {
                    throw new IllegalArgumentException("Bad tag number: " + cimportM33063catch.getTagNo());
                }
            } else {
                if (size != 3) {
                    throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
                }
                Cimport cimportM33063catch2 = Cimport.m33063catch(csuper.mo33075final(1));
                if (cimportM33063catch2.getTagNo() != 0) {
                    throw new IllegalArgumentException("Bad tag number for 'minimum': " + cimportM33063catch2.getTagNo());
                }
                this.f7520if = Cgoto.m33041class(cimportM33063catch2, false);
                cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(2));
                if (cimportM33063catch.getTagNo() != 1) {
                    throw new IllegalArgumentException("Bad tag number for 'maximum': " + cimportM33063catch.getTagNo());
                }
            }
            this.f7519for = Cgoto.m33041class(cimportM33063catch, false);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static wg0 m9144case(Cimport cimport, boolean z) {
        return new wg0(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static wg0 m9145try(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj instanceof wg0 ? (wg0) obj : new wg0(Csuper.m33129catch(obj));
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m9146else() {
        Cgoto cgoto = this.f7519for;
        if (cgoto == null) {
            return null;
        }
        return cgoto.m33044final();
    }

    /* renamed from: goto, reason: not valid java name */
    public BigInteger m9147goto() {
        Cgoto cgoto = this.f7520if;
        return cgoto == null ? f7517new : cgoto.m33044final();
    }

    /* renamed from: new, reason: not valid java name */
    public tg0 m9148new() {
        return this.f7518do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f7518do);
        Cgoto cgoto = this.f7520if;
        if (cgoto != null && !cgoto.m33044final().equals(f7517new)) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f7520if));
        }
        if (this.f7519for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f7519for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
