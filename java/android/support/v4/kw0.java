package android.support.v4;

import org.apache.commons.lang3.Ctry;

/* loaded from: classes2.dex */
public abstract class kw0 {

    /* renamed from: do, reason: not valid java name */
    private final int f3491do;

    /* renamed from: if, reason: not valid java name */
    private final int f3492if;

    public kw0(int i, int i2) {
        this.f3491do = i;
        this.f3492if = i2;
    }

    /* renamed from: break, reason: not valid java name */
    public kw0 mo4515break() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    /* renamed from: case, reason: not valid java name */
    public kw0 mo4516case() {
        return new yn0(this);
    }

    /* renamed from: do, reason: not valid java name */
    public kw0 mo4517do(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    /* renamed from: else, reason: not valid java name */
    public boolean mo4518else() {
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public abstract byte[] mo4519for();

    /* renamed from: goto, reason: not valid java name */
    public boolean mo4520goto() {
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m4521if() {
        return this.f3492if;
    }

    /* renamed from: new, reason: not valid java name */
    public abstract byte[] mo4522new(int i, byte[] bArr);

    /* renamed from: this, reason: not valid java name */
    public kw0 mo4523this() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public final String toString() {
        int i = this.f3491do;
        byte[] bArrMo4522new = new byte[i];
        StringBuilder sb = new StringBuilder(this.f3492if * (i + 1));
        for (int i2 = 0; i2 < this.f3492if; i2++) {
            bArrMo4522new = mo4522new(i2, bArrMo4522new);
            for (int i3 = 0; i3 < this.f3491do; i3++) {
                int i4 = bArrMo4522new[i3] & 255;
                sb.append(i4 < 64 ? '#' : i4 < 128 ? hy1.f2562if : i4 < 192 ? Ctry.f28883do : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final int m4524try() {
        return this.f3491do;
    }
}
