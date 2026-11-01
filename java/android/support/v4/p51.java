package android.support.v4;

import android.support.v4.q3;
import java.util.Iterator;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.Iterable;

/* loaded from: classes3.dex */
public class p51 extends Cbreak implements Iterable<ASN1Encodable> {

    /* renamed from: do, reason: not valid java name */
    private final ASN1Encodable[] f4858do;

    private p51(Csuper csuper) {
        this.f4858do = new ASN1Encodable[csuper.size()];
        int i = 0;
        while (true) {
            ASN1Encodable[] aSN1EncodableArr = this.f4858do;
            if (i == aSN1EncodableArr.length) {
                return;
            }
            aSN1EncodableArr[i] = o51.m5478goto(csuper.mo33075final(i));
            i++;
        }
    }

    public p51(o51[] o51VarArr) {
        ASN1Encodable[] aSN1EncodableArr = new ASN1Encodable[o51VarArr.length];
        this.f4858do = aSN1EncodableArr;
        System.arraycopy(o51VarArr, 0, aSN1EncodableArr, 0, o51VarArr.length);
    }

    /* renamed from: new, reason: not valid java name */
    public static p51 m5879new(Object obj) {
        if (obj instanceof p51) {
            return (p51) obj;
        }
        if (obj != null) {
            return new p51(Csuper.m33129catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.util.Iterable, java.lang.Iterable
    public Iterator<ASN1Encodable> iterator() {
        return new q3.Cdo(this.f4858do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(this.f4858do);
    }
}
