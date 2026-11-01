package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class n70 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final o70 f4136do;

    /* renamed from: if, reason: not valid java name */
    private final rg[] f4137if;

    public n70(o70 o70Var, rg[] rgVarArr) {
        this.f4136do = o70Var;
        rg[] rgVarArr2 = new rg[rgVarArr.length];
        this.f4137if = rgVarArr2;
        System.arraycopy(rgVarArr, 0, rgVarArr2, 0, rgVarArr.length);
    }

    private n70(Csuper csuper) {
        int i = 0;
        this.f4136do = o70.m5495case(csuper.mo33075final(0));
        Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(1));
        this.f4137if = new rg[csuperM33129catch.size()];
        while (true) {
            rg[] rgVarArr = this.f4137if;
            if (i == rgVarArr.length) {
                return;
            }
            rgVarArr[i] = rg.m6956try(csuperM33129catch.mo33075final(i));
            i++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static n70 m5118case(Object obj) {
        if (obj instanceof n70) {
            return (n70) obj;
        }
        if (obj != null) {
            return new n70(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public rg[] m5119new() {
        rg[] rgVarArr = this.f4137if;
        rg[] rgVarArr2 = new rg[rgVarArr.length];
        System.arraycopy(rgVarArr, 0, rgVarArr2, 0, rgVarArr.length);
        return rgVarArr2;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f4136do);
        cimport.m3516do(new org.bouncycastle.asn1.n(this.f4137if));
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public o70 m5120try() {
        return this.f4136do;
    }
}
