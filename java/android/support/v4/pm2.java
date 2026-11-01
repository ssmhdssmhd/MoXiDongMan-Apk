package android.support.v4;

/* loaded from: classes3.dex */
public abstract class pm2 {

    /* renamed from: catch, reason: not valid java name */
    public static final int f5116catch = 0;

    /* renamed from: class, reason: not valid java name */
    public static final int f5117class = 1;

    /* renamed from: const, reason: not valid java name */
    public static final int f5118const = 2;

    /* renamed from: final, reason: not valid java name */
    public static final int f5119final = 3;

    /* renamed from: import, reason: not valid java name */
    public static final int f5120import = 16;

    /* renamed from: super, reason: not valid java name */
    public static final int f5121super = 4;

    /* renamed from: throw, reason: not valid java name */
    public static final int f5122throw = 5;

    /* renamed from: while, reason: not valid java name */
    public static final int f5123while = 6;

    /* renamed from: break, reason: not valid java name */
    public boolean f5124break;

    /* renamed from: case, reason: not valid java name */
    public int f5125case;

    /* renamed from: do, reason: not valid java name */
    public um2[] f5126do;

    /* renamed from: else, reason: not valid java name */
    public int f5127else;

    /* renamed from: for, reason: not valid java name */
    public gm2 f5128for;

    /* renamed from: goto, reason: not valid java name */
    public boolean f5129goto;

    /* renamed from: if, reason: not valid java name */
    public hm2[] f5130if;

    /* renamed from: new, reason: not valid java name */
    public byte[] f5131new;

    /* renamed from: this, reason: not valid java name */
    public boolean f5132this;

    /* renamed from: try, reason: not valid java name */
    public int[] f5133try;

    public pm2() {
        this.f5128for = new gm2();
        this.f5131new = new byte[16];
        this.f5133try = new int[16];
        m6124goto(0);
        m6126new();
    }

    public pm2(int i) {
        this.f5128for = new gm2();
        this.f5131new = new byte[16];
        this.f5133try = new int[16];
        m6124goto(i);
        m6126new();
    }

    public pm2(int i, um2[] um2VarArr, hm2[] hm2VarArr) {
        this.f5128for = new gm2();
        this.f5131new = new byte[16];
        this.f5133try = new int[16];
        this.f5124break = hm2VarArr != null;
        this.f5130if = hm2VarArr;
        this.f5126do = um2VarArr;
        this.f5127else = i;
        m6126new();
    }

    /* renamed from: case, reason: not valid java name */
    public void m6121case(byte[] bArr, int i, boolean z) {
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.f5125case; i4++) {
            hm2[] hm2VarArr = this.f5130if;
            int[] iArr = this.f5133try;
            if (hm2VarArr[iArr[i4]] != null) {
                i2++;
            }
            if (!this.f5126do[iArr[i4]].mo590new() && !this.f5126do[this.f5133try[i4]].mo589if().equals("GB18030")) {
                i3++;
            }
        }
        boolean z2 = i2 > 1;
        this.f5132this = z2;
        if (z2) {
            this.f5132this = this.f5128for.m2737else(bArr, i);
            if (((z && this.f5128for.m2741try()) || this.f5128for.m2739if()) && i2 == i3) {
                this.f5128for.m2736do();
                int i5 = -1;
                float f = 0.0f;
                int i6 = 0;
                for (int i7 = 0; i7 < this.f5125case; i7++) {
                    hm2[] hm2VarArr2 = this.f5130if;
                    int[] iArr2 = this.f5133try;
                    if (hm2VarArr2[iArr2[i7]] != null && !this.f5126do[iArr2[i7]].mo589if().equals("Big5")) {
                        float fM2738for = this.f5128for.m2738for(this.f5130if[this.f5133try[i7]].mo3064do(), this.f5130if[this.f5133try[i7]].mo3069new(), this.f5130if[this.f5133try[i7]].mo3070try(), this.f5130if[this.f5133try[i7]].mo3067goto());
                        int i8 = i6 + 1;
                        if (i6 == 0 || f > fM2738for) {
                            i5 = i7;
                            f = fM2738for;
                        }
                        i6 = i8;
                    }
                }
                if (i5 >= 0) {
                    mo1439for(this.f5126do[this.f5133try[i5]].mo589if());
                    this.f5129goto = true;
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m6122do() {
        um2 um2Var;
        if (this.f5129goto) {
            return;
        }
        if (this.f5125case == 2) {
            if (this.f5126do[this.f5133try[0]].mo589if().equals("GB18030")) {
                um2Var = this.f5126do[this.f5133try[1]];
            } else if (this.f5126do[this.f5133try[1]].mo589if().equals("GB18030")) {
                um2Var = this.f5126do[this.f5133try[0]];
            }
            mo1439for(um2Var.mo589if());
            this.f5129goto = true;
        }
        if (this.f5132this) {
            m6121case(null, 0, true);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public String[] m6123else() {
        int i = this.f5125case;
        if (i <= 0) {
            return new String[]{"nomatch"};
        }
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < this.f5125case; i2++) {
            strArr[i2] = this.f5126do[this.f5133try[i2]].mo589if();
        }
        return strArr;
    }

    /* renamed from: for */
    public abstract void mo1439for(String str);

    /* renamed from: goto, reason: not valid java name */
    public void m6124goto(int i) {
        int i2 = i;
        if (i2 < 0 || i2 >= 6) {
            i2 = 0;
        }
        this.f5126do = null;
        this.f5130if = null;
        if (i2 == 4) {
            this.f5126do = new um2[]{new tm2(), new bm2(), new mm2(), new im2(), new cm2(), new rm2(), new sm2()};
            this.f5130if = new hm2[]{null, new t8(), null, new r50(), null, null, null};
        } else if (i2 == 5) {
            this.f5126do = new um2[]{new tm2(), new fm2(), new om2(), new cm2(), new rm2(), new sm2()};
        } else if (i2 == 3) {
            this.f5126do = new um2[]{new tm2(), new km2(), new jm2(), new mm2(), new lm2(), new cm2(), new rm2(), new sm2()};
        } else if (i2 == 1) {
            this.f5126do = new um2[]{new tm2(), new qm2(), new em2(), new nm2(), new cm2(), new rm2(), new sm2()};
        } else if (i2 == 2) {
            this.f5126do = new um2[]{new tm2(), new km2(), new jm2(), new bm2(), new mm2(), new lm2(), new im2(), new cm2(), new rm2(), new sm2()};
            this.f5130if = new hm2[]{null, new le0(), null, new t8(), null, null, new r50(), null, null, null};
        } else if (i2 == 0) {
            this.f5126do = new um2[]{new tm2(), new qm2(), new em2(), new nm2(), new fm2(), new om2(), new bm2(), new im2(), new km2(), new jm2(), new mm2(), new lm2(), new cm2(), new rm2(), new sm2()};
            this.f5130if = new hm2[]{null, null, new p50(), null, new q50(), null, new t8(), new r50(), new le0(), null, null, null, null, null, null};
        }
        this.f5124break = this.f5130if != null;
        this.f5127else = this.f5126do.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
    
        if (r4 > 1) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
    
        if (1 != r4) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        mo1439for(r8.f5126do[r8.f5133try[0]].mo589if());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
    
        r8.f5129goto = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
    
        r2 = 0;
        r3 = 0;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        if (r2 >= r8.f5125case) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0078, code lost:
    
        if (r8.f5126do[r8.f5133try[r2]].mo590new() != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
    
        if (r8.f5126do[r8.f5133try[r2]].mo590new() != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0088, code lost:
    
        r3 = r3 + 1;
        r4 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008e, code lost:
    
        if (1 != r3) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0090, code lost:
    
        r9 = r8.f5126do[r8.f5133try[r4]];
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
    
        r1 = r1 + 1;
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m6125if(byte[] bArr, int i) {
        um2 um2Var;
        int i2 = 0;
        loop0: while (i2 < i) {
            byte b = bArr[i2];
            int i3 = 0;
            while (true) {
                int i4 = this.f5125case;
                if (i3 >= i4) {
                    break;
                }
                byte bM8521for = um2.m8521for(this.f5126do[this.f5133try[i3]], b, this.f5131new[i3]);
                if (bM8521for == 2) {
                    um2Var = this.f5126do[this.f5133try[i3]];
                    break loop0;
                }
                if (bM8521for == 1) {
                    int i5 = this.f5125case - 1;
                    this.f5125case = i5;
                    if (i3 < i5) {
                        int[] iArr = this.f5133try;
                        iArr[i3] = iArr[i5];
                        byte[] bArr2 = this.f5131new;
                        bArr2[i3] = bArr2[i5];
                    }
                } else {
                    this.f5131new[i3] = bM8521for;
                    i3++;
                }
            }
            mo1439for(um2Var.mo589if());
            this.f5129goto = true;
            return true;
        }
        if (this.f5132this) {
            m6127try(bArr, i);
        }
        return this.f5129goto;
    }

    /* renamed from: new, reason: not valid java name */
    public void m6126new() {
        this.f5132this = this.f5124break;
        this.f5129goto = false;
        this.f5125case = this.f5127else;
        for (int i = 0; i < this.f5125case; i++) {
            this.f5131new[i] = 0;
            this.f5133try[i] = i;
        }
        this.f5128for.m2735case();
    }

    /* renamed from: try, reason: not valid java name */
    public void m6127try(byte[] bArr, int i) {
        m6121case(bArr, i, false);
    }
}
