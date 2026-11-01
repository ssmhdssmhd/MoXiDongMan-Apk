package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class na1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final k42[] f4155do;

    /* renamed from: for, reason: not valid java name */
    private final m42[] f4156for;

    /* renamed from: if, reason: not valid java name */
    private final n42[] f4157if;

    /* renamed from: new, reason: not valid java name */
    private final v81[] f4158new;

    private na1(Csuper csuper) {
        if (csuper.size() != 4) {
            throw new IllegalArgumentException("Sequence not 4 elements.");
        }
        int i = 0;
        Csuper csuper2 = (Csuper) csuper.mo33075final(0);
        this.f4155do = new k42[csuper2.size()];
        int i2 = 0;
        while (true) {
            k42[] k42VarArr = this.f4155do;
            if (i2 >= k42VarArr.length) {
                break;
            }
            k42VarArr[i2] = k42.m4238else(csuper2.mo33075final(i2));
            i2++;
        }
        Csuper csuper3 = (Csuper) csuper.mo33075final(1);
        this.f4157if = new n42[csuper3.size()];
        int i3 = 0;
        while (true) {
            n42[] n42VarArr = this.f4157if;
            if (i3 >= n42VarArr.length) {
                break;
            }
            n42VarArr[i3] = n42.m5085new(csuper3.mo33075final(i3));
            i3++;
        }
        Csuper csuper4 = (Csuper) csuper.mo33075final(2);
        this.f4156for = new m42[csuper4.size()];
        int i4 = 0;
        while (true) {
            m42[] m42VarArr = this.f4156for;
            if (i4 >= m42VarArr.length) {
                break;
            }
            m42VarArr[i4] = m42.m4839case(csuper4.mo33075final(i4));
            i4++;
        }
        Csuper csuper5 = (Csuper) csuper.mo33075final(3);
        this.f4158new = new v81[csuper5.size()];
        while (true) {
            v81[] v81VarArr = this.f4158new;
            if (i >= v81VarArr.length) {
                return;
            }
            v81VarArr[i] = v81.m8778try(csuper5.mo33075final(i));
            i++;
        }
    }

    public na1(k42[] k42VarArr, n42[] n42VarArr, m42[] m42VarArr, v81[] v81VarArr) {
        this.f4155do = m5138try(k42VarArr);
        this.f4157if = m5136else(n42VarArr);
        this.f4156for = m5135case(m42VarArr);
        this.f4158new = m5137new(v81VarArr);
    }

    /* renamed from: break, reason: not valid java name */
    public static na1 m5134break(Object obj) {
        if (obj instanceof na1) {
            return (na1) obj;
        }
        if (obj != null) {
            return new na1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    private m42[] m5135case(m42[] m42VarArr) {
        int length = m42VarArr.length;
        m42[] m42VarArr2 = new m42[length];
        System.arraycopy(m42VarArr, 0, m42VarArr2, 0, length);
        return m42VarArr2;
    }

    /* renamed from: else, reason: not valid java name */
    private n42[] m5136else(n42[] n42VarArr) {
        int length = n42VarArr.length;
        n42[] n42VarArr2 = new n42[length];
        System.arraycopy(n42VarArr, 0, n42VarArr2, 0, length);
        return n42VarArr2;
    }

    /* renamed from: new, reason: not valid java name */
    private v81[] m5137new(v81[] v81VarArr) {
        int length = v81VarArr.length;
        v81[] v81VarArr2 = new v81[length];
        System.arraycopy(v81VarArr, 0, v81VarArr2, 0, length);
        return v81VarArr2;
    }

    /* renamed from: try, reason: not valid java name */
    private k42[] m5138try(k42[] k42VarArr) {
        int length = k42VarArr.length;
        k42[] k42VarArr2 = new k42[length];
        System.arraycopy(k42VarArr, 0, k42VarArr2, 0, length);
        return k42VarArr2;
    }

    /* renamed from: catch, reason: not valid java name */
    public v81[] m5139catch() {
        return m5137new(this.f4158new);
    }

    /* renamed from: class, reason: not valid java name */
    public n42[] m5140class() {
        return m5136else(this.f4157if);
    }

    /* renamed from: goto, reason: not valid java name */
    public m42[] m5141goto() {
        return m5135case(this.f4156for);
    }

    /* renamed from: this, reason: not valid java name */
    public k42[] m5142this() {
        return m5138try(this.f4155do);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.n(new ASN1Encodable[]{new org.bouncycastle.asn1.n(this.f4155do), new org.bouncycastle.asn1.n(this.f4157if), new org.bouncycastle.asn1.n(this.f4156for), new org.bouncycastle.asn1.n(this.f4158new)});
    }
}
