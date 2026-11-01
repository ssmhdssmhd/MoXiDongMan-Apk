package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class oi2 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private final byte[] f4639case;

    /* renamed from: do, reason: not valid java name */
    private final int f4640do;

    /* renamed from: for, reason: not valid java name */
    private final byte[] f4641for;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f4642if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f4643new;

    /* renamed from: try, reason: not valid java name */
    private final byte[] f4644try;

    public oi2(int i, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        this.f4640do = i;
        this.f4642if = q3.m6371final(bArr);
        this.f4641for = q3.m6371final(bArr2);
        this.f4643new = q3.m6371final(bArr3);
        this.f4644try = q3.m6371final(bArr4);
        this.f4639case = q3.m6371final(bArr5);
    }

    private oi2(Csuper csuper) {
        if (!Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().equals(BigInteger.valueOf(0L))) {
            throw new IllegalArgumentException("unknown version of sequence");
        }
        if (csuper.size() != 2 && csuper.size() != 3) {
            throw new IllegalArgumentException("key sequence wrong size");
        }
        Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(1));
        this.f4640do = Cgoto.m33040catch(csuperM33129catch.mo33075final(0)).m33044final().intValue();
        this.f4642if = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(1)).mo5490const());
        this.f4641for = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(2)).mo5490const());
        this.f4643new = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(3)).mo5490const());
        this.f4644try = q3.m6371final(Cclass.m32796catch(csuperM33129catch.mo33075final(4)).mo5490const());
        if (csuper.size() == 3) {
            this.f4639case = q3.m6371final(Cclass.m32797class(Cimport.m33063catch(csuper.mo33075final(2)), true).mo5490const());
        } else {
            this.f4639case = null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static oi2 m5664case(Object obj) {
        if (obj instanceof oi2) {
            return (oi2) obj;
        }
        if (obj != null) {
            return new oi2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public byte[] m5665break() {
        return q3.m6371final(this.f4642if);
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m5666else() {
        return q3.m6371final(this.f4643new);
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m5667goto() {
        return q3.m6371final(this.f4644try);
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5668new() {
        return q3.m6371final(this.f4639case);
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m5669this() {
        return q3.m6371final(this.f4641for);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(0L));
        Cimport cimport2 = new Cimport();
        cimport2.m3516do(new Cgoto(this.f4640do));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f4642if));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f4641for));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f4643new));
        cimport2.m3516do(new org.bouncycastle.asn1.j(this.f4644try));
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, new org.bouncycastle.asn1.j(this.f4639case)));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public int m5670try() {
        return this.f4640do;
    }
}
