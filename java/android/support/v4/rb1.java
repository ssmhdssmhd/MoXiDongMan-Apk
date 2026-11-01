package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class rb1 extends Cbreak {

    /* renamed from: try, reason: not valid java name */
    private static final BigInteger f5740try = BigInteger.valueOf(0);

    /* renamed from: do, reason: not valid java name */
    private int f5741do;

    /* renamed from: for, reason: not valid java name */
    private int[] f5742for;

    /* renamed from: if, reason: not valid java name */
    private int[] f5743if;

    /* renamed from: new, reason: not valid java name */
    private int[] f5744new;

    public rb1(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        this.f5741do = i;
        this.f5743if = iArr;
        this.f5742for = iArr2;
        this.f5744new = iArr3;
    }

    private rb1(Csuper csuper) {
        if (csuper.size() != 4) {
            throw new IllegalArgumentException("sie of seqOfParams = " + csuper.size());
        }
        this.f5741do = m6897new(((Cgoto) csuper.mo33075final(0)).m33044final());
        Csuper csuper2 = (Csuper) csuper.mo33075final(1);
        Csuper csuper3 = (Csuper) csuper.mo33075final(2);
        Csuper csuper4 = (Csuper) csuper.mo33075final(3);
        if (csuper2.size() != this.f5741do || csuper3.size() != this.f5741do || csuper4.size() != this.f5741do) {
            throw new IllegalArgumentException("invalid size of sequences");
        }
        this.f5743if = new int[csuper2.size()];
        this.f5742for = new int[csuper3.size()];
        this.f5744new = new int[csuper4.size()];
        for (int i = 0; i < this.f5741do; i++) {
            this.f5743if[i] = m6897new(((Cgoto) csuper2.mo33075final(i)).m33044final());
            this.f5742for[i] = m6897new(((Cgoto) csuper3.mo33075final(i)).m33044final());
            this.f5744new[i] = m6897new(((Cgoto) csuper4.mo33075final(i)).m33044final());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static rb1 m6896case(Object obj) {
        if (obj instanceof rb1) {
            return (rb1) obj;
        }
        if (obj != null) {
            return new rb1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m6897new(BigInteger bigInteger) {
        if (bigInteger.compareTo(BigInteger.valueOf(2147483647L)) <= 0 && bigInteger.compareTo(f5740try) > 0) {
            return bigInteger.intValue();
        }
        throw new IllegalArgumentException("BigInteger not in Range: " + bigInteger.toString());
    }

    /* renamed from: else, reason: not valid java name */
    public int[] m6898else() {
        return q3.m6398while(this.f5744new);
    }

    /* renamed from: goto, reason: not valid java name */
    public int m6899goto() {
        return this.f5741do;
    }

    /* renamed from: this, reason: not valid java name */
    public int[] m6900this() {
        return q3.m6398while(this.f5742for);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Cimport cimport2 = new Cimport();
        Cimport cimport3 = new Cimport();
        int i = 0;
        while (true) {
            if (i >= this.f5743if.length) {
                Cimport cimport4 = new Cimport();
                cimport4.m3516do(new Cgoto(this.f5741do));
                cimport4.m3516do(new org.bouncycastle.asn1.n(cimport));
                cimport4.m3516do(new org.bouncycastle.asn1.n(cimport2));
                cimport4.m3516do(new org.bouncycastle.asn1.n(cimport3));
                return new org.bouncycastle.asn1.n(cimport4);
            }
            cimport.m3516do(new Cgoto(r4[i]));
            cimport2.m3516do(new Cgoto(this.f5742for[i]));
            cimport3.m3516do(new Cgoto(this.f5744new[i]));
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public int[] m6901try() {
        return q3.m6398while(this.f5743if);
    }
}
