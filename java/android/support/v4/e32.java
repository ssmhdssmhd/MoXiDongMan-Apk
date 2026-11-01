package android.support.v4;

import org.bouncycastle.asn1.Cgoto;

/* loaded from: classes3.dex */
public class e32 extends Cgoto {

    /* renamed from: if, reason: not valid java name */
    public static final e32 f1244if = new e32(0);

    /* renamed from: for, reason: not valid java name */
    public static final e32 f1243for = new e32(1);

    private e32(int i) {
        super(i);
    }

    /* renamed from: throw, reason: not valid java name */
    public static e32 m1643throw(int i) {
        if (i == 0) {
            return f1244if;
        }
        if (i == 1) {
            return f1243for;
        }
        throw new IllegalArgumentException("unknown value: " + i);
    }
}
