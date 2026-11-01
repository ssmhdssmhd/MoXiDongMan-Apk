package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class m51 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f3841do;

    /* renamed from: for, reason: not valid java name */
    private Cinstanceof f3842for;

    /* renamed from: if, reason: not valid java name */
    private dg f3843if;

    public m51(b1 b1Var, dg dgVar, Cinstanceof cinstanceof) {
        this.f3841do = b1Var;
        this.f3843if = dgVar;
        this.f3842for = cinstanceof;
    }

    public m51(b1 b1Var, dg dgVar, byte[] bArr) {
        this(b1Var, dgVar, new Cinstanceof(bArr));
    }

    private m51(Csuper csuper) {
        int size = csuper.size() - 1;
        this.f3842for = Cinstanceof.m33068public(csuper.mo33075final(size));
        for (int i = size - 1; i >= 0; i--) {
            Cimport cimport = (Cimport) csuper.mo33075final(i);
            if (cimport.getTagNo() == 0) {
                this.f3841do = b1.m417case(cimport, true);
            } else {
                this.f3843if = dg.m1331try(cimport, true);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static m51 m4848goto(Object obj) {
        if (obj instanceof m51) {
            return (m51) obj;
        }
        if (obj != null) {
            return new m51(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m4849new(Cimport cimport, int i, ASN1Encodable aSN1Encodable) {
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, i, aSN1Encodable));
        }
    }

    /* renamed from: case, reason: not valid java name */
    public b1 m4850case() {
        return this.f3841do;
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m4851else() {
        return this.f3842for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        m4849new(cimport, 0, this.f3841do);
        m4849new(cimport, 1, this.f3843if);
        cimport.m3516do(this.f3842for);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public dg m4852try() {
        return this.f3843if;
    }
}
