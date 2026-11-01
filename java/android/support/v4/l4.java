package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class l4 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f3533do;

    /* renamed from: if, reason: not valid java name */
    private final m4 f3534if;

    public l4(m4 m4Var) {
        this.f3533do = null;
        this.f3534if = m4Var;
    }

    public l4(Ccatch ccatch) {
        this.f3533do = ccatch;
        this.f3534if = null;
    }

    /* renamed from: try, reason: not valid java name */
    public static l4 m4584try(Object obj) {
        if (obj instanceof l4) {
            return (l4) obj;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof ASN1Encodable) {
            Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof Ccatch) {
                return new l4(Ccatch.m32790throw(aSN1Primitive));
            }
            if (aSN1Primitive instanceof Csuper) {
                return new l4(m4.m4834else(aSN1Primitive));
            }
        }
        if (obj instanceof byte[]) {
            try {
                return m4584try(Cfinal.m33015else((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("unknown encoding in getInstance()");
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public Ccatch m4585case() {
        return this.f3533do;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m4586else() {
        return this.f3533do != null;
    }

    /* renamed from: new, reason: not valid java name */
    public m4 m4587new() {
        return this.f3534if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Ccatch ccatch = this.f3533do;
        return ccatch != null ? ccatch : this.f3534if.toASN1Primitive();
    }
}
