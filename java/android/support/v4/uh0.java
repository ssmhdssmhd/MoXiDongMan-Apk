package android.support.v4;

import java.lang.reflect.Array;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public final class uh0 {

    /* renamed from: android.support.v4.uh0$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private qe0 f6887do;

        /* renamed from: for, reason: not valid java name */
        private fd1 f6888for;

        /* renamed from: if, reason: not valid java name */
        private qe0 f6889if;

        public Cdo(qe0 qe0Var, qe0 qe0Var2, fd1 fd1Var) {
            this.f6887do = qe0Var;
            this.f6889if = qe0Var2;
            this.f6888for = fd1Var;
        }

        /* renamed from: do, reason: not valid java name */
        public qe0 m8452do() {
            return this.f6887do;
        }

        /* renamed from: for, reason: not valid java name */
        public qe0 m8453for() {
            return this.f6889if;
        }

        /* renamed from: if, reason: not valid java name */
        public fd1 m8454if() {
            return this.f6888for;
        }
    }

    /* renamed from: android.support.v4.uh0$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private qe0 f6890do;

        /* renamed from: if, reason: not valid java name */
        private int[] f6891if;

        public Cif(qe0 qe0Var, int[] iArr) {
            this.f6890do = qe0Var;
            this.f6891if = iArr;
        }

        /* renamed from: do, reason: not valid java name */
        public qe0 m8455do() {
            return this.f6890do;
        }

        /* renamed from: if, reason: not valid java name */
        public int[] m8456if() {
            return this.f6891if;
        }
    }

    private uh0() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m8449do(qe0 qe0Var, SecureRandom secureRandom) {
        fd1 fd1Var;
        qe0 qe0Var2;
        qe0 qe0VarM6531static;
        boolean z;
        int iM399for = qe0Var.m399for();
        qe0 qe0Var3 = null;
        do {
            fd1Var = new fd1(iM399for, secureRandom);
            qe0Var2 = (qe0) qe0Var.mo400goto(fd1Var);
            qe0VarM6531static = qe0Var2.m6531static();
            z = true;
            try {
                qe0Var3 = (qe0) qe0VarM6531static.mo397do();
            } catch (ArithmeticException unused) {
                z = false;
            }
        } while (!z);
        return new Cdo(qe0VarM6531static, ((qe0) qe0Var3.mo398else(qe0Var2)).m6534throws(), fd1Var);
    }

    /* renamed from: for, reason: not valid java name */
    public static re0 m8450for(re0 re0Var, se0 se0Var, pe1 pe1Var, pe1[] pe1VarArr) {
        int iM7388new = 1 << se0Var.m7388new();
        re0 re0Var2 = new re0(iM7388new);
        if (!re0Var.mo3005new()) {
            pe1[] pe1VarArrM5984finally = new pe1(re0Var.m6945final(se0Var)).m5996throws(pe1Var).m5985for(1).m5976abstract(pe1VarArr).m5984finally(pe1Var);
            pe1 pe1VarM5982do = pe1VarArrM5984finally[0].m5997transient(pe1VarArrM5984finally[0]).m5982do(pe1VarArrM5984finally[1].m5997transient(pe1VarArrM5984finally[1]).m5987interface(1));
            pe1 pe1VarM5993strictfp = pe1VarM5982do.m5993strictfp(se0Var.m7378break(pe1VarM5982do.m5995throw()));
            for (int i = 0; i < iM7388new; i++) {
                if (pe1VarM5993strictfp.m5977break(i) == 0) {
                    re0Var2.m6943const(i);
                }
            }
        }
        return re0Var2;
    }

    /* renamed from: if, reason: not valid java name */
    public static qe0 m8451if(se0 se0Var, pe1 pe1Var) {
        int iM7388new = se0Var.m7388new();
        int i = 1 << iM7388new;
        int iM5983final = pe1Var.m5983final();
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) int.class, iM5983final, i);
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) int.class, iM5983final, i);
        for (int i2 = 0; i2 < i; i2++) {
            iArr2[0][i2] = se0Var.m7378break(pe1Var.m5977break(i2));
        }
        for (int i3 = 1; i3 < iM5983final; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                iArr2[i3][i4] = se0Var.m7381class(iArr2[i3 - 1][i4], i4);
            }
        }
        for (int i5 = 0; i5 < iM5983final; i5++) {
            for (int i6 = 0; i6 < i; i6++) {
                for (int i7 = 0; i7 <= i5; i7++) {
                    iArr[i5][i6] = se0Var.m7382do(iArr[i5][i6], se0Var.m7381class(iArr2[i7][i6], pe1Var.m5979const((iM5983final + i7) - i5)));
                }
            }
        }
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) int.class, iM5983final * iM7388new, (i + 31) >>> 5);
        for (int i8 = 0; i8 < i; i8++) {
            int i9 = i8 >>> 5;
            int i10 = 1 << (i8 & 31);
            for (int i11 = 0; i11 < iM5983final; i11++) {
                int i12 = iArr[i11][i8];
                for (int i13 = 0; i13 < iM7388new; i13++) {
                    if (((i12 >>> i13) & 1) != 0) {
                        int[] iArr4 = iArr3[(((i11 + 1) * iM7388new) - i13) - 1];
                        iArr4[i9] = iArr4[i9] ^ i10;
                    }
                }
            }
        }
        return new qe0(i, iArr3);
    }
}
