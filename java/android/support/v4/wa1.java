package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class wa1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f7433case = 4;

    /* renamed from: else, reason: not valid java name */
    public static final int f7437else = 5;

    /* renamed from: for, reason: not valid java name */
    public static final int f7439for = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f7440goto = 6;

    /* renamed from: if, reason: not valid java name */
    public static final int f7441if = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f7442new = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f7445try = 3;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f7446do;

    /* renamed from: this, reason: not valid java name */
    public static final wa1 f7444this = new wa1(0);

    /* renamed from: break, reason: not valid java name */
    public static final wa1 f7432break = new wa1(1);

    /* renamed from: catch, reason: not valid java name */
    public static final wa1 f7434catch = new wa1(2);

    /* renamed from: class, reason: not valid java name */
    public static final wa1 f7435class = new wa1(3);

    /* renamed from: const, reason: not valid java name */
    public static final wa1 f7436const = new wa1(4);

    /* renamed from: final, reason: not valid java name */
    public static final wa1 f7438final = new wa1(5);

    /* renamed from: super, reason: not valid java name */
    public static final wa1 f7443super = new wa1(6);

    private wa1(int i) {
        this(new Cgoto(i));
    }

    private wa1(Cgoto cgoto) {
        this.f7446do = cgoto;
    }

    /* renamed from: new, reason: not valid java name */
    public static wa1 m9110new(Object obj) {
        if (obj instanceof wa1) {
            return (wa1) obj;
        }
        if (obj != null) {
            return new wa1(Cgoto.m33040catch(obj));
        }
        return null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7446do;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m9111try() {
        return this.f7446do.m33044final();
    }
}
