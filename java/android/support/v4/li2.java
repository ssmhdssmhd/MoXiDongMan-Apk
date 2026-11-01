package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class li2 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private final byte[] f3662case;

    /* renamed from: do, reason: not valid java name */
    private final int f3663do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f3664for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f3665if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f3666new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f3667try;

    public li2(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f3663do = i;
        this.f3665if = q3.m6371final(bArr);
        this.f3664for = q3.m6371final(bArr2);
        this.f3666new = q3.m6371final(bArr3);
        this.f3667try = q3.m6371final(bArr4);
        this.f3662case = q3.m6371final(bArr5);
    }

    private li2(Csuper csuper) {
        if (!Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().equals(BigInteger.valueOf(0L))) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        if (csuper.size() != 2 && csuper.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(1));
        this.f3663do = Cgoto.m33040catch(csuperM33129catch.mo33075final(0)).m33044final().intValue();
        this.f3665if = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(1)).mo5490const());
        this.f3664for = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(2)).mo5490const());
        this.f3666new = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(3)).mo5490const());
        this.f3667try = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(4)).mo5490const());
        if (csuper.size() == 3) {
            this.f3662case = q3.m6371final(Cclass.m32797class(Cimport.m33063catch(csuper.mo33075final(2)), true).mo5490const());
        } else {
            this.f3662case = null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static li2 m4685case(Object obj) {
        if (obj instanceof li2) {
            return (li2) obj;
        }
        if (obj != null) {
            return new li2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m4686break() {
        return q3.m6371final(this.f3665if);
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m4687else() {
        return q3.m6371final(this.f3666new);
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m4688goto() {
        return q3.m6371final(this.f3667try);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m4689new() {
        return q3.m6371final(this.f3662case);
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m4690this() {
        return q3.m6371final(this.f3664for);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(0L));
        Cimport cimport2 = new Cimport();
        cimport2.m3516do(new Cgoto(this.f3663do));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f3665if));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f3664for));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f3666new));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f3667try));
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, new org.bouncycastle.asn1.j(this.f3662case)));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public int m4691try() {
        return this.f3663do;
    }
}
