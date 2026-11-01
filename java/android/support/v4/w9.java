package android.support.v4;

import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\n\n\u0002\b\u0005\u001a\u0015\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\f\u001a\r\u0010\u0005\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0007\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\f\u001a\u0015\u0010\b\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\f\u001a\u0015\u0010\t\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\f\u001a\r\u0010\n\u001a\u00020\u0006*\u00020\u0006H\u0087\b¨\u0006\u000b"}, d2 = {"", "other", "do", "try", "else", "for", "", "if", "case", "goto", "new", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class w9 {
    @iz1(version = "1.1")
    @um0
    /* renamed from: case, reason: not valid java name */
    private static final short m9098case(short s, short s2) {
        return (short) (s | s2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: do, reason: not valid java name */
    private static final byte m9099do(byte b, byte b2) {
        return (byte) (b & b2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: else, reason: not valid java name */
    private static final byte m9100else(byte b, byte b2) {
        return (byte) (b ^ b2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: for, reason: not valid java name */
    private static final byte m9101for(byte b) {
        return (byte) (b ^ (-1));
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: goto, reason: not valid java name */
    private static final short m9102goto(short s, short s2) {
        return (short) (s ^ s2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: if, reason: not valid java name */
    private static final short m9103if(short s, short s2) {
        return (short) (s & s2);
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: new, reason: not valid java name */
    private static final short m9104new(short s) {
        return (short) (s ^ (-1));
    }

    @iz1(version = "1.1")
    @um0
    /* renamed from: try, reason: not valid java name */
    private static final byte m9105try(byte b, byte b2) {
        return (byte) (b | b2);
    }
}
