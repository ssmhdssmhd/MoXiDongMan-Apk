package android.support.v4;

/* loaded from: classes3.dex */
public class re1 {

    /* renamed from: do, reason: not valid java name */
    private se0 f5768do;

    /* renamed from: for, reason: not valid java name */
    public pe1[] f5769for;

    /* renamed from: if, reason: not valid java name */
    private pe1 f5770if;

    /* renamed from: new, reason: not valid java name */
    public pe1[] f5771new;

    public re1(se0 se0Var, pe1 pe1Var) {
        this.f5768do = se0Var;
        this.f5770if = pe1Var;
        m6949if();
        m6948do();
    }

    /* renamed from: do, reason: not valid java name */
    private void m6948do() {
        int iM5979const;
        int iM5983final = this.f5770if.m5983final();
        pe1[] pe1VarArr = new pe1[iM5983final];
        int i = iM5983final - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            pe1VarArr[i2] = new pe1(this.f5769for[i2]);
        }
        this.f5771new = new pe1[iM5983final];
        while (i >= 0) {
            this.f5771new[i] = new pe1(this.f5768do, i);
            i--;
        }
        for (int i3 = 0; i3 < iM5983final; i3++) {
            if (pe1VarArr[i3].m5979const(i3) == 0) {
                int i4 = i3 + 1;
                boolean z = false;
                while (i4 < iM5983final) {
                    if (pe1VarArr[i4].m5979const(i3) != 0) {
                        m6950try(pe1VarArr, i3, i4);
                        m6950try(this.f5771new, i3, i4);
                        i4 = iM5983final;
                        z = true;
                    }
                    i4++;
                }
                if (!z) {
                    throw new ArithmeticException("Squaring matrix is not invertible.");
                }
            }
            int iM7378break = this.f5768do.m7378break(pe1VarArr[i3].m5979const(i3));
            pe1VarArr[i3].m5980continue(iM7378break);
            this.f5771new[i3].m5980continue(iM7378break);
            for (int i5 = 0; i5 < iM5983final; i5++) {
                if (i5 != i3 && (iM5979const = pe1VarArr[i5].m5979const(i3)) != 0) {
                    pe1 pe1VarM5993strictfp = pe1VarArr[i3].m5993strictfp(iM5979const);
                    pe1 pe1VarM5993strictfp2 = this.f5771new[i3].m5993strictfp(iM5979const);
                    pe1VarArr[i5].m5988new(pe1VarM5993strictfp);
                    this.f5771new[i5].m5988new(pe1VarM5993strictfp2);
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m6949if() {
        int i;
        int iM5983final = this.f5770if.m5983final();
        this.f5769for = new pe1[iM5983final];
        int i2 = 0;
        while (true) {
            i = iM5983final >> 1;
            if (i2 >= i) {
                break;
            }
            int i3 = i2 << 1;
            int[] iArr = new int[i3 + 1];
            iArr[i3] = 1;
            this.f5769for[i2] = new pe1(this.f5768do, iArr);
            i2++;
        }
        while (i < iM5983final) {
            int i4 = i << 1;
            int[] iArr2 = new int[i4 + 1];
            iArr2[i4] = 1;
            this.f5769for[i] = new pe1(this.f5768do, iArr2).m5991public(this.f5770if);
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private static void m6950try(pe1[] pe1VarArr, int i, int i2) {
        pe1 pe1Var = pe1VarArr[i];
        pe1VarArr[i] = pe1VarArr[i2];
        pe1VarArr[i2] = pe1Var;
    }

    /* renamed from: for, reason: not valid java name */
    public pe1[] m6951for() {
        return this.f5771new;
    }

    /* renamed from: new, reason: not valid java name */
    public pe1[] m6952new() {
        return this.f5769for;
    }
}
