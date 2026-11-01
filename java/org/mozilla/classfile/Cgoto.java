package org.mozilla.classfile;

/* renamed from: org.mozilla.classfile.goto, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cgoto {

    /* renamed from: case, reason: not valid java name */
    private boolean f33877case;

    /* renamed from: do, reason: not valid java name */
    private int f33878do;

    /* renamed from: else, reason: not valid java name */
    private boolean f33879else;

    /* renamed from: for, reason: not valid java name */
    private int f33880for;

    /* renamed from: if, reason: not valid java name */
    private int f33881if;

    /* renamed from: new, reason: not valid java name */
    private int[] f33882new;

    /* renamed from: try, reason: not valid java name */
    private int[] f33883try;

    public Cgoto(int i, int i2, int i3, int[] iArr) {
        this.f33878do = i;
        this.f33881if = i2;
        this.f33880for = i3;
        int[] iArr2 = new int[iArr.length];
        this.f33882new = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        this.f33883try = new int[0];
        this.f33877case = false;
        this.f33879else = false;
    }

    /* renamed from: break, reason: not valid java name */
    private boolean m37875break(int[] iArr, int[] iArr2, int i, Ctry ctry) {
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            iArr[i2] = Cthis.m37893break(iArr[i2], iArr2[i2], ctry);
            if (i3 != iArr[i2]) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: case, reason: not valid java name */
    public int[] m37876case() {
        int length = this.f33882new.length - 1;
        while (length >= 0) {
            int[] iArr = this.f33882new;
            if (iArr[length] != 0 || Cthis.m37905this(iArr[length - 1])) {
                break;
            }
            length--;
        }
        int i = length + 1;
        int i2 = 0;
        int i3 = i;
        for (int i4 = 0; i4 < i; i4++) {
            if (Cthis.m37905this(this.f33882new[i4])) {
                i3--;
            }
        }
        int[] iArr2 = new int[i3];
        int i5 = 0;
        while (i2 < i3) {
            int[] iArr3 = this.f33882new;
            iArr2[i2] = iArr3[i5];
            if (Cthis.m37905this(iArr3[i5])) {
                i5++;
            }
            i2++;
            i5++;
        }
        return iArr2;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m37877catch(boolean z) {
        this.f33879else = z;
    }

    /* renamed from: class, reason: not valid java name */
    public void m37878class(boolean z) {
        this.f33877case = z;
    }

    /* renamed from: do, reason: not valid java name */
    public int m37879do() {
        return this.f33880for;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m37880else() {
        return this.f33879else;
    }

    /* renamed from: for, reason: not valid java name */
    public int[] m37881for() {
        int[] iArr = this.f33882new;
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m37882goto() {
        return this.f33877case;
    }

    /* renamed from: if, reason: not valid java name */
    public int m37883if() {
        return this.f33878do;
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m37884new() {
        int[] iArr = this.f33883try;
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m37885this(int[] iArr, int i, int[] iArr2, int i2, Ctry ctry) {
        if (this.f33877case) {
            int[] iArr3 = this.f33882new;
            if (iArr3.length == i && this.f33883try.length == i2) {
                return m37875break(iArr3, iArr, i, ctry) || m37875break(this.f33883try, iArr2, i2, ctry);
            }
            throw new IllegalArgumentException("bad merge attempt");
        }
        System.arraycopy(iArr, 0, this.f33882new, 0, i);
        int[] iArr4 = new int[i2];
        this.f33883try = iArr4;
        System.arraycopy(iArr2, 0, iArr4, 0, i2);
        this.f33877case = true;
        return true;
    }

    public String toString() {
        return "sb " + this.f33878do;
    }

    /* renamed from: try, reason: not valid java name */
    public int m37886try() {
        return this.f33881if;
    }
}
