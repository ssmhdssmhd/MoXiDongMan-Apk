package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;

/* loaded from: classes3.dex */
public class o50 extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    private static final b1 f4421new = new b1(NISTObjectIdentifiers.id_sha256);

    /* renamed from: do, reason: not valid java name */
    private b1 f4422do;

    /* renamed from: for, reason: not valid java name */
    private co0 f4423for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f4424if;

    public o50(b1 b1Var, byte[] bArr) {
        this(b1Var, bArr, null);
    }

    public o50(b1 b1Var, byte[] bArr, co0 co0Var) {
        this.f4422do = b1Var == null ? f4421new : b1Var;
        this.f4424if = q3.m6371final(bArr);
        this.f4423for = co0Var;
    }

    private o50(Csuper csuper) {
        if (csuper.size() > 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        int i = 0;
        if (csuper.mo33075final(0) instanceof Cclass) {
            this.f4422do = f4421new;
        } else {
            this.f4422do = b1.m418try(csuper.mo33075final(0).toASN1Primitive());
            i = 1;
        }
        int i2 = i + 1;
        this.f4424if = Cclass.m32796catch(csuper.mo33075final(i).toASN1Primitive()).mo5490const();
        if (csuper.size() > i2) {
            this.f4423for = co0.m980new(csuper.mo33075final(i2));
        }
    }

    public o50(byte[] bArr) {
        this(null, bArr, null);
    }

    public o50(byte[] bArr, co0 co0Var) {
        this(null, bArr, co0Var);
    }

    /* renamed from: case, reason: not valid java name */
    public static o50 m5474case(Object obj) {
        if (obj instanceof o50) {
            return (o50) obj;
        }
        if (obj != null) {
            return new o50(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public co0 m5475else() {
        return this.f4423for;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m5476new() {
        return q3.m6371final(this.f4424if);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (!this.f4422do.equals(f4421new)) {
            cimport.m3516do(this.f4422do);
        }
        cimport.m3516do(new org.bouncycastle.asn1.j(this.f4424if).toASN1Primitive());
        co0 co0Var = this.f4423for;
        if (co0Var != null) {
            cimport.m3516do(co0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m5477try() {
        return this.f4422do;
    }
}
