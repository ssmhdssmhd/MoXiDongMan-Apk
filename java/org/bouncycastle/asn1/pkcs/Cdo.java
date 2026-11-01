package org.bouncycastle.asn1.pkcs;

import android.support.v4.b1;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cif;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;

/* renamed from: org.bouncycastle.asn1.pkcs.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Cgoto f29115do;

    /* renamed from: for, reason: not valid java name */
    private Cclass f29116for;

    /* renamed from: if, reason: not valid java name */
    private b1 f29117if;

    /* renamed from: new, reason: not valid java name */
    private Cthrow f29118new;

    /* renamed from: try, reason: not valid java name */
    private Cif f29119try;

    public Cdo(b1 b1Var, ASN1Encodable aSN1Encodable) throws IOException {
        this(b1Var, aSN1Encodable, null, null);
    }

    public Cdo(b1 b1Var, ASN1Encodable aSN1Encodable, Cthrow cthrow) throws IOException {
        this(b1Var, aSN1Encodable, cthrow, null);
    }

    public Cdo(b1 b1Var, ASN1Encodable aSN1Encodable, Cthrow cthrow, byte[] bArr) throws IOException {
        this.f29115do = new Cgoto(bArr != null ? org.bouncycastle.util.Cdo.f32646if : org.bouncycastle.util.Cdo.f32644do);
        this.f29117if = b1Var;
        this.f29116for = new j(aSN1Encodable);
        this.f29118new = cthrow;
        this.f29119try = bArr == null ? null : new Cinstanceof(bArr);
    }

    private Cdo(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        Cgoto cgotoM33040catch = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f29115do = cgotoM33040catch;
        int iM33099this = m33099this(cgotoM33040catch);
        this.f29117if = b1.m418try(enumerationMo33076super.nextElement());
        this.f29116for = Cclass.m32796catch(enumerationMo33076super.nextElement());
        int i = -1;
        while (enumerationMo33076super.hasMoreElements()) {
            Cimport cimport = (Cimport) enumerationMo33076super.nextElement();
            int tagNo = cimport.getTagNo();
            if (tagNo <= i) {
                throw new IllegalArgumentException("invalid optional field in private key info");
            }
            if (tagNo == 0) {
                this.f29118new = Cthrow.m33152const(cimport, false);
            } else {
                if (tagNo != 1) {
                    throw new IllegalArgumentException("unknown optional field in private key info");
                }
                if (iM33099this < 1) {
                    throw new IllegalArgumentException("'publicKey' requires version v2(1) or later");
                }
                this.f29119try = Cinstanceof.m33069return(cimport, false);
            }
            i = tagNo;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static Cdo m33098case(Cimport cimport, boolean z) {
        return m33100try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: this, reason: not valid java name */
    private static int m33099this(Cgoto cgoto) {
        BigInteger bigIntegerM33044final = cgoto.m33044final();
        if (bigIntegerM33044final.compareTo(org.bouncycastle.util.Cdo.f32644do) < 0 || bigIntegerM33044final.compareTo(org.bouncycastle.util.Cdo.f32646if) > 0) {
            throw new IllegalArgumentException("invalid version for private key info");
        }
        return bigIntegerM33044final.intValue();
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m33100try(Object obj) {
        if (obj instanceof Cdo) {
            return (Cdo) obj;
        }
        if (obj != null) {
            return new Cdo(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m33101break() {
        return this.f29119try != null;
    }

    /* renamed from: catch, reason: not valid java name */
    public ASN1Encodable m33102catch() throws IOException {
        return Cfinal.m33015else(this.f29116for.mo5490const());
    }

    /* renamed from: class, reason: not valid java name */
    public ASN1Encodable m33103class() throws IOException {
        Cif cif = this.f29119try;
        if (cif == null) {
            return null;
        }
        return Cfinal.m33015else(cif.m33059super());
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m33104else() {
        return this.f29117if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cif m33105goto() {
        return this.f29119try;
    }

    /* renamed from: new, reason: not valid java name */
    public Cthrow m33106new() {
        return this.f29118new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
        cimport.m3516do(this.f29115do);
        cimport.m3516do(this.f29117if);
        cimport.m3516do(this.f29116for);
        if (this.f29118new != null) {
            cimport.m3516do(new u(false, 0, this.f29118new));
        }
        if (this.f29119try != null) {
            cimport.m3516do(new u(false, 1, this.f29119try));
        }
        return new n(cimport);
    }
}
