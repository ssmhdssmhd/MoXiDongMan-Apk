package android.support.v4;

/* loaded from: classes3.dex */
public class gm2 {

    /* renamed from: do, reason: not valid java name */
    public int f2165do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f2168if = 200;

    /* renamed from: for, reason: not valid java name */
    public int f2167for = 0;

    /* renamed from: new, reason: not valid java name */
    public int[] f2169new = new int[94];

    /* renamed from: try, reason: not valid java name */
    public int[] f2170try = new int[94];

    /* renamed from: case, reason: not valid java name */
    public float[] f2164case = new float[94];

    /* renamed from: else, reason: not valid java name */
    public float[] f2166else = new float[94];

    public gm2() {
        m2735case();
    }

    /* renamed from: case, reason: not valid java name */
    public void m2735case() {
        this.f2165do = 0;
        this.f2167for = 0;
        for (int i = 0; i < 94; i++) {
            int[] iArr = this.f2169new;
            this.f2170try[i] = 0;
            iArr[i] = 0;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m2736do() {
        for (int i = 0; i < 94; i++) {
            float[] fArr = this.f2164case;
            float f = this.f2169new[i];
            int i2 = this.f2165do;
            fArr[i] = f / i2;
            this.f2166else[i] = this.f2170try[i] / i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001a  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m2737else(byte[] bArr, int i) {
        if (this.f2167for == 1) {
            return false;
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = this.f2167for;
            if (1 == i4) {
                break;
            }
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2 && (bArr[i3] & 128) != 0 && 255 != (bArr[i3] & 255) && 161 <= (bArr[i3] & 255)) {
                        this.f2165do++;
                        int[] iArr = this.f2170try;
                        int i5 = (bArr[i3] & 255) - 161;
                        iArr[i5] = iArr[i5] + 1;
                        this.f2167for = 0;
                    } else {
                        this.f2167for = 1;
                    }
                }
            } else if ((bArr[i3] & 128) != 0) {
                if (255 != (bArr[i3] & 255) && 161 <= (bArr[i3] & 255)) {
                    this.f2165do++;
                    int[] iArr2 = this.f2169new;
                    int i6 = (255 & bArr[i3]) - 161;
                    iArr2[i6] = iArr2[i6] + 1;
                    this.f2167for = 2;
                }
            }
            i2++;
            i3++;
        }
        return 1 != this.f2167for;
    }

    /* renamed from: for, reason: not valid java name */
    public float m2738for(float[] fArr, float f, float[] fArr2, float f2) {
        return (f * m2740new(fArr, this.f2164case)) + (f2 * m2740new(fArr2, this.f2166else));
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m2739if() {
        return this.f2165do > this.f2168if;
    }

    /* renamed from: new, reason: not valid java name */
    public float m2740new(float[] fArr, float[] fArr2) {
        float f = 0.0f;
        for (int i = 0; i < 94; i++) {
            float f2 = fArr[i] - fArr2[i];
            f += f2 * f2;
        }
        return ((float) Math.sqrt(f)) / 94.0f;
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m2741try() {
        return this.f2165do > 1;
    }
}
