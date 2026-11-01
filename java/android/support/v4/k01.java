package android.support.v4;

@Deprecated
/* loaded from: classes2.dex */
public final class k01 {

    /* renamed from: if, reason: not valid java name */
    private static final int f3246if = 32;

    /* renamed from: do, reason: not valid java name */
    private final z8 f3247do;

    public k01(z8 z8Var) {
        this.f3247do = z8Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0031 A[EDGE_INSN: B:70:0x0031->B:22:0x0031 BREAK  A[LOOP:1: B:13:0x001c->B:73:0x001c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0067 A[EDGE_INSN: B:86:0x0067->B:47:0x0067 BREAK  A[LOOP:3: B:38:0x0053->B:91:0x0053], SYNTHETIC] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int[] m4171do(int i, int i2, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7 = (i3 + i4) / 2;
        int i8 = i7;
        while (i8 >= i3) {
            z8 z8Var = this.f3247do;
            if (!z) {
                if (!z8Var.m10105try(i, i8)) {
                    i6 = i8;
                    while (true) {
                        i6--;
                        if (i6 >= i3) {
                        }
                    }
                    int i9 = i8 - i6;
                    if (i6 < i3) {
                        break;
                    }
                    break;
                    break;
                }
                i8--;
            } else if (z8Var.m10105try(i8, i)) {
                i8--;
            } else {
                i6 = i8;
                while (true) {
                    i6--;
                    if (i6 >= i3) {
                        break;
                    }
                    z8 z8Var2 = this.f3247do;
                    if (z) {
                        if (z8Var2.m10105try(i6, i)) {
                            break;
                        }
                    } else if (z8Var2.m10105try(i, i6)) {
                        break;
                    }
                }
                int i92 = i8 - i6;
                if (i6 < i3 || i92 > i2) {
                    break;
                }
                i8 = i6;
            }
        }
        int i10 = i8 + 1;
        while (i7 < i4) {
            z8 z8Var3 = this.f3247do;
            if (!z) {
                if (!z8Var3.m10105try(i, i7)) {
                    i5 = i7;
                    while (true) {
                        i5++;
                        if (i5 < i4) {
                        }
                    }
                    int i11 = i5 - i7;
                    if (i5 >= i4) {
                        break;
                    }
                    break;
                    break;
                }
                i7++;
            } else if (z8Var3.m10105try(i7, i)) {
                i7++;
            } else {
                i5 = i7;
                while (true) {
                    i5++;
                    if (i5 < i4) {
                        break;
                    }
                    z8 z8Var4 = this.f3247do;
                    if (z) {
                        if (z8Var4.m10105try(i5, i)) {
                            break;
                        }
                    } else if (z8Var4.m10105try(i, i5)) {
                        break;
                    }
                }
                int i112 = i5 - i7;
                if (i5 >= i4 || i112 > i2) {
                    break;
                }
                i7 = i5;
            }
        }
        int i12 = i7 - 1;
        if (i12 > i10) {
            return new int[]{i10, i12};
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    private yn1 m4172for(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws j41 {
        int[] iArr = null;
        int i10 = i;
        int i11 = i5;
        while (i11 < i8 && i11 >= i7 && i10 < i4 && i10 >= i3) {
            int[] iArrM4171do = i2 == 0 ? m4171do(i11, i9, i3, i4, true) : m4171do(i10, i9, i7, i8, false);
            if (iArrM4171do == null) {
                if (iArr == null) {
                    throw j41.getNotFoundInstance();
                }
                if (i2 == 0) {
                    int i12 = i11 - i6;
                    if (iArr[0] >= i) {
                        return new yn1(iArr[1], i12);
                    }
                    if (iArr[1] > i) {
                        return new yn1(iArr[i6 > 0 ? (char) 0 : (char) 1], i12);
                    }
                    return new yn1(iArr[0], i12);
                }
                int i13 = i10 - i2;
                if (iArr[0] >= i5) {
                    return new yn1(i13, iArr[1]);
                }
                if (iArr[1] > i5) {
                    return new yn1(i13, iArr[i2 < 0 ? (char) 0 : (char) 1]);
                }
                return new yn1(i13, iArr[0]);
            }
            i11 += i6;
            i10 += i2;
            iArr = iArrM4171do;
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: if, reason: not valid java name */
    public yn1[] m4173if() throws j41 {
        int iM10094goto = this.f3247do.m10094goto();
        int iM10091class = this.f3247do.m10091class();
        int i = iM10094goto / 2;
        int i2 = iM10091class / 2;
        int iMax = Math.max(1, iM10094goto / 256);
        int iMax2 = Math.max(1, iM10091class / 256);
        int i3 = -iMax;
        int i4 = i2 / 2;
        int iM9912new = ((int) m4172for(i2, 0, 0, iM10091class, i, i3, 0, iM10094goto, i4).m9912new()) - 1;
        int i5 = i / 2;
        yn1 yn1VarM4172for = m4172for(i2, -iMax2, 0, iM10091class, i, 0, iM9912new, iM10094goto, i5);
        int iM9911for = ((int) yn1VarM4172for.m9911for()) - 1;
        yn1 yn1VarM4172for2 = m4172for(i2, iMax2, iM9911for, iM10091class, i, 0, iM9912new, iM10094goto, i5);
        int iM9911for2 = ((int) yn1VarM4172for2.m9911for()) + 1;
        yn1 yn1VarM4172for3 = m4172for(i2, 0, iM9911for, iM9911for2, i, iMax, iM9912new, iM10094goto, i4);
        return new yn1[]{m4172for(i2, 0, iM9911for, iM9911for2, i, i3, iM9912new, ((int) yn1VarM4172for3.m9912new()) + 1, i2 / 4), yn1VarM4172for, yn1VarM4172for2, yn1VarM4172for3};
    }
}
