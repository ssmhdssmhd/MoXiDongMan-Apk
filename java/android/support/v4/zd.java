package android.support.v4;

import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zd {

    /* renamed from: do, reason: not valid java name */
    private final byte[][] f8516do;

    /* renamed from: for, reason: not valid java name */
    private final int f8517for;

    /* renamed from: if, reason: not valid java name */
    private final int f8518if;

    public zd(int i, int i2) {
        this.f8516do = (byte[][]) Array.newInstance((Class<?>) byte.class, i2, i);
        this.f8518if = i;
        this.f8517for = i2;
    }

    /* renamed from: case, reason: not valid java name */
    public void m10153case(int i, int i2, byte b) {
        this.f8516do[i2][i] = b;
    }

    /* renamed from: do, reason: not valid java name */
    public void m10154do(byte b) {
        for (byte[] bArr : this.f8516do) {
            Arrays.fill(bArr, b);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m10155else(int i, int i2, int i3) {
        this.f8516do[i2][i] = (byte) i3;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[][] m10156for() {
        return this.f8516do;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m10157goto(int i, int i2, boolean z) {
        this.f8516do[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: if, reason: not valid java name */
    public byte m10158if(int i, int i2) {
        return this.f8516do[i2][i];
    }

    /* renamed from: new, reason: not valid java name */
    public int m10159new() {
        return this.f8517for;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.f8518if * 2 * this.f8517for) + 2);
        for (int i = 0; i < this.f8517for; i++) {
            byte[] bArr = this.f8516do[i];
            for (int i2 = 0; i2 < this.f8518if; i2++) {
                byte b = bArr[i2];
                if (b == 0) {
                    sb.append(" 0");
                } else if (b != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public int m10160try() {
        return this.f8518if;
    }
}
