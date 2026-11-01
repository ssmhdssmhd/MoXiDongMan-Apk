package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ji2 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final Cgoto f3113do;

    /* renamed from: for, reason: not valid java name */
    private final int f3114for;

    /* renamed from: if, reason: not valid java name */
    private final int f3115if;

    /* renamed from: new, reason: not valid java name */
    private final b1 f3116new;

    public ji2(int i, int i2, b1 b1Var) {
        this.f3113do = new Cgoto(0L);
        this.f3115if = i;
        this.f3114for = i2;
        this.f3116new = b1Var;
    }

    private ji2(Csuper csuper) {
        this.f3113do = Cgoto.m33040catch(csuper.mo33075final(0));
        this.f3115if = Cgoto.m33040catch(csuper.mo33075final(1)).m33044final().intValue();
        this.f3114for = Cgoto.m33040catch(csuper.mo33075final(2)).m33044final().intValue();
        this.f3116new = b1.m418try(csuper.mo33075final(3));
    }

    /* renamed from: try, reason: not valid java name */
    public static ji2 m3903try(Object obj) {
        if (obj instanceof ji2) {
            return (ji2) obj;
        }
        if (obj != null) {
            return new ji2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public int m3904case() {
        return this.f3114for;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m3905else() {
        return this.f3116new;
    }

    /* renamed from: new, reason: not valid java name */
    public int m3906new() {
        return this.f3115if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f3113do);
        cimport.m3516do(new Cgoto(this.f3115if));
        cimport.m3516do(new Cgoto(this.f3114for));
        cimport.m3516do(this.f3116new);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
