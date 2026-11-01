package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ig extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f2745do;

    public ig(jg jgVar) {
        this.f2745do = new org.bouncycastle.asn1.n(jgVar);
    }

    private ig(Csuper csuper) {
        this.f2745do = csuper;
    }

    public ig(jg[] jgVarArr) {
        Cimport cimport = new Cimport();
        for (jg jgVar : jgVarArr) {
            cimport.m3516do(jgVar);
        }
        this.f2745do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: new, reason: not valid java name */
    public static ig m3414new(Object obj) {
        if (obj instanceof ig) {
            return (ig) obj;
        }
        if (obj != null) {
            return new ig(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2745do;
    }

    /* renamed from: try, reason: not valid java name */
    public jg[] m3415try() {
        int size = this.f2745do.size();
        jg[] jgVarArr = new jg[size];
        for (int i = 0; i != size; i++) {
            jgVarArr[i] = jg.m3854case(this.f2745do.mo33075final(i));
        }
        return jgVarArr;
    }
}
