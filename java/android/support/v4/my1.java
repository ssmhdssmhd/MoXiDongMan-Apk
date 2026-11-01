package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class my1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final tg1 f4092do;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f4093if;

    private my1(Csuper csuper) {
        this.f4093if = csuper;
        this.f4092do = tg1.m7879try(csuper.mo33075final(0));
    }

    /* renamed from: new, reason: not valid java name */
    public static my1 m5054new(Object obj) {
        if (obj instanceof my1) {
            return (my1) obj;
        }
        if (obj != null) {
            return new my1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public Cinstanceof m5055case() {
        return Cinstanceof.m33068public(this.f4093if.mo33075final(2));
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m5056else() {
        return b1.m418try(this.f4093if.mo33075final(1));
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4093if;
    }

    /* renamed from: try, reason: not valid java name */
    public tg1 m5057try() {
        return this.f4092do;
    }
}
