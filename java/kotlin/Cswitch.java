package kotlin;

import android.support.v4.ab2;
import android.support.v4.gf2;
import android.support.v4.iz1;
import android.support.v4.um0;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0010\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\n\n\u0002\b\b\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0006\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0014\u0010\b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\r\u0010\u000b\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\f\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\r\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\u000e\u001a\u00020\n*\u00020\nH\u0087\b\u001a\r\u0010\u000f\u001a\u00020\n*\u00020\nH\u0087\b\u001a\u0014\u0010\u0010\u001a\u00020\n*\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0001H\u0007¨\u0006\u0012"}, d2 = {"", "", "i0", "g0", "k0", "q0", "s0", "bitCount", "m0", "o0", "", "j0", "h0", "l0", "r0", "t0", "n0", "p0", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/NumbersKt")
/* renamed from: kotlin.switch, reason: invalid class name */
/* loaded from: classes3.dex */
class Cswitch extends Cstatic {
    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final int g0(byte b) {
        return Integer.numberOfLeadingZeros(b & 255) - 24;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final int h0(short s) {
        return Integer.numberOfLeadingZeros(s & ab2.f80for) - 16;
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final int i0(byte b) {
        return Integer.bitCount(b & 255);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final int j0(short s) {
        return Integer.bitCount(s & ab2.f80for);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final int k0(byte b) {
        return Integer.numberOfTrailingZeros(b | 256);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final int l0(short s) {
        return Integer.numberOfTrailingZeros(s | 65536);
    }

    @iz1(version = "1.3")
    @Cthis
    public static final byte m0(byte b, int i) {
        int i2 = i & 7;
        return (byte) (((b & 255) >>> (8 - i2)) | (b << i2));
    }

    @iz1(version = "1.3")
    @Cthis
    public static final short n0(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & 65535) >>> (16 - i2)) | (s << i2));
    }

    @iz1(version = "1.3")
    @Cthis
    public static final byte o0(byte b, int i) {
        int i2 = i & 7;
        return (byte) (((b & 255) >>> i2) | (b << (8 - i2)));
    }

    @iz1(version = "1.3")
    @Cthis
    public static final short p0(short s, int i) {
        int i2 = i & 15;
        return (short) (((s & 65535) >>> i2) | (s << (16 - i2)));
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final byte q0(byte b) {
        return (byte) Integer.highestOneBit(b & 255);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final short r0(short s) {
        return (short) Integer.highestOneBit(s & ab2.f80for);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final byte s0(byte b) {
        return (byte) Integer.lowestOneBit(b);
    }

    @gf2(markerClass = {Cthis.class})
    @iz1(version = "1.4")
    @um0
    private static final short t0(short s) {
        return (short) Integer.lowestOneBit(s);
    }
}
