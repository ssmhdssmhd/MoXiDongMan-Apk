package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bb1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f402do;

    private bb1(Csuper csuper) {
        this.f402do = csuper;
    }

    /* renamed from: new, reason: not valid java name */
    public static bb1 m502new(Object obj) {
        if (obj instanceof bb1) {
            return (bb1) obj;
        }
        if (obj != null) {
            return new bb1(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f402do;
    }

    /* renamed from: try, reason: not valid java name */
    public eh[] m503try() {
        int size = this.f402do.size();
        eh[] ehVarArr = new eh[size];
        for (int i = 0; i != size; i++) {
            ehVarArr[i] = eh.m1877case(this.f402do.mo33075final(i));
        }
        return ehVarArr;
    }
}
