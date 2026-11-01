package android.support.v4;

import java.util.Arrays;

/* loaded from: classes2.dex */
public class ty {

    /* renamed from: do, reason: not valid java name */
    private final CharSequence f6703do;

    /* renamed from: for, reason: not valid java name */
    private final int f6704for;

    /* renamed from: if, reason: not valid java name */
    private final int f6705if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f6706new;

    public ty(CharSequence charSequence, int i, int i2) {
        this.f6703do = charSequence;
        this.f6704for = i;
        this.f6705if = i2;
        byte[] bArr = new byte[i * i2];
        this.f6706new = bArr;
        Arrays.fill(bArr, (byte) -1);
    }

    /* renamed from: break, reason: not valid java name */
    private void m8146break(int i, int i2, int i3, int i4) {
        if (i < 0) {
            int i5 = this.f6705if;
            i += i5;
            i2 += 4 - ((i5 + 4) % 8);
        }
        if (i2 < 0) {
            int i6 = this.f6704for;
            i2 += i6;
            i += 4 - ((i6 + 4) % 8);
        }
        m8147class(i2, i, (this.f6703do.charAt(i3) & (1 << (8 - i4))) != 0);
    }

    /* renamed from: class, reason: not valid java name */
    private void m8147class(int i, int i2, boolean z) {
        this.f6706new[(i2 * this.f6704for) + i] = z ? (byte) 1 : (byte) 0;
    }

    /* renamed from: const, reason: not valid java name */
    private void m8148const(int i, int i2, int i3) {
        int i4 = i - 2;
        int i5 = i2 - 2;
        m8146break(i4, i5, i3, 1);
        int i6 = i2 - 1;
        m8146break(i4, i6, i3, 2);
        int i7 = i - 1;
        m8146break(i7, i5, i3, 3);
        m8146break(i7, i6, i3, 4);
        m8146break(i7, i2, i3, 5);
        m8146break(i, i5, i3, 6);
        m8146break(i, i6, i3, 7);
        m8146break(i, i2, i3, 8);
    }

    /* renamed from: do, reason: not valid java name */
    private void m8149do(int i) {
        m8146break(this.f6705if - 1, 0, i, 1);
        m8146break(this.f6705if - 1, 1, i, 2);
        m8146break(this.f6705if - 1, 2, i, 3);
        m8146break(0, this.f6704for - 2, i, 4);
        m8146break(0, this.f6704for - 1, i, 5);
        m8146break(1, this.f6704for - 1, i, 6);
        m8146break(2, this.f6704for - 1, i, 7);
        m8146break(3, this.f6704for - 1, i, 8);
    }

    /* renamed from: for, reason: not valid java name */
    private void m8150for(int i) {
        m8146break(this.f6705if - 3, 0, i, 1);
        m8146break(this.f6705if - 2, 0, i, 2);
        m8146break(this.f6705if - 1, 0, i, 3);
        m8146break(0, this.f6704for - 2, i, 4);
        m8146break(0, this.f6704for - 1, i, 5);
        m8146break(1, this.f6704for - 1, i, 6);
        m8146break(2, this.f6704for - 1, i, 7);
        m8146break(3, this.f6704for - 1, i, 8);
    }

    /* renamed from: if, reason: not valid java name */
    private void m8151if(int i) {
        m8146break(this.f6705if - 3, 0, i, 1);
        m8146break(this.f6705if - 2, 0, i, 2);
        m8146break(this.f6705if - 1, 0, i, 3);
        m8146break(0, this.f6704for - 4, i, 4);
        m8146break(0, this.f6704for - 3, i, 5);
        m8146break(0, this.f6704for - 2, i, 6);
        m8146break(0, this.f6704for - 1, i, 7);
        m8146break(1, this.f6704for - 1, i, 8);
    }

    /* renamed from: new, reason: not valid java name */
    private void m8152new(int i) {
        m8146break(this.f6705if - 1, 0, i, 1);
        m8146break(this.f6705if - 1, this.f6704for - 1, i, 2);
        m8146break(0, this.f6704for - 3, i, 3);
        m8146break(0, this.f6704for - 2, i, 4);
        m8146break(0, this.f6704for - 1, i, 5);
        m8146break(1, this.f6704for - 3, i, 6);
        m8146break(1, this.f6704for - 2, i, 7);
        m8146break(1, this.f6704for - 1, i, 8);
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m8153this(int i, int i2) {
        return this.f6706new[(i2 * this.f6704for) + i] >= 0;
    }

    /* renamed from: case, reason: not valid java name */
    public final byte[] m8154case() {
        return this.f6706new;
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m8155catch() {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 4;
        while (true) {
            if (i5 == this.f6705if && i3 == 0) {
                m8149do(i4);
                i4++;
            }
            if (i5 == this.f6705if - 2 && i3 == 0 && this.f6704for % 4 != 0) {
                m8151if(i4);
                i4++;
            }
            if (i5 == this.f6705if - 2 && i3 == 0 && this.f6704for % 8 == 4) {
                m8150for(i4);
                i4++;
            }
            if (i5 == this.f6705if + 4 && i3 == 2 && this.f6704for % 8 == 0) {
                m8152new(i4);
                i4++;
            }
            do {
                if (i5 < this.f6705if && i3 >= 0 && !m8153this(i3, i5)) {
                    m8148const(i5, i3, i4);
                    i4++;
                }
                i5 -= 2;
                i3 += 2;
                if (i5 < 0) {
                    break;
                }
            } while (i3 < this.f6704for);
            int i6 = i5 + 1;
            int i7 = i3 + 3;
            do {
                if (i6 >= 0 && i7 < this.f6704for && !m8153this(i7, i6)) {
                    m8148const(i6, i7, i4);
                    i4++;
                }
                i6 += 2;
                i7 -= 2;
                i = this.f6705if;
                if (i6 >= i) {
                    break;
                }
            } while (i7 >= 0);
            i5 = i6 + 3;
            i3 = i7 + 1;
            if (i5 >= i && i3 >= (i2 = this.f6704for)) {
                break;
            }
        }
        if (m8153this(i2 - 1, i - 1)) {
            return;
        }
        m8147class(this.f6704for - 1, this.f6705if - 1, true);
        m8147class(this.f6704for - 2, this.f6705if - 2, true);
    }

    /* renamed from: else, reason: not valid java name */
    public final int m8156else() {
        return this.f6704for;
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m8157goto() {
        return this.f6705if;
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m8158try(int i, int i2) {
        return this.f6706new[(i2 * this.f6704for) + i] == 1;
    }
}
