package android.support.v4;

/* loaded from: classes2.dex */
public final class yf2 {

    /* renamed from: goto, reason: not valid java name */
    private static final int f8204goto = 10;

    /* renamed from: this, reason: not valid java name */
    private static final int f8205this = 1;

    /* renamed from: case, reason: not valid java name */
    private final int f8206case;

    /* renamed from: do, reason: not valid java name */
    private final z8 f8207do;

    /* renamed from: else, reason: not valid java name */
    private final int f8208else;

    /* renamed from: for, reason: not valid java name */
    private final int f8209for;

    /* renamed from: if, reason: not valid java name */
    private final int f8210if;

    /* renamed from: new, reason: not valid java name */
    private final int f8211new;

    /* renamed from: try, reason: not valid java name */
    private final int f8212try;

    public yf2(z8 z8Var) throws j41 {
        this(z8Var, 10, z8Var.m10091class() / 2, z8Var.m10094goto() / 2);
    }

    /* renamed from: do, reason: not valid java name */
    private yn1[] m9831do(yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4) {
        float fM9911for = yn1Var.m9911for();
        float fM9912new = yn1Var.m9912new();
        float fM9911for2 = yn1Var2.m9911for();
        float fM9912new2 = yn1Var2.m9912new();
        float fM9911for3 = yn1Var3.m9911for();
        float fM9912new3 = yn1Var3.m9912new();
        float fM9911for4 = yn1Var4.m9911for();
        float fM9912new4 = yn1Var4.m9912new();
        return fM9911for < ((float) this.f8209for) / 2.0f ? new yn1[]{new yn1(fM9911for4 - 1.0f, fM9912new4 + 1.0f), new yn1(fM9911for2 + 1.0f, fM9912new2 + 1.0f), new yn1(fM9911for3 - 1.0f, fM9912new3 - 1.0f), new yn1(fM9911for + 1.0f, fM9912new - 1.0f)} : new yn1[]{new yn1(fM9911for4 + 1.0f, fM9912new4 + 1.0f), new yn1(fM9911for2 + 1.0f, fM9912new2 - 1.0f), new yn1(fM9911for3 - 1.0f, fM9912new3 + 1.0f), new yn1(fM9911for - 1.0f, fM9912new - 1.0f)};
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m9832if(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.f8207do.m10105try(i, i3)) {
                    return true;
                }
                i++;
            }
            return false;
        }
        while (i <= i2) {
            if (this.f8207do.m10105try(i3, i)) {
                return true;
            }
            i++;
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    private yn1 m9833new(float f, float f2, float f3, float f4) {
        int iM9609for = xx0.m9609for(xx0.m9608do(f, f2, f3, f4));
        float f5 = iM9609for;
        float f6 = (f3 - f) / f5;
        float f7 = (f4 - f2) / f5;
        for (int i = 0; i < iM9609for; i++) {
            float f8 = i;
            int iM9609for2 = xx0.m9609for((f8 * f6) + f);
            int iM9609for3 = xx0.m9609for((f8 * f7) + f2);
            if (this.f8207do.m10105try(iM9609for2, iM9609for3)) {
                return new yn1(iM9609for2, iM9609for3);
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public yn1[] m9834for() throws j41 {
        int i = this.f8211new;
        int i2 = this.f8212try;
        int i3 = this.f8208else;
        int i4 = this.f8206case;
        boolean z = false;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        while (z2) {
            boolean zM9832if = true;
            boolean z8 = false;
            while (true) {
                if ((!zM9832if && z3) || i2 >= this.f8209for) {
                    break;
                }
                zM9832if = m9832if(i3, i4, i2, false);
                if (zM9832if) {
                    i2++;
                    z3 = true;
                    z8 = true;
                } else if (!z3) {
                    i2++;
                }
            }
            if (i2 < this.f8209for) {
                boolean zM9832if2 = true;
                while (true) {
                    if ((!zM9832if2 && z4) || i4 >= this.f8210if) {
                        break;
                    }
                    zM9832if2 = m9832if(i, i2, i4, true);
                    if (zM9832if2) {
                        i4++;
                        z4 = true;
                        z8 = true;
                    } else if (!z4) {
                        i4++;
                    }
                }
                if (i4 < this.f8210if) {
                    boolean zM9832if3 = true;
                    while (true) {
                        if ((!zM9832if3 && z5) || i < 0) {
                            break;
                        }
                        zM9832if3 = m9832if(i3, i4, i, false);
                        if (zM9832if3) {
                            i--;
                            z5 = true;
                            z8 = true;
                        } else if (!z5) {
                            i--;
                        }
                    }
                    if (i >= 0) {
                        z2 = z8;
                        boolean zM9832if4 = true;
                        while (true) {
                            if ((!zM9832if4 && z7) || i3 < 0) {
                                break;
                            }
                            zM9832if4 = m9832if(i, i2, i3, true);
                            if (zM9832if4) {
                                i3--;
                                z2 = true;
                                z7 = true;
                            } else if (!z7) {
                                i3--;
                            }
                        }
                        if (i3 >= 0) {
                            if (z2) {
                                z6 = true;
                            }
                        }
                    }
                }
            }
            z = true;
            break;
        }
        if (z || !z6) {
            throw j41.getNotFoundInstance();
        }
        int i5 = i2 - i;
        yn1 yn1VarM9833new = null;
        yn1 yn1VarM9833new2 = null;
        for (int i6 = 1; yn1VarM9833new2 == null && i6 < i5; i6++) {
            yn1VarM9833new2 = m9833new(i, i4 - i6, i + i6, i4);
        }
        if (yn1VarM9833new2 == null) {
            throw j41.getNotFoundInstance();
        }
        yn1 yn1VarM9833new3 = null;
        for (int i7 = 1; yn1VarM9833new3 == null && i7 < i5; i7++) {
            yn1VarM9833new3 = m9833new(i, i3 + i7, i + i7, i3);
        }
        if (yn1VarM9833new3 == null) {
            throw j41.getNotFoundInstance();
        }
        yn1 yn1VarM9833new4 = null;
        for (int i8 = 1; yn1VarM9833new4 == null && i8 < i5; i8++) {
            yn1VarM9833new4 = m9833new(i2, i3 + i8, i2 - i8, i3);
        }
        if (yn1VarM9833new4 == null) {
            throw j41.getNotFoundInstance();
        }
        for (int i9 = 1; yn1VarM9833new == null && i9 < i5; i9++) {
            yn1VarM9833new = m9833new(i2, i4 - i9, i2 - i9, i4);
        }
        if (yn1VarM9833new != null) {
            return m9831do(yn1VarM9833new, yn1VarM9833new2, yn1VarM9833new4, yn1VarM9833new3);
        }
        throw j41.getNotFoundInstance();
    }

    public yf2(z8 z8Var, int i, int i2, int i3) throws j41 {
        this.f8207do = z8Var;
        int iM10094goto = z8Var.m10094goto();
        this.f8210if = iM10094goto;
        int iM10091class = z8Var.m10091class();
        this.f8209for = iM10091class;
        int i4 = i / 2;
        int i5 = i2 - i4;
        this.f8211new = i5;
        int i6 = i2 + i4;
        this.f8212try = i6;
        int i7 = i3 - i4;
        this.f8208else = i7;
        int i8 = i3 + i4;
        this.f8206case = i8;
        if (i7 < 0 || i5 < 0 || i8 >= iM10094goto || i6 >= iM10091class) {
            throw j41.getNotFoundInstance();
        }
    }
}
