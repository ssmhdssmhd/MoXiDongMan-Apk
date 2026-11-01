package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class pr extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f5172do;

    public pr(v4 v4Var) {
        this.f5172do = new org.bouncycastle.asn1.n(v4Var);
    }

    private pr(Csuper csuper) {
        this.f5172do = csuper;
    }

    public pr(v4[] v4VarArr) {
        Cimport cimport = new Cimport();
        for (v4 v4Var : v4VarArr) {
            cimport.m3516do(v4Var);
        }
        this.f5172do = new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: new, reason: not valid java name */
    public static pr m6194new(Object obj) {
        if (obj instanceof pr) {
            return (pr) obj;
        }
        if (obj != null) {
            return new pr(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f5172do;
    }

    /* renamed from: try, reason: not valid java name */
    public v4[] m6195try() {
        int size = this.f5172do.size();
        v4[] v4VarArr = new v4[size];
        for (int i = 0; i != size; i++) {
            v4VarArr[i] = v4.m8743new(this.f5172do.mo33075final(i));
        }
        return v4VarArr;
    }
}
