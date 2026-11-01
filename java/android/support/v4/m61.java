package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class m61 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f3847do;

    private m61(Csuper csuper) {
        if (csuper.size() != 1) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        Csuper csuper2 = (Csuper) csuper.mo33075final(0);
        this.f3847do = csuper2;
        Enumeration enumerationMo33076super = csuper2.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            n61.m5108new(enumerationMo33076super.nextElement());
        }
    }

    public m61(n61[] n61VarArr) {
        this.f3847do = new org.bouncycastle.asn1.n(n61VarArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static m61 m4854new(Object obj) {
        if (obj instanceof m61) {
            return (m61) obj;
        }
        if (obj != null) {
            return new m61(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(this.f3847do);
    }

    /* renamed from: try, reason: not valid java name */
    public n61[] m4855try() {
        int size = this.f3847do.size();
        n61[] n61VarArr = new n61[size];
        for (int i = 0; i < size; i++) {
            n61VarArr[i] = n61.m5108new(this.f3847do.mo33075final(i));
        }
        return n61VarArr;
    }
}
