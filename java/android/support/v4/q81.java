package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;

/* loaded from: classes3.dex */
public class q81 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private ASN1Encodable f5301do;

    /* renamed from: if, reason: not valid java name */
    private co0 f5302if;

    public q81(b1 b1Var, byte[] bArr) {
        this.f5301do = new v00(b1Var, bArr);
    }

    public q81(b1 b1Var, byte[] bArr, co0 co0Var) {
        this.f5301do = new v00(b1Var, bArr);
        this.f5302if = co0Var;
    }

    private q81(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        boolean z = csuper.mo33075final(0).toASN1Primitive() instanceof Cclass;
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(0);
        this.f5301do = z ? Cclass.m32796catch(aSN1EncodableMo33075final) : v00.m8707case(aSN1EncodableMo33075final);
        if (csuper.size() > 1) {
            this.f5302if = co0.m980new(csuper.mo33075final(1));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static q81 m6441case(Object obj) {
        if (obj instanceof q81) {
            return (q81) obj;
        }
        if (obj != null) {
            return new q81(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public co0 m6442else() {
        return this.f5302if;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m6443new() {
        return this.f5301do.toASN1Primitive() instanceof Cclass ? new b1(OIWObjectIdentifiers.idSHA1) : v00.m8707case(this.f5301do).m8709new();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5301do);
        co0 co0Var = this.f5302if;
        if (co0Var != null) {
            cimport.m3516do(co0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m6444try() {
        return this.f5301do.toASN1Primitive() instanceof Cclass ? ((Cclass) this.f5301do.toASN1Primitive()).mo5490const() : v00.m8707case(this.f5301do).m8710try();
    }
}
