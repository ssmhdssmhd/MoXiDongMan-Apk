package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class nd2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final s41 f4178do;

    /* renamed from: if, reason: not valid java name */
    private final i10 f4179if;

    public nd2(s41 s41Var, i10 i10Var) {
        this.f4178do = s41Var;
        this.f4179if = i10Var;
    }

    public nd2(s41 s41Var, String str) {
        this(s41Var, new i10(str));
    }

    private nd2(Csuper csuper) {
        if (csuper.size() == 2) {
            this.f4178do = s41.m7260try(csuper.mo33075final(0));
            this.f4179if = i10.m3197new(csuper.mo33075final(1));
            return;
        }
        if (csuper.size() == 1) {
            boolean z = csuper.mo33075final(0).toASN1Primitive() instanceof Csuper;
            ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(0);
            if (!z) {
                this.f4179if = i10.m3197new(aSN1EncodableMo33075final);
                this.f4178do = null;
                return;
            }
            this.f4178do = s41.m7260try(aSN1EncodableMo33075final);
        } else {
            if (csuper.size() != 0) {
                throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
            }
            this.f4178do = null;
        }
        this.f4179if = null;
    }

    /* renamed from: try, reason: not valid java name */
    public static nd2 m5151try(Object obj) {
        if (obj instanceof nd2) {
            return (nd2) obj;
        }
        if (obj != null) {
            return new nd2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public s41 m5152case() {
        return this.f4178do;
    }

    /* renamed from: new, reason: not valid java name */
    public i10 m5153new() {
        return this.f4179if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        s41 s41Var = this.f4178do;
        if (s41Var != null) {
            cimport.m3516do(s41Var);
        }
        i10 i10Var = this.f4179if;
        if (i10Var != null) {
            cimport.m3516do(i10Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
