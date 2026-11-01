package freemarker.core;

import android.support.v4.e91;
import android.support.v4.ez1;
import android.support.v4.hy1;
import android.support.v4.jc2;
import android.support.v4.k52;
import android.support.v4.mc;
import android.support.v4.ul2;
import android.support.v4.vm;
import android.support.v4.w41;
import android.support.v4.we2;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.uc.crashsdk.export.LogType;
import freemarker.core.w1;
import freemarker.template.Cstatic;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateScalarModel;
import freemarker.template.utility.Csuper;
import freemarker.template.utility.Ctry;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public class j0 implements FMParserConstants {
    private static int[] a = null;
    private static int[] b = null;
    private static int[] c = null;
    private static int[] d = null;
    private static int[] e = null;

    /* renamed from: implements, reason: not valid java name */
    private static final int f23871implements = 1;

    /* renamed from: instanceof, reason: not valid java name */
    private static final int f23872instanceof = 2;

    /* renamed from: synchronized, reason: not valid java name */
    private static final int f23873synchronized = 3;

    /* renamed from: transient, reason: not valid java name */
    private static final int f23874transient = 0;

    /* renamed from: abstract, reason: not valid java name */
    private final Cfor f23875abstract;

    /* renamed from: break, reason: not valid java name */
    private List<Cnew> f23876break;

    /* renamed from: case, reason: not valid java name */
    private e91 f23877case;

    /* renamed from: catch, reason: not valid java name */
    private int f23878catch;

    /* renamed from: class, reason: not valid java name */
    private int f23879class;

    /* renamed from: const, reason: not valid java name */
    private boolean f23880const;

    /* renamed from: continue, reason: not valid java name */
    private List<int[]> f23881continue;

    /* renamed from: default, reason: not valid java name */
    private int f23882default;

    /* renamed from: do, reason: not valid java name */
    private Cstatic f23883do;

    /* renamed from: else, reason: not valid java name */
    private int f23884else;

    /* renamed from: extends, reason: not valid java name */
    private final int[] f23885extends;

    /* renamed from: final, reason: not valid java name */
    private boolean f23886final;

    /* renamed from: finally, reason: not valid java name */
    private final Cif[] f23887finally;

    /* renamed from: for, reason: not valid java name */
    private boolean f23888for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f23889goto;

    /* renamed from: if, reason: not valid java name */
    private boolean f23890if;

    /* renamed from: import, reason: not valid java name */
    public t3 f23891import;

    /* renamed from: interface, reason: not valid java name */
    private int[] f23892interface;

    /* renamed from: native, reason: not valid java name */
    public m4 f23893native;

    /* renamed from: new, reason: not valid java name */
    private boolean f23894new;

    /* renamed from: package, reason: not valid java name */
    private boolean f23895package;

    /* renamed from: private, reason: not valid java name */
    private int f23896private;

    /* renamed from: protected, reason: not valid java name */
    private int f23897protected;

    /* renamed from: public, reason: not valid java name */
    public m4 f23898public;

    /* renamed from: return, reason: not valid java name */
    private int f23899return;

    /* renamed from: static, reason: not valid java name */
    private m4 f23900static;

    /* renamed from: strictfp, reason: not valid java name */
    private int[] f23901strictfp;

    /* renamed from: super, reason: not valid java name */
    private LinkedList f23902super;

    /* renamed from: switch, reason: not valid java name */
    private m4 f23903switch;

    /* renamed from: this, reason: not valid java name */
    private ParserConfiguration f23904this;

    /* renamed from: throw, reason: not valid java name */
    private int f23905throw;

    /* renamed from: throws, reason: not valid java name */
    private int f23906throws;

    /* renamed from: try, reason: not valid java name */
    private int f23907try;

    /* renamed from: volatile, reason: not valid java name */
    private int f23908volatile;

    /* renamed from: while, reason: not valid java name */
    public k0 f23909while;

    /* renamed from: freemarker.core.j0$for, reason: invalid class name */
    public static final class Cfor extends Error {
        private Cfor() {
        }
    }

    /* renamed from: freemarker.core.j0$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f23910do;

        /* renamed from: for, reason: not valid java name */
        public int f23911for;

        /* renamed from: if, reason: not valid java name */
        public m4 f23912if;

        /* renamed from: new, reason: not valid java name */
        public Cif f23913new;
    }

    /* renamed from: freemarker.core.j0$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private String f23914do;

        /* renamed from: for, reason: not valid java name */
        private int f23915for;

        /* renamed from: if, reason: not valid java name */
        private String f23916if;

        /* renamed from: new, reason: not valid java name */
        private boolean f23917new;

        private Cnew() {
        }
    }

    static {
        K2();
        L2();
        M2();
        N2();
        O2();
    }

    public j0(Cstatic cstatic, Reader reader, boolean z, boolean z2) {
        this(cstatic, reader, z, z2, 0);
    }

    private boolean A0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ C2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(3, i);
        }
    }

    private boolean A1() {
        m4 m4Var = this.f23900static;
        if (S2(107)) {
            this.f23900static = m4Var;
            if (S2(105)) {
                this.f23900static = m4Var;
                if (S2(106)) {
                    return true;
                }
            }
        }
        return z1();
    }

    private boolean A2() {
        m4 m4Var = this.f23900static;
        if (!S2(122)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(125)) {
            return false;
        }
        this.f23900static = m4Var;
        return S2(126);
    }

    private boolean B0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ D2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(4, i);
        }
    }

    private boolean B1() {
        return S2(121);
    }

    private boolean B2() {
        m4 m4Var = this.f23900static;
        if (!S2(107)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(105)) {
            return false;
        }
        this.f23900static = m4Var;
        return S2(106);
    }

    private boolean C0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ E2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(5, i);
        }
    }

    private boolean C1() {
        return S2(129);
    }

    private boolean C2() {
        m4 m4Var = this.f23900static;
        if (!S2(151)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(118)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(150)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(117)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(116)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(116)) {
            return false;
        }
        this.f23900static = m4Var;
        return S2(115);
    }

    private boolean D0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ F2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(6, i);
        }
    }

    private boolean D1() {
        m4 m4Var = this.f23900static;
        if (!H1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!I1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!J1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!K1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!L1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!M1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!N1()) {
            return false;
        }
        this.f23900static = m4Var;
        return O1();
    }

    private boolean D2() {
        return X0();
    }

    private boolean E0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ G2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(7, i);
        }
    }

    private boolean E1() {
        m4 m4Var = this.f23900static;
        if (!P1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!Q1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!R1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!T1()) {
            return false;
        }
        this.f23900static = m4Var;
        return U1();
    }

    private boolean E2() {
        return S2(127);
    }

    private boolean F0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ H2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(8, i);
        }
    }

    private boolean F1() {
        if (X0()) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (!V1()) {
            return false;
        }
        this.f23900static = m4Var;
        return false;
    }

    private boolean F2() {
        return S2(128);
    }

    private boolean G0() {
        return S2(135) || p2() || S2(136);
    }

    private boolean G1() {
        m4 m4Var = this.f23900static;
        if (S2(151)) {
            this.f23900static = m4Var;
            if (S2(118)) {
                this.f23900static = m4Var;
                if (S2(150)) {
                    this.f23900static = m4Var;
                    if (S2(117)) {
                        this.f23900static = m4Var;
                        if (S2(116)) {
                            this.f23900static = m4Var;
                            if (S2(115)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return F1();
    }

    private boolean G2() {
        return Y0();
    }

    private boolean H0() {
        return S2(135) || P0() || S2(136);
    }

    private boolean H1() {
        return W1();
    }

    private boolean H2() {
        return S2(135);
    }

    private boolean I0() {
        return f2();
    }

    private boolean I1() {
        return X1();
    }

    private void I2(int i, int i2) {
        int[] iArr;
        boolean z;
        if (i2 >= 100) {
            return;
        }
        int i3 = this.f23897protected;
        if (i2 == i3 + 1) {
            int[] iArr2 = this.f23892interface;
            this.f23897protected = i3 + 1;
            iArr2[i3] = i;
            return;
        }
        if (i3 != 0) {
            this.f23901strictfp = new int[i3];
            for (int i4 = 0; i4 < this.f23897protected; i4++) {
                this.f23901strictfp[i4] = this.f23892interface[i4];
            }
            Iterator<int[]> it = this.f23881continue.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] next = it.next();
                if (next.length == this.f23901strictfp.length) {
                    int i5 = 0;
                    while (true) {
                        iArr = this.f23901strictfp;
                        if (i5 >= iArr.length) {
                            z = true;
                            break;
                        } else {
                            if (next[i5] != iArr[i5]) {
                                z = false;
                                break;
                            }
                            i5++;
                        }
                    }
                    if (z) {
                        this.f23881continue.add(iArr);
                        break;
                    }
                }
            }
            if (i2 != 0) {
                int[] iArr3 = this.f23892interface;
                this.f23897protected = i2;
                iArr3[i2 - 1] = i;
            }
        }
    }

    private boolean J0() {
        if (S2(129)) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (!Q0()) {
            return false;
        }
        this.f23900static = m4Var;
        return false;
    }

    private boolean J1() {
        return Y1();
    }

    private m4 J2(int i) throws h3 {
        m4 m4Var = this.f23893native;
        m4 m4Var2 = m4Var.next;
        if (m4Var2 != null) {
            this.f23893native = m4Var2;
        } else {
            m4 m4VarM28170class = this.f23909while.m28170class();
            m4Var.next = m4VarM28170class;
            this.f23893native = m4VarM28170class;
        }
        this.f23899return = -1;
        if (this.f23893native.kind != i) {
            this.f23893native = m4Var;
            this.f23908volatile = i;
            throw j0();
        }
        this.f23882default++;
        int i2 = this.f23896private + 1;
        this.f23896private = i2;
        if (i2 > 100) {
            int i3 = 0;
            this.f23896private = 0;
            while (true) {
                Cif[] cifArr = this.f23887finally;
                if (i3 >= cifArr.length) {
                    break;
                }
                for (Cif cif = cifArr[i3]; cif != null; cif = cif.f23913new) {
                    if (cif.f23910do < this.f23882default) {
                        cif.f23912if = null;
                    }
                }
                i3++;
            }
        }
        return this.f23893native;
    }

    private boolean K0() {
        return S2(101);
    }

    private boolean K1() {
        return Z1();
    }

    private static void K2() {
        a = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67108864, 33554432, 0, 0, 458752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6291456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 0, 32768, 32768, 0, -33472, 0, 0, 0, 0, -33472, -33472, -33472, -33472, -33472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    }

    private boolean L0() {
        return S2(102);
    }

    private boolean L1() {
        return a2();
    }

    private static void L2() {
        b = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4194304, LogType.UNEXP_OTHER, 0, 0, 4194304, 0, 128, 0, 0, 0, 0, 33554432, 67108864, 0, -268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 6, 0, 0, 0, 0, 0, -8388593, 0, 0, 0, 0, -8388593, -8388593, -8388593, -8388593, -8388593, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0};
    }

    private boolean M0() {
        return X0();
    }

    private boolean M1() {
        return m1();
    }

    private static void M2() {
        c = new int[]{0, 0, -536870912, -536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612736, 0, -536870912, 0, 0, 0, Integer.MIN_VALUE, Integer.MIN_VALUE, 1610612736, Integer.MIN_VALUE, 0, 0, 0, -536870912, 1310720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -536870912, 0, 24, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -536870912, 0, -536870912, -536870912, 0, -536870912, 0, 0, 0, 0, 32768, 1, 32768, 1, 1, 0, 1406, 229376, 229376, 0, 0, 2065790, 2065790, 2065790, 2065790, 2065790, 2064384, 2064384, 32768, 32768, 32768, 0, 12288, 0, 0, 2064384, 229376, 2064384};
    }

    private boolean N0() {
        if (S2(130) || Y0()) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (S2(130)) {
            this.f23900static = m4Var;
            if (S2(132)) {
                return true;
            }
        }
        return Y0();
    }

    private boolean N1() {
        return b2();
    }

    private static void N2() {
        d = new int[]{392, 392, 15, 50331663, 0, 50331648, 50331648, 1677721600, 3584, 7864320, 96, 112, 112, 6, 0, 0, 50331663, 0, 0, 0, 7864321, 209190913, 0, 1, 0, 0, 0, 50331663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50331663, 0, 0, 0, 0, 0, 0, 0, 127488, 393216, 520704, 0, 127488, 393216, 520704, 0, 0, 0, 520704, 0, 0, 0, 0, 0, 268435456, 512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50331663, 0, 50331663, 50331663, 0, 50331663, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    }

    private boolean O0() {
        m4 m4Var;
        if (Y0()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!R0());
        this.f23900static = m4Var;
        return false;
    }

    private boolean O1() {
        return c2();
    }

    private static void O2() {
        e = new int[]{33554594, 33554594, 17056, 17058, 2, 0, 0, 0, 0, 12582912, 0, 0, 0, 0, 16384, 33554434, 17058, 4, 16384, 16512, 14336, 30720, 0, 0, 20, 4, 20, 17058, 0, 8, 0, 0, 0, 4, 4096, 0, 4, 0, 8192, 17058, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 2048, 2048, 0, 1050624, 8, 16384, 0, 128, 16384, 0, 0, 4, 256, 0, 16777216, 16777216, 16777220, 16777216, 16777216, 16793600, 8, 3145728, 256, 16384, 17062, 4, 17058, 17062, 4, 17058, 0, 8, 16384, 3145728, 0, 0, 0, 0, 0, 3145728, 0, 0, 0, 1006632960, 1006632960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16384, 0, 4, 16384, 0, 0, 0};
    }

    private boolean P0() {
        m4 m4Var = this.f23900static;
        if (!S0()) {
            return false;
        }
        this.f23900static = m4Var;
        return false;
    }

    private boolean P1() {
        return d2();
    }

    private int P2() {
        m4 m4Var = this.f23893native;
        m4 m4Var2 = m4Var.next;
        this.f23898public = m4Var2;
        if (m4Var2 != null) {
            int i = m4Var2.kind;
            this.f23899return = i;
            return i;
        }
        m4 m4VarM28170class = this.f23909while.m28170class();
        m4Var.next = m4VarM28170class;
        int i2 = m4VarM28170class.kind;
        this.f23899return = i2;
        return i2;
    }

    private boolean Q0() {
        return Y0();
    }

    private boolean Q1() {
        return e2();
    }

    private void Q2() {
        this.f23895package = true;
        for (int i = 0; i < 17; i++) {
            try {
                Cif cif = this.f23887finally[i];
                do {
                    if (cif.f23910do > this.f23882default) {
                        this.f23906throws = cif.f23911for;
                        m4 m4Var = cif.f23912if;
                        this.f23900static = m4Var;
                        this.f23903switch = m4Var;
                        switch (i) {
                            case 0:
                                r2();
                                break;
                            case 1:
                                A2();
                                break;
                            case 2:
                                B2();
                                break;
                            case 3:
                                C2();
                                break;
                            case 4:
                                D2();
                                break;
                            case 5:
                                E2();
                                break;
                            case 6:
                                F2();
                                break;
                            case 7:
                                G2();
                                break;
                            case 8:
                                H2();
                                break;
                            case 9:
                                s2();
                                break;
                            case 10:
                                t2();
                                break;
                            case 11:
                                u2();
                                break;
                            case 12:
                                v2();
                                break;
                            case 13:
                                w2();
                                break;
                            case 14:
                                x2();
                                break;
                            case 15:
                                y2();
                                break;
                            case 16:
                                z2();
                                break;
                        }
                    }
                    cif = cif.f23913new;
                } while (cif != null);
            } catch (Cfor unused) {
            }
        }
        this.f23895package = false;
    }

    private boolean R0() {
        m4 m4Var = this.f23900static;
        if (S2(130)) {
            this.f23900static = m4Var;
        }
        return Y0();
    }

    private boolean R1() {
        return f2();
    }

    private void R2(int i, int i2) {
        Cif cif = this.f23887finally[i];
        while (true) {
            if (cif.f23910do <= this.f23882default) {
                break;
            }
            Cif cif2 = cif.f23913new;
            if (cif2 == null) {
                Cif cif3 = new Cif();
                cif.f23913new = cif3;
                cif = cif3;
                break;
            }
            cif = cif2;
        }
        cif.f23910do = (this.f23882default + i2) - this.f23906throws;
        cif.f23912if = this.f23893native;
        cif.f23911for = i2;
    }

    private boolean S0() {
        m4 m4Var;
        if (T0()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!U0());
        this.f23900static = m4Var;
        return false;
    }

    private boolean S1() {
        return g2();
    }

    private boolean S2(int i) {
        m4 m4Var = this.f23900static;
        if (m4Var == this.f23903switch) {
            this.f23906throws--;
            m4 m4Var2 = m4Var.next;
            if (m4Var2 == null) {
                m4 m4VarM28170class = this.f23909while.m28170class();
                m4Var.next = m4VarM28170class;
                this.f23900static = m4VarM28170class;
                this.f23903switch = m4VarM28170class;
            } else {
                this.f23900static = m4Var2;
                this.f23903switch = m4Var2;
            }
        } else {
            this.f23900static = m4Var.next;
        }
        if (this.f23895package) {
            m4 m4Var3 = this.f23893native;
            int i2 = 0;
            while (m4Var3 != null && m4Var3 != this.f23900static) {
                i2++;
                m4Var3 = m4Var3.next;
            }
            if (m4Var3 != null) {
                I2(i, i2);
            }
        }
        m4 m4Var4 = this.f23900static;
        if (m4Var4.kind != i) {
            return true;
        }
        if (this.f23906throws == 0 && m4Var4 == this.f23903switch) {
            throw this.f23875abstract;
        }
        return false;
    }

    private boolean T0() {
        m4 m4Var = this.f23900static;
        if (!V0()) {
            return false;
        }
        this.f23900static = m4Var;
        return W0();
    }

    private boolean T1() {
        return h2();
    }

    private void T2(h0 h0Var, String str) throws h3 {
        if (h0Var instanceof Cwhile) {
            throw new h3("Found: " + h0Var.mo27815for() + ". Expecting " + str, h0Var);
        }
    }

    private boolean U0() {
        m4 m4Var = this.f23900static;
        if (S2(130)) {
            this.f23900static = m4Var;
        }
        return T0();
    }

    private boolean U1() {
        return i2();
    }

    private void U2(h0 h0Var, String str) throws h3 {
        if (h0Var instanceof r0) {
            throw new h3("Found hash literal: " + h0Var.mo27815for() + ". Expecting " + str, h0Var);
        }
    }

    private boolean V0() {
        return Z0() || S2(119) || c1();
    }

    private boolean V1() {
        m4 m4Var = this.f23900static;
        if (!j2()) {
            return false;
        }
        this.f23900static = m4Var;
        return k2();
    }

    private void V2(h0 h0Var, String str) throws h3 {
        if (h0Var instanceof t1) {
            throw new h3("Found list literal: " + h0Var.mo27815for() + ". Expecting " + str, h0Var);
        }
    }

    private boolean W0() {
        return c1();
    }

    private boolean W1() {
        m4 m4Var = this.f23900static;
        if (!S2(97)) {
            return false;
        }
        this.f23900static = m4Var;
        return S2(98);
    }

    private void W2(h0 h0Var, String str) throws h3 {
        if (h0Var instanceof z2) {
            throw new h3("Found number literal: " + h0Var.mo27815for() + ". Expecting " + str, h0Var);
        }
    }

    private boolean X0() {
        m4 m4Var;
        if (a1()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!b1());
        this.f23900static = m4Var;
        return false;
    }

    private boolean X1() {
        if (S2(137)) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (l2()) {
            this.f23900static = m4Var;
        }
        return S2(138);
    }

    private void X2(h0 h0Var, String str) throws h3 {
        if (h0Var instanceof x3) {
            throw new h3("Found string literal: " + h0Var + ". Expecting: " + str, h0Var);
        }
    }

    private boolean Y0() {
        return c1();
    }

    private boolean Y1() {
        m4 m4Var = this.f23900static;
        if (!S2(93)) {
            return false;
        }
        this.f23900static = m4Var;
        return m2();
    }

    private void Y2(h0 h0Var) throws h3 {
        X2(h0Var, "number");
        V2(h0Var, "number");
        U2(h0Var, "number");
        T2(h0Var, "number");
    }

    private boolean Z0() {
        m4 m4Var = this.f23900static;
        if (!d1()) {
            return false;
        }
        this.f23900static = m4Var;
        return e1();
    }

    private boolean Z1() {
        m4 m4Var = this.f23900static;
        if (!n2()) {
            return false;
        }
        this.f23900static = m4Var;
        return o2();
    }

    private Cnew Z2() {
        List<Cnew> list = this.f23876break;
        int size = list != null ? list.size() : 0;
        if (size != 0) {
            return this.f23876break.get(size - 1);
        }
        return null;
    }

    private void a0(h0 h0Var) throws h3 {
        X2(h0Var, "boolean (true/false)");
        V2(h0Var, "boolean (true/false)");
        U2(h0Var, "boolean (true/false)");
        W2(h0Var, "boolean (true/false)");
    }

    private boolean a1() {
        m4 m4Var;
        if (f1()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!g1());
        this.f23900static = m4Var;
        return false;
    }

    private boolean a2() {
        return S2(133) || p2() || S2(134);
    }

    private void a3() {
        this.f23876break.remove(r0.size() - 1);
    }

    private boolean b1() {
        m4 m4Var = this.f23900static;
        if (h1()) {
            this.f23900static = m4Var;
            if (i1()) {
                return true;
            }
        }
        return a1();
    }

    private boolean b2() {
        return S2(135) || Y0() || S2(136);
    }

    private Cnew b3() {
        if (this.f23876break == null) {
            this.f23876break = new ArrayList(4);
        }
        Cnew cnew = new Cnew();
        this.f23876break.add(cnew);
        return cnew;
    }

    private void c0(String str, h0 h0Var, m4 m4Var) throws h3 {
        Cnew cnew;
        List<Cnew> list = this.f23876break;
        int size = list != null ? list.size() : 0;
        do {
            size--;
            if (size < 0) {
                throw new h3("The left hand operand of ?" + m4Var.image + " must be a loop variable, but there's no loop variable in scope with this name: " + str, h0Var);
            }
            cnew = this.f23876break.get(size);
            if (str.equals(cnew.f23914do)) {
                break;
            }
        } while (!str.equals(cnew.f23916if));
        if (cnew.f23915for != 3) {
            return;
        }
        throw new h3("The left hand operand of ?" + m4Var.image + " can't be the loop variable of an user defined directive: " + str, h0Var);
    }

    private boolean c1() {
        m4 m4Var;
        if (j1()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!k1());
        this.f23900static = m4Var;
        return false;
    }

    private boolean c2() {
        return S2(99) || S2(142);
    }

    private static k0 c3(Reader reader, ParserConfiguration parserConfiguration) {
        t3 t3Var = new t3(reader, 1, 1);
        t3Var.m28308package(parserConfiguration.getTabSize());
        return new k0(t3Var);
    }

    public static j0 d0(String str) {
        k0 k0Var = new k0(new t3(new StringReader(str), 1, 1, str.length()));
        k0Var.m28177try(2);
        j0 j0Var = new j0(k0Var);
        k0Var.Q(j0Var);
        return j0Var;
    }

    private boolean d1() {
        if (S2(135)) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (l1()) {
            this.f23900static = m4Var;
        }
        return S2(136);
    }

    private boolean d2() {
        if (S2(99)) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (!S2(142)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(122)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(123)) {
            return false;
        }
        this.f23900static = m4Var;
        return q2();
    }

    private void d3() {
        e91 e91Var = this.f23877case;
        if (!(e91Var instanceof y1)) {
            this.f23889goto = false;
            return;
        }
        int i = this.f23884else;
        if (i == 21) {
            this.f23889goto = ((y1) e91Var).mo28182catch();
            return;
        }
        if (i == 22) {
            this.f23889goto = true;
        } else {
            if (i == 20) {
                this.f23889goto = false;
                return;
            }
            throw new IllegalStateException("Unhandled autoEscaping ENUM: " + this.f23884else);
        }
    }

    private boolean e1() {
        return m1();
    }

    private boolean e2() {
        return S2(133) || Y0() || S2(134);
    }

    private static Cstatic f0() {
        try {
            return new Cstatic((String) null, new StringReader(""), freemarker.template.Cdo.f1());
        } catch (IOException e2) {
            throw new RuntimeException("Failed to create dummy template", e2);
        }
    }

    private boolean f1() {
        m4 m4Var = this.f23900static;
        if (!n1()) {
            return false;
        }
        this.f23900static = m4Var;
        if (!o1()) {
            return false;
        }
        this.f23900static = m4Var;
        return p1();
    }

    private boolean f2() {
        return S2(135) || p2() || S2(136);
    }

    private boolean g1() {
        m4 m4Var = this.f23900static;
        if (q1()) {
            this.f23900static = m4Var;
            if (r1()) {
                this.f23900static = m4Var;
                if (s1()) {
                    return true;
                }
            }
        }
        return f1();
    }

    private boolean g2() {
        if (S2(103) || S2(142)) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (G0()) {
            this.f23900static = m4Var;
        }
        m4 m4Var2 = this.f23900static;
        if (H0()) {
            this.f23900static = m4Var2;
        }
        m4 m4Var3 = this.f23900static;
        if (!I0()) {
            return false;
        }
        this.f23900static = m4Var3;
        return false;
    }

    private void g3(h0 h0Var) throws h3 {
        W2(h0Var, TypedValues.Custom.S_STRING);
        V2(h0Var, TypedValues.Custom.S_STRING);
        U2(h0Var, TypedValues.Custom.S_STRING);
        T2(h0Var, TypedValues.Custom.S_STRING);
    }

    private h0 h0(h0 h0Var) {
        return !this.f23902super.isEmpty() ? ((e0) this.f23902super.getFirst()).r(h0Var) : h0Var;
    }

    private boolean h1() {
        return S2(120);
    }

    private boolean h2() {
        m4 m4Var = this.f23900static;
        if (!S2(153)) {
            return false;
        }
        this.f23900static = m4Var;
        return J0();
    }

    private String i0() {
        return this.f23909while.f23985super == 12 ? "#forEach" : "#foreach";
    }

    private boolean i1() {
        return S2(121);
    }

    private boolean i2() {
        return S2(104);
    }

    private boolean j1() {
        m4 m4Var;
        if (t1()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!u1());
        this.f23900static = m4Var;
        return false;
    }

    private boolean j2() {
        m4 m4Var = this.f23900static;
        if (K0()) {
            this.f23900static = m4Var;
            if (L0()) {
                return true;
            }
        }
        return X0();
    }

    private boolean k0(h0 h0Var, boolean z) throws h3 {
        try {
            TemplateModel templateModelM28055throws = h0Var.m28055throws(null);
            if (templateModelM28055throws instanceof TemplateBooleanModel) {
                try {
                    return ((TemplateBooleanModel) templateModelM28055throws).getAsBoolean();
                } catch (k52 unused) {
                }
            }
            if (!z || !(templateModelM28055throws instanceof TemplateScalarModel)) {
                throw new h3("Expecting boolean (true/false) parameter", h0Var);
            }
            try {
                return Csuper.m29321package(((TemplateScalarModel) templateModelM28055throws).getAsString());
            } catch (Exception e2) {
                throw new h3(e2.getMessage() + "\nExpecting boolean (true/false), found: " + h0Var.mo27815for(), h0Var);
            }
        } catch (Exception e3) {
            throw new h3(e3.getMessage() + "\nCould not evaluate expression: " + h0Var.mo27815for(), h0Var, e3);
        }
    }

    private boolean k1() {
        return S2(128) || j1();
    }

    private boolean k2() {
        if (S2(100)) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (!M0()) {
            return false;
        }
        this.f23900static = m4Var;
        return false;
    }

    private e91 l0() {
        int length;
        String strQ1 = this.f23883do.q1();
        if (strQ1 == null || (length = strQ1.length()) < 5 || strQ1.charAt(length - 5) != '.') {
            return null;
        }
        char cCharAt = strQ1.charAt(length - 4);
        if (cCharAt != 'f' && cCharAt != 'F') {
            return null;
        }
        char cCharAt2 = strQ1.charAt(length - 3);
        if (cCharAt2 != 't' && cCharAt2 != 'T') {
            return null;
        }
        char cCharAt3 = strQ1.charAt(length - 2);
        if (cCharAt3 != 'l' && cCharAt3 != 'L') {
            return null;
        }
        char cCharAt4 = strQ1.charAt(length - 1);
        try {
            if (cCharAt4 == 'h' || cCharAt4 == 'H') {
                return this.f23883do.b1().D1(q0.f24076do.mo889if());
            }
            if (cCharAt4 == 'x' || cCharAt4 == 'X') {
                return this.f23883do.b1().D1(v4.f24252do.mo889if());
            }
            return null;
        } catch (jc2 e2) {
            throw new mc("Unregistered std format", e2);
        }
    }

    private boolean l1() {
        m4 m4Var;
        if (m1()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!v1());
        this.f23900static = m4Var;
        return false;
    }

    private boolean l2() {
        m4 m4Var;
        if (Y0()) {
            return true;
        }
        m4 m4Var2 = this.f23900static;
        if (S2(130)) {
            this.f23900static = m4Var2;
            if (S2(132)) {
                return true;
            }
        }
        if (Y0()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!N0());
        this.f23900static = m4Var;
        return false;
    }

    private boolean m1() {
        return S2(142);
    }

    private boolean m2() {
        return S2(94);
    }

    private boolean n1() {
        return w1();
    }

    private boolean n2() {
        return S2(95);
    }

    private boolean o1() {
        return x1();
    }

    private boolean o2() {
        return S2(96);
    }

    private boolean p0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ r2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(0, i);
        }
    }

    private boolean p1() {
        return y1();
    }

    private boolean p2() {
        m4 m4Var = this.f23900static;
        if (!O0()) {
            return false;
        }
        this.f23900static = m4Var;
        return false;
    }

    private boolean q0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ s2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(9, i);
        }
    }

    private boolean q1() {
        return S2(122);
    }

    private boolean q2() {
        m4 m4Var = this.f23900static;
        if (!S2(115)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(116)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(117)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(118)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(95)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(96)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(139)) {
            return false;
        }
        this.f23900static = m4Var;
        if (!S2(140)) {
            return false;
        }
        this.f23900static = m4Var;
        return S2(141);
    }

    private boolean r0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ t2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(10, i);
        }
    }

    private boolean r1() {
        return S2(125);
    }

    private boolean r2() {
        m4 m4Var = this.f23900static;
        if (!S2(120)) {
            return false;
        }
        this.f23900static = m4Var;
        return S2(121);
    }

    private boolean s0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ u2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(11, i);
        }
    }

    private boolean s1() {
        return S2(126);
    }

    private boolean s2() {
        return Z0() || S2(119);
    }

    private boolean t0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ v2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(12, i);
        }
    }

    private boolean t1() {
        if (z1()) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (!A1()) {
            return false;
        }
        this.f23900static = m4Var;
        return false;
    }

    private boolean t2() {
        m4 m4Var = this.f23900static;
        if (S2(130)) {
            this.f23900static = m4Var;
        }
        m4 m4Var2 = this.f23900static;
        if (S2(142)) {
            this.f23900static = m4Var2;
            if (S2(93)) {
                return true;
            }
        }
        m4 m4Var3 = this.f23900static;
        if (!S2(105)) {
            return false;
        }
        this.f23900static = m4Var3;
        if (!S2(108)) {
            return false;
        }
        this.f23900static = m4Var3;
        if (!S2(109)) {
            return false;
        }
        this.f23900static = m4Var3;
        if (!S2(110)) {
            return false;
        }
        this.f23900static = m4Var3;
        if (!S2(111)) {
            return false;
        }
        this.f23900static = m4Var3;
        if (!S2(112)) {
            return false;
        }
        this.f23900static = m4Var3;
        if (!S2(113)) {
            return false;
        }
        this.f23900static = m4Var3;
        return S2(114);
    }

    private boolean u0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ w2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(13, i);
        }
    }

    private boolean u1() {
        return S2(127) || t1();
    }

    private boolean u2() {
        return S2(142) || S2(105);
    }

    private boolean v0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ x2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(14, i);
        }
    }

    private boolean v1() {
        return S2(130) || m1();
    }

    private boolean v2() {
        return S2(135);
    }

    private boolean w0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ y2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(15, i);
        }
    }

    private boolean w1() {
        m4 m4Var = this.f23900static;
        if (S2(120)) {
            this.f23900static = m4Var;
            if (B1()) {
                return true;
            }
        }
        return y1();
    }

    private boolean w2() {
        return S2(142) || S2(105);
    }

    private boolean x0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ z2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(16, i);
        }
    }

    private boolean x1() {
        m4 m4Var;
        if (C1()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!C1());
        this.f23900static = m4Var;
        return y1();
    }

    private boolean x2() {
        m4 m4Var = this.f23900static;
        if (!S2(82)) {
            return false;
        }
        this.f23900static = m4Var;
        return S2(84);
    }

    private boolean y0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return !A2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(1, i);
        }
    }

    private boolean y1() {
        m4 m4Var;
        if (D1()) {
            return true;
        }
        do {
            m4Var = this.f23900static;
        } while (!E1());
        this.f23900static = m4Var;
        return false;
    }

    private boolean y2() {
        return S2(83);
    }

    private boolean z0(int i) {
        this.f23906throws = i;
        m4 m4Var = this.f23893native;
        this.f23900static = m4Var;
        this.f23903switch = m4Var;
        try {
            return true ^ B2();
        } catch (Cfor unused) {
            return true;
        } finally {
            R2(2, i);
        }
    }

    private boolean z1() {
        if (F1()) {
            return true;
        }
        m4 m4Var = this.f23900static;
        if (!G1()) {
            return false;
        }
        this.f23900static = m4Var;
        return false;
    }

    private boolean z2() {
        m4 m4Var = this.f23900static;
        if (S2(79)) {
            this.f23900static = m4Var;
        }
        m4 m4Var2 = this.f23900static;
        if (!S2(77)) {
            return false;
        }
        this.f23900static = m4Var2;
        return S2(76);
    }

    public void A(InputStream inputStream) {
        B(inputStream, null);
    }

    public void B(InputStream inputStream, String str) {
        try {
            this.f23891import.m28293catch(inputStream, str, 1, 1);
            this.f23909while.m28171do(this.f23891import);
            this.f23893native = new m4();
            this.f23899return = -1;
            int i = 0;
            this.f23882default = 0;
            for (int i2 = 0; i2 < 116; i2++) {
                this.f23885extends[i2] = -1;
            }
            while (true) {
                Cif[] cifArr = this.f23887finally;
                if (i >= cifArr.length) {
                    return;
                }
                cifArr[i] = new Cif();
                i++;
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public void C(Reader reader) {
        t3 t3Var = this.f23891import;
        if (t3Var == null) {
            this.f23891import = new t3(reader, 1, 1);
        } else {
            t3Var.m28300final(reader, 1, 1);
        }
        if (this.f23909while == null) {
            this.f23909while = new k0(this.f23891import);
        }
        this.f23909while.m28171do(this.f23891import);
        this.f23893native = new m4();
        this.f23899return = -1;
        int i = 0;
        this.f23882default = 0;
        for (int i2 = 0; i2 < 116; i2++) {
            this.f23885extends[i2] = -1;
        }
        while (true) {
            Cif[] cifArr = this.f23887finally;
            if (i >= cifArr.length) {
                return;
            }
            cifArr[i] = new Cif();
            i++;
        }
    }

    public final m3 D() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(7);
        c4 c4VarF = f();
        m3 m3Var = new m3(c4VarF);
        m3Var.m28070import(this.f23883do, m4VarJ2, m4VarJ2, c4VarF);
        return m3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final n3 E() throws h3 {
        m4 m4VarJ2;
        h0 h0Var;
        h0 h0VarM28117switch;
        int iP2;
        int iP22 = this.f23899return;
        if (iP22 == -1) {
            iP22 = P2();
        }
        m4 m4VarB = null;
        h0 h0VarM28117switch2 = null;
        if (iP22 == 67) {
            m4VarJ2 = J2(67);
            h0Var = null;
            h0VarM28117switch = null;
        } else {
            if (iP22 != 68) {
                this.f23885extends[41] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(68);
            int iP23 = this.f23899return;
            if (iP23 == -1) {
                iP23 = P2();
            }
            if (iP23 == 120 || iP23 == 121 || iP23 == 129 || iP23 == 133 || iP23 == 135 || iP23 == 137 || iP23 == 142) {
                h0VarM28117switch = m28117switch();
                iP2 = this.f23899return;
                if (iP2 == -1) {
                    iP2 = P2();
                }
                if (iP2 == 141) {
                    this.f23885extends[40] = this.f23882default;
                } else {
                    J2(141);
                    h0VarM28117switch2 = m28117switch();
                }
                h0 h0Var2 = h0VarM28117switch2;
                m4VarB = b();
                h0Var = h0Var2;
            } else {
                switch (iP23) {
                    case 93:
                    case 94:
                    case 95:
                    case 96:
                    case 97:
                    case 98:
                    case 99:
                        break;
                    default:
                        this.f23885extends[39] = this.f23882default;
                        h0VarM28117switch = null;
                        break;
                }
                iP2 = this.f23899return;
                if (iP2 == -1) {
                }
                if (iP2 == 141) {
                }
                h0 h0Var22 = h0VarM28117switch2;
                m4VarB = b();
                h0Var = h0Var22;
            }
        }
        if (m4VarB == null) {
            m4VarB = m4VarJ2;
        }
        n3 n3Var = new n3(h0VarM28117switch, h0Var);
        n3Var.m28075while(this.f23883do, m4VarJ2, m4VarB);
        return n3Var;
    }

    public final h0 F() throws h3 {
        m4 m4VarJ2;
        h0 h0VarY = y();
        if (!A0(Integer.MAX_VALUE)) {
            return h0VarY;
        }
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 150) {
            m4VarJ2 = J2(150);
        } else if (iP2 != 151) {
            switch (iP2) {
                case 115:
                    m4VarJ2 = J2(115);
                    break;
                case 116:
                    m4VarJ2 = J2(116);
                    break;
                case 117:
                    m4VarJ2 = J2(117);
                    break;
                case 118:
                    m4VarJ2 = J2(118);
                    break;
                default:
                    this.f23885extends[9] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
        } else {
            m4VarJ2 = J2(151);
        }
        h0 h0VarY2 = y();
        U2(h0VarY, "number");
        U2(h0VarY2, "number");
        V2(h0VarY, "number");
        V2(h0VarY2, "number");
        X2(h0VarY, "number");
        X2(h0VarY2, "number");
        q qVar = new q(h0VarY, h0VarY2, m4VarJ2.image);
        qVar.m28068final(this.f23883do, h0VarY, h0VarY2);
        return qVar;
    }

    public final p3 G() throws h3 {
        m4 m4VarJ2;
        h0 h0VarM28117switch;
        m4 m4VarB;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 26) {
            m4VarJ2 = J2(26);
            h0VarM28117switch = m28117switch();
            m4VarB = b();
        } else {
            if (iP2 != 57) {
                this.f23885extends[42] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(57);
            h0VarM28117switch = null;
            m4VarB = m4VarJ2;
        }
        if (this.f23880const) {
            if (h0VarM28117switch != null) {
                throw new h3("A macro cannot return a value", this.f23883do, m4VarJ2);
            }
        } else if (this.f23886final) {
            if (h0VarM28117switch == null) {
                throw new h3("A function must return a value", this.f23883do, m4VarJ2);
            }
        } else if (h0VarM28117switch == null) {
            throw new h3("A return instruction can only occur inside a macro or function", this.f23883do, m4VarJ2);
        }
        p3 p3Var = new p3(h0VarM28117switch);
        p3Var.m28075while(this.f23883do, m4VarJ2, m4VarB);
        return p3Var;
    }

    public final b4 H() throws h3, NumberFormatException {
        if (x0(Integer.MAX_VALUE)) {
            m28087abstract();
        }
        c4 c4VarF = f();
        J2(0);
        b4 b4VarM27888if = c4VarF.m27888if();
        b4VarM27888if.q();
        if (!this.f23894new) {
            b4VarM27888if = b4VarM27888if.k(this.f23890if);
        }
        b4VarM27888if.q();
        return b4VarM27888if;
    }

    public final r3 I() throws h3, NumberFormatException {
        m4 m4VarJ2;
        m4 m4VarJ22 = J2(12);
        if (Z2() == null) {
            throw new h3("#sep must be inside a #list (or " + i0() + ") block.", this.f23883do, m4VarJ22);
        }
        c4 c4VarF = f();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 39) {
            this.f23885extends[37] = this.f23882default;
            m4VarJ2 = null;
        } else {
            m4VarJ2 = J2(39);
        }
        r3 r3Var = new r3(c4VarF);
        if (m4VarJ2 != null) {
            r3Var.m28075while(this.f23883do, m4VarJ22, m4VarJ2);
        } else {
            r3Var.m28070import(this.f23883do, m4VarJ22, m4VarJ22, c4VarF);
        }
        return r3Var;
    }

    public final i3 J() throws h3 {
        m4 m4VarJ2 = J2(28);
        m4 m4VarJ22 = J2(142);
        J2(105);
        h0 h0VarM28117switch = m28117switch();
        m4 m4VarB = b();
        this.f23909while.m28172else(m4VarJ22);
        i3 i3Var = new i3(m4VarJ22, this.f23909while, h0VarM28117switch, this.f23883do.b1());
        i3Var.m28075while(this.f23883do, m4VarJ2, m4VarB);
        return i3Var;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:281)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final java.util.List<java.lang.Object> K() throws freemarker.core.h3 {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
        L6:
            int r2 = r5.f23899return
            r3 = -1
            if (r2 != r3) goto Lf
            int r2 = r5.P2()
        Lf:
            switch(r2) {
                case 79: goto L1c;
                case 80: goto L1c;
                case 81: goto L1c;
                case 82: goto L1c;
                case 83: goto L1c;
                case 84: goto L1c;
                default: goto L12;
            }
        L12:
            int[] r2 = r5.f23885extends
            r3 = 113(0x71, float:1.58E-43)
            int r4 = r5.f23882default
            r2[r3] = r4
            goto Lb4
        L1c:
            int r2 = r5.f23899return
            if (r2 != r3) goto L24
            int r2 = r5.P2()
        L24:
            switch(r2) {
                case 79: goto L6a;
                case 80: goto L6a;
                case 81: goto L6a;
                case 82: goto L38;
                case 83: goto L38;
                case 84: goto L38;
                default: goto L27;
            }
        L27:
            int[] r0 = r5.f23885extends
            r1 = 115(0x73, float:1.61E-43)
            int r2 = r5.f23882default
            r0[r1] = r2
            r5.J2(r3)
            freemarker.core.h3 r0 = new freemarker.core.h3
            r0.<init>()
            throw r0
        L38:
            r2 = 2147483647(0x7fffffff, float:NaN)
            boolean r4 = r5.v0(r2)
            if (r4 == 0) goto L46
            freemarker.core.z r2 = r5.N()
            goto L50
        L46:
            boolean r2 = r5.w0(r2)
            if (r2 == 0) goto L61
            freemarker.core.a3 r2 = r5.o()
        L50:
            if (r1 == 0) goto L5d
            java.lang.String r3 = r1.toString()
            r0.add(r3)
            r3 = 0
            r1.setLength(r3)
        L5d:
            r0.add(r2)
            goto L6
        L61:
            r5.J2(r3)
            freemarker.core.h3 r0 = new freemarker.core.h3
            r0.<init>()
            throw r0
        L6a:
            int r2 = r5.f23899return
            if (r2 != r3) goto L72
            int r2 = r5.P2()
        L72:
            switch(r2) {
                case 79: goto L94;
                case 80: goto L8d;
                case 81: goto L86;
                default: goto L75;
            }
        L75:
            int[] r0 = r5.f23885extends
            r1 = 114(0x72, float:1.6E-43)
            int r2 = r5.f23882default
            r0[r1] = r2
            r5.J2(r3)
            freemarker.core.h3 r0 = new freemarker.core.h3
            r0.<init>()
            throw r0
        L86:
            r2 = 81
            freemarker.core.m4 r2 = r5.J2(r2)
            goto L9a
        L8d:
            r2 = 80
            freemarker.core.m4 r2 = r5.J2(r2)
            goto L9a
        L94:
            r2 = 79
            freemarker.core.m4 r2 = r5.J2(r2)
        L9a:
            java.lang.String r3 = r2.image
            int r3 = r3.length()
            if (r3 == 0) goto L6
            if (r1 != 0) goto Lad
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = r2.image
            r1.<init>(r2)
            goto L6
        Lad:
            java.lang.String r2 = r2.image
            r1.append(r2)
            goto L6
        Lb4:
            if (r1 == 0) goto Lc3
            int r2 = r1.length()
            if (r2 == 0) goto Lc3
            java.lang.String r1 = r1.toString()
            r0.add(r1)
        Lc3:
            r0.trimToSize()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: freemarker.core.j0.K():java.util.List");
    }

    public final w3 L() throws h3 {
        m4 m4VarJ2;
        h0 h0VarM28117switch;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 25) {
            m4VarJ2 = J2(25);
            h0VarM28117switch = m28117switch();
            b();
        } else {
            if (iP2 != 58) {
                this.f23885extends[43] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(58);
            h0VarM28117switch = null;
        }
        w3 w3Var = new w3(h0VarM28117switch);
        w3Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return w3Var;
    }

    public final x3 M(boolean z) throws h3 {
        m4 m4VarJ2;
        boolean z2;
        String strM29307do;
        int interpolationSyntax;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 93) {
            m4VarJ2 = J2(93);
            z2 = false;
        } else {
            if (iP2 != 94) {
                this.f23885extends[22] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(94);
            z2 = true;
        }
        if (z2) {
            String str = m4VarJ2.image;
            strM29307do = str.substring(2, str.length() - 1);
        } else {
            try {
                String str2 = m4VarJ2.image;
                strM29307do = Csuper.m29307do(str2.substring(1, str2.length() - 1));
            } catch (h3 e2) {
                e2.lineNumber = m4VarJ2.beginLine;
                e2.columnNumber = m4VarJ2.beginColumn;
                e2.endLineNumber = m4VarJ2.endLine;
                e2.endColumnNumber = m4VarJ2.endColumn;
                throw e2;
            }
        }
        x3 x3Var = new x3(strM29307do);
        x3Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        if (z && !z2 && ((((interpolationSyntax = this.f23904this.getInterpolationSyntax()) == 20 || interpolationSyntax == 21) && m4VarJ2.image.indexOf("${") != -1) || ((interpolationSyntax == 20 && m4VarJ2.image.indexOf("#{") != -1) || (interpolationSyntax == 22 && m4VarJ2.image.indexOf("[=") != -1)))) {
            x3Var.f(this, this.f23877case);
        }
        return x3Var;
    }

    public final z N() throws h3 {
        m4 m4VarJ2;
        h0 h0VarM28117switch;
        m4 m4VarJ22;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 82) {
            m4VarJ2 = J2(82);
            h0VarM28117switch = m28117switch();
            m4VarJ22 = J2(138);
        } else {
            if (iP2 != 84) {
                this.f23885extends[28] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(84);
            h0VarM28117switch = m28117switch();
            m4VarJ22 = J2(134);
        }
        U2(h0VarM28117switch, u2.STRING_COERCABLE_TYPES_DESC);
        V2(h0VarM28117switch, u2.STRING_COERCABLE_TYPES_DESC);
        z zVar = new z(h0VarM28117switch, h0(h0VarM28117switch), this.f23877case, this.f23889goto);
        zVar.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return zVar;
    }

    public final y3 O() throws h3, NumberFormatException {
        c2 c2VarW;
        m4 m4VarJ2 = J2(14);
        h0 h0VarM28117switch = m28117switch();
        J2(148);
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 33 || iP2 == 34 || iP2 == 79) {
            c2VarW = W();
        } else {
            this.f23885extends[88] = this.f23882default;
            c2VarW = null;
        }
        this.f23878catch++;
        y3 y3Var = new y3(h0VarM28117switch, c2VarW);
        int iP22 = this.f23899return;
        if (iP22 == -1) {
            iP22 = P2();
        }
        if (iP22 == 15 || iP22 == 64) {
            boolean z = false;
            while (true) {
                l lVarM28091class = m28091class();
                if (lVarM28091class.f24005class == null) {
                    if (z) {
                        throw new h3("You can only have one default case in a switch statement", this.f23883do, m4VarJ2);
                    }
                    z = true;
                }
                y3Var.r(lVarM28091class);
                int iP23 = this.f23899return;
                if (iP23 == -1) {
                    iP23 = P2();
                }
                if (iP23 != 15 && iP23 != 64) {
                    this.f23885extends[89] = this.f23882default;
                    int iP24 = this.f23899return;
                    if (iP24 == -1) {
                        iP24 = P2();
                    }
                    if (iP24 != 79) {
                        this.f23885extends[90] = this.f23882default;
                    } else {
                        J2(79);
                    }
                }
            }
        } else {
            this.f23885extends[91] = this.f23882default;
        }
        m4 m4VarJ22 = J2(53);
        this.f23878catch--;
        y3Var.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return y3Var;
    }

    public final n4 P() throws h3, NumberFormatException {
        m4 m4VarJ2;
        m4 m4VarJ22 = J2(23);
        h0 h0VarM28117switch = m28117switch();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 131) {
            this.f23885extends[85] = this.f23882default;
        } else {
            J2(131);
        }
        c4 c4VarF = null;
        HashMap map = null;
        while (true) {
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 142) {
                break;
            }
            m4 m4VarJ23 = J2(142);
            J2(105);
            h0 h0VarM28117switch2 = m28117switch();
            if (map == null) {
                map = new HashMap();
            }
            map.put(m4VarJ23.image, h0VarM28117switch2);
        }
        this.f23885extends[86] = this.f23882default;
        int iP23 = this.f23899return;
        if (iP23 == -1) {
            iP23 = P2();
        }
        if (iP23 == 148) {
            J2(148);
            c4VarF = f();
            m4VarJ2 = J2(52);
        } else {
            if (iP23 != 149) {
                this.f23885extends[87] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(149);
        }
        n4 n4Var = new n4(h0VarM28117switch, map, c4VarF);
        n4Var.m28075while(this.f23883do, m4VarJ22, m4VarJ2);
        return n4Var;
    }

    public final b4 Q() throws h3 {
        m4 m4VarJ2;
        o4 o4Var;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        switch (iP2) {
            case 60:
                m4VarJ2 = J2(60);
                o4Var = new o4(true, true);
                break;
            case 61:
                m4VarJ2 = J2(61);
                o4Var = new o4(true, false);
                break;
            case 62:
                m4VarJ2 = J2(62);
                o4Var = new o4(false, true);
                break;
            case 63:
                m4VarJ2 = J2(63);
                o4Var = new o4(false, false);
                break;
            default:
                this.f23885extends[45] = this.f23882default;
                J2(-1);
                throw new h3();
        }
        o4Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return o4Var;
    }

    public final h0 R() throws h3 {
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 120 || iP2 == 121) {
            return S();
        }
        if (iP2 == 129) {
            return m();
        }
        if (iP2 != 133 && iP2 != 135 && iP2 != 137 && iP2 != 142) {
            switch (iP2) {
                case 93:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                    break;
                default:
                    this.f23885extends[3] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
        }
        return x();
    }

    public final h0 S() throws h3 {
        m4 m4VarJ2;
        boolean z;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 120) {
            m4VarJ2 = J2(120);
            z = false;
        } else {
            if (iP2 != 121) {
                this.f23885extends[5] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(121);
            z = true;
        }
        h0 h0VarX = x();
        q4 q4Var = new q4(h0VarX, z);
        q4Var.m28073throw(this.f23883do, m4VarJ2, h0VarX);
        return q4Var;
    }

    public final b4 T() throws h3, NumberFormatException {
        ArrayList arrayListV;
        HashMap mapH;
        int i;
        c4 c4Var;
        m4 m4VarJ2;
        List<Cnew> list;
        m4 m4VarJ22 = J2(74);
        h0 h0VarM28117switch = m28117switch();
        ArrayList arrayList = null;
        h0 h0Var = ((h0VarM28117switch instanceof w0) || ((h0VarM28117switch instanceof a0) && ((a0) h0VarM28117switch).e())) ? h0VarM28117switch : null;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 152) {
            this.f23885extends[68] = this.f23882default;
        } else {
            J2(152);
        }
        if (s0(Integer.MAX_VALUE)) {
            mapH = h();
            arrayListV = null;
        } else {
            arrayListV = v();
            mapH = null;
        }
        int iP22 = this.f23899return;
        if (iP22 == -1) {
            iP22 = P2();
        }
        if (iP22 != 131) {
            this.f23885extends[74] = this.f23882default;
        } else {
            J2(131);
            arrayList = new ArrayList(4);
            int iP23 = this.f23899return;
            if (iP23 == -1) {
                iP23 = P2();
            }
            if (iP23 == 142 || iP23 == 152) {
                int iP24 = this.f23899return;
                if (iP24 == -1) {
                    iP24 = P2();
                }
                if (iP24 != 152) {
                    this.f23885extends[69] = this.f23882default;
                } else {
                    J2(152);
                }
                arrayList.add(J2(142).image);
                while (true) {
                    int iP25 = this.f23899return;
                    if (iP25 == -1) {
                        iP25 = P2();
                    }
                    if (iP25 != 130 && iP25 != 152) {
                        break;
                    }
                    int iP26 = this.f23899return;
                    if (iP26 == -1) {
                        iP26 = P2();
                    }
                    if (iP26 != 152) {
                        this.f23885extends[71] = this.f23882default;
                    } else {
                        J2(152);
                    }
                    J2(130);
                    int iP27 = this.f23899return;
                    if (iP27 == -1) {
                        iP27 = P2();
                    }
                    if (iP27 != 152) {
                        this.f23885extends[72] = this.f23882default;
                    } else {
                        J2(152);
                    }
                    arrayList.add(J2(142).image);
                }
                this.f23885extends[70] = this.f23882default;
            } else {
                this.f23885extends[73] = this.f23882default;
            }
        }
        int iP28 = this.f23899return;
        if (iP28 == -1) {
            iP28 = P2();
        }
        if (iP28 == 148) {
            J2(148);
            if (arrayList == null || (list = this.f23876break) == null || list.isEmpty()) {
                i = 0;
            } else {
                int size = this.f23876break.size();
                int size2 = arrayList.size();
                i = 0;
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = (String) arrayList.get(i2);
                    int i3 = size - 1;
                    while (true) {
                        if (i3 >= 0) {
                            Cnew cnew = this.f23876break.get(i3);
                            if (cnew.f23914do == null || !cnew.f23914do.equals(str)) {
                                i3--;
                            } else if (cnew.f23915for != 3) {
                                Cnew cnewB3 = b3();
                                cnewB3.f23914do = str;
                                cnewB3.f23915for = 3;
                                i++;
                            }
                        }
                    }
                }
            }
            c4 c4VarF = f();
            m4 m4VarJ23 = J2(75);
            for (int i4 = 0; i4 < i; i4++) {
                a3();
            }
            String strTrim = m4VarJ23.image.substring(3, r10.length() - 1).trim();
            if (strTrim.length() > 0) {
                if (h0Var == null) {
                    throw new h3("Expecting </@>", this.f23883do, m4VarJ23);
                }
                String strMo27815for = h0Var.mo27815for();
                if (!strTrim.equals(strMo27815for)) {
                    throw new h3("Expecting </@> or </@" + strMo27815for + ">", this.f23883do, m4VarJ23);
                }
            }
            c4Var = c4VarF;
            m4VarJ2 = m4VarJ23;
        } else {
            if (iP28 != 149) {
                this.f23885extends[75] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(149);
            c4Var = c4.f23539for;
        }
        s4 s4Var = arrayListV != null ? new s4(h0VarM28117switch, arrayListV, c4Var, arrayList) : new s4(h0VarM28117switch, mapH, c4Var, arrayList);
        s4Var.m28075while(this.f23883do, m4VarJ22, m4VarJ2);
        return s4Var;
    }

    public final m4 U(m4 m4Var, StringBuilder sb) throws h3 {
        m4 m4VarJ2;
        while (true) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            switch (iP2) {
                case 154:
                    m4VarJ2 = J2(154);
                    break;
                case 155:
                    m4VarJ2 = J2(155);
                    break;
                case 156:
                    m4VarJ2 = J2(156);
                    break;
                case 157:
                    m4VarJ2 = J2(157);
                    break;
                default:
                    this.f23885extends[97] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
            sb.append(m4VarJ2.image);
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            switch (iP22) {
                case 154:
                case 155:
                case 156:
                case 157:
                default:
                    this.f23885extends[98] = this.f23882default;
                    sb.setLength(sb.length() - m4VarJ2.image.length());
                    if (m4VarJ2.image.endsWith(";") || ul2.m8517throw(this.f23883do) < ul2.f6937new) {
                        return m4VarJ2;
                    }
                    throw new h3("Unclosed \"" + m4Var.image + "\"", this.f23883do, m4Var);
            }
        }
    }

    public final t4 V() throws h3 {
        h0 h0VarM28117switch;
        m4 m4VarJ2 = J2(24);
        h0 h0VarM28117switch2 = m28117switch();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 141) {
            this.f23885extends[38] = this.f23882default;
            h0VarM28117switch = null;
        } else {
            J2(141);
            h0VarM28117switch = m28117switch();
        }
        m4 m4VarB = b();
        t4 t4Var = new t4(h0VarM28117switch2, h0VarM28117switch);
        t4Var.m28075while(this.f23883do, m4VarJ2, m4VarB);
        return t4Var;
    }

    public final c2 W() throws h3 {
        b4 b4VarM28092const;
        c2 c2Var = new c2();
        b4 b4Var = null;
        while (true) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            if (iP2 == 33 || iP2 == 34) {
                b4VarM28092const = m28092const();
            } else {
                if (iP2 != 79) {
                    this.f23885extends[106] = this.f23882default;
                    J2(-1);
                    throw new h3();
                }
                b4VarM28092const = X();
            }
            if (b4VarM28092const != null) {
                if (b4Var == null) {
                    b4Var = b4VarM28092const;
                }
                c2Var.m27844return(b4VarM28092const);
            }
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 33 && iP22 != 34 && iP22 != 79) {
                this.f23885extends[107] = this.f23882default;
                if (b4Var == null || (this.f23890if && !this.f23894new && c2Var.m27840package() == 1 && (c2Var.m27835default(0) instanceof k4))) {
                    return null;
                }
                c2Var.m28068final(this.f23883do, b4Var, b4VarM28092const);
                return c2Var;
            }
        }
    }

    public final k4 X() throws h3 {
        m4 m4VarJ2 = J2(79);
        if (this.f23888for && this.f23905throw == 1 && !this.f23894new) {
            return null;
        }
        k4 k4Var = new k4(m4VarJ2.image, false);
        k4Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return k4Var;
    }

    public int Y() {
        return this.f23909while.f23985super;
    }

    public int Z() {
        return this.f23909while.f23987this ? 2 : 1;
    }

    public final h0 a() throws h3 {
        if (q0(Integer.MAX_VALUE)) {
            w1.Cdo cdoM28103implements = m28103implements();
            J2(119);
            h0 h0VarQ = q();
            w1 w1Var = new w1(cdoM28103implements, h0VarQ);
            if (cdoM28103implements.m28341for() != null) {
                w1Var.m28073throw(this.f23883do, cdoM28103implements.m28341for(), h0VarQ);
                return w1Var;
            }
            w1Var.m28068final(this.f23883do, cdoM28103implements.m28343new().get(0), h0VarQ);
            return w1Var;
        }
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 120 && iP2 != 121 && iP2 != 129 && iP2 != 133 && iP2 != 135 && iP2 != 137 && iP2 != 142) {
            switch (iP2) {
                case 93:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                    break;
                default:
                    this.f23885extends[16] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
        }
        return q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: abstract, reason: not valid java name */
    public final void m28087abstract() throws h3 {
        String asString;
        String str;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 79) {
            this.f23885extends[108] = this.f23882default;
        } else {
            J2(79);
        }
        int iP22 = this.f23899return;
        if (iP22 == -1) {
            iP22 = P2();
        }
        if (iP22 != 76) {
            if (iP22 == 77) {
                J2(77);
                return;
            } else {
                this.f23885extends[110] = this.f23882default;
                J2(-1);
                throw new h3();
            }
        }
        J2(76);
        String str2 = null;
        m4 m4Var = null;
        while (true) {
            int iP23 = this.f23899return;
            if (iP23 == -1) {
                iP23 = P2();
            }
            if (iP23 != 142) {
                this.f23885extends[109] = this.f23882default;
                if (m4Var != null) {
                    b0(m4Var);
                }
                b();
                return;
            }
            m4 m4VarJ2 = J2(142);
            J2(105);
            h0 h0VarM28117switch = m28117switch();
            this.f23909while.m28172else(m4VarJ2);
            String str3 = m4VarJ2.image;
            try {
                TemplateModel templateModelM28055throws = h0VarM28117switch.m28055throws(null);
                if (templateModelM28055throws instanceof TemplateScalarModel) {
                    try {
                        asString = ((TemplateScalarModel) h0VarM28117switch).getAsString();
                    } catch (k52 unused) {
                    }
                } else {
                    asString = null;
                }
                if (this.f23883do != null) {
                    if (str3.equalsIgnoreCase("encoding")) {
                        if (asString == null) {
                            throw new h3("Expected a string constant for \"" + str3 + "\".", h0VarM28117switch);
                        }
                        String strE1 = this.f23883do.e1();
                        if (strE1 != null && !strE1.equalsIgnoreCase(asString)) {
                            throw new Cstatic.Cif(asString, strE1);
                        }
                    } else if (str3.equalsIgnoreCase("STRIP_WHITESPACE") || str3.equals("stripWhitespace")) {
                        this.f23890if = k0(h0VarM28117switch, true);
                    } else if (str3.equalsIgnoreCase("STRIP_TEXT") || str3.equals("stripText")) {
                        this.f23888for = k0(h0VarM28117switch, true);
                    } else if (str3.equalsIgnoreCase("STRICT_SYNTAX") || str3.equals(freemarker.template.Cdo.J1)) {
                        this.f23909while.f23974goto = k0(h0VarM28117switch, true);
                    } else if (str3.equalsIgnoreCase(k.a) || str3.equals(k.f23944synchronized)) {
                        if (k0(h0VarM28117switch, false)) {
                            this.f23884else = 22;
                            m4Var = m4VarJ2;
                        } else {
                            this.f23884else = 20;
                        }
                        d3();
                        ul2.m8519while(this.f23883do, this.f23889goto);
                    } else if (str3.equalsIgnoreCase("output_format") || str3.equals("outputFormat")) {
                        if (asString == null) {
                            throw new h3("Expected a string constant for \"" + str3 + "\".", h0VarM28117switch);
                        }
                        try {
                            this.f23877case = this.f23883do.b1().D1(asString);
                            d3();
                            ul2.m8508import(this.f23883do, this.f23877case);
                            ul2.m8519while(this.f23883do, this.f23889goto);
                        } catch (jc2 e2) {
                            throw new h3(e2.getMessage(), h0VarM28117switch, e2.getCause());
                        } catch (IllegalArgumentException e3) {
                            throw new h3("Invalid format name: " + e3.getMessage(), h0VarM28117switch, e3.getCause());
                        }
                    } else if (str3.equalsIgnoreCase("ns_prefixes") || str3.equals("nsPrefixes")) {
                        if (!(templateModelM28055throws instanceof TemplateHashModelEx)) {
                            throw new h3("Expecting a hash of prefixes to namespace URI's.", h0VarM28117switch);
                        }
                        TemplateHashModelEx templateHashModelEx = (TemplateHashModelEx) templateModelM28055throws;
                        TemplateModelIterator it = templateHashModelEx.keys().iterator();
                        while (it.hasNext()) {
                            String asString2 = ((TemplateScalarModel) it.next()).getAsString();
                            TemplateModel templateModel = templateHashModelEx.get(asString2);
                            if (!(templateModel instanceof TemplateScalarModel)) {
                                throw new h3("Non-string value in prefix to namespace hash.", h0VarM28117switch);
                            }
                            try {
                                this.f23883do.S0(asString2, ((TemplateScalarModel) templateModel).getAsString());
                            } catch (IllegalArgumentException e4) {
                                throw new h3(e4.getMessage(), h0VarM28117switch);
                            }
                        }
                    } else {
                        if (!str3.equalsIgnoreCase("attributes")) {
                            if (str3.equals("charset")) {
                                str2 = "encoding";
                            } else if (str3.equals("xmlns")) {
                                str2 = this.f23909while.f23985super == 12 ? "nsPrefixes" : "ns_prefixes";
                            } else if (str3.equals("auto_escape") || str3.equals("auto_escaping") || str3.equals("autoesc")) {
                                str2 = k.a;
                            } else if (str3.equals("autoEscape") || str3.equals("autoEscaping")) {
                                str2 = k.f23944synchronized;
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append("Unknown FTL header parameter: ");
                            sb.append(m4VarJ2.image);
                            if (str2 == null) {
                                str = "";
                            } else {
                                str = ". You may meant: " + str2;
                            }
                            sb.append(str);
                            throw new h3(sb.toString(), this.f23883do, m4VarJ2);
                        }
                        if (!(templateModelM28055throws instanceof TemplateHashModelEx)) {
                            throw new h3("Expecting a hash of attribute names to values.", h0VarM28117switch);
                        }
                        TemplateHashModelEx templateHashModelEx2 = (TemplateHashModelEx) templateModelM28055throws;
                        try {
                            TemplateModelIterator it2 = templateHashModelEx2.keys().iterator();
                            while (it2.hasNext()) {
                                String asString3 = ((TemplateScalarModel) it2.next()).getAsString();
                                this.f23883do.m0(asString3, Ctry.m29347for(templateHashModelEx2.get(asString3)));
                            }
                        } catch (k52 unused2) {
                        }
                    }
                }
            } catch (Exception e5) {
                throw new h3("Could not evaluate expression (on parse-time): " + h0VarM28117switch.mo27815for() + " \nUnderlying cause: " + e5, h0VarM28117switch, e5);
            }
        }
    }

    public final m4 b() throws h3 {
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 148) {
            return J2(148);
        }
        if (iP2 == 149) {
            return J2(149);
        }
        this.f23885extends[93] = this.f23882default;
        J2(-1);
        throw new h3();
    }

    public void b0(m4 m4Var) throws h3 {
        if (this.f23877case instanceof y1) {
            return;
        }
        throw new h3("The current output format can't do escaping: " + this.f23877case, this.f23883do, m4Var);
    }

    /* renamed from: break, reason: not valid java name */
    public final k m28088break() throws h3 {
        m4 m4VarJ2 = J2(99);
        m4 m4VarJ22 = J2(142);
        this.f23909while.m28172else(m4VarJ22);
        String str = m4VarJ22.image;
        k kVar = new k(m4VarJ22, this.f23909while, (str.equals("output_format") || str.equals("outputFormat")) ? new ez1(this.f23877case.mo889if()) : (str.equals(k.a) || str.equals(k.f23944synchronized)) ? this.f23889goto ? TemplateBooleanModel.TRUE : TemplateBooleanModel.FALSE : null);
        kVar.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return kVar;
    }

    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v7 */
    public final x1 c() throws h3, NumberFormatException {
        m4 m4VarJ2;
        boolean z;
        int i;
        int i2;
        m4 m4VarJ22;
        h0 h0VarM28117switch;
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        int iP2 = this.f23899return;
        int i3 = -1;
        if (iP2 == -1) {
            iP2 = P2();
        }
        ?? r8 = 0;
        if (iP2 == 21) {
            m4VarJ2 = J2(21);
            z = true;
        } else {
            if (iP2 != 22) {
                this.f23885extends[60] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(22);
            z = false;
        }
        if (this.f23880const || this.f23886final) {
            throw new h3("Macro or function definitions can't be nested into each other.", this.f23883do, m4VarJ2);
        }
        if (z) {
            this.f23886final = true;
        } else {
            this.f23880const = true;
        }
        h0 h0VarM28115strictfp = m28115strictfp();
        String asString = h0VarM28115strictfp instanceof x3 ? ((x3) h0VarM28115strictfp).getAsString() : ((w0) h0VarM28115strictfp).d();
        int iP22 = this.f23899return;
        if (iP22 == -1) {
            iP22 = P2();
        }
        if (iP22 != 135) {
            this.f23885extends[61] = this.f23882default;
        } else {
            J2(135);
        }
        String str = null;
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            int iP23 = this.f23899return;
            if (iP23 == i3) {
                iP23 = P2();
            }
            if (iP23 != 142) {
                this.f23885extends[62] = this.f23882default;
                int iP24 = this.f23899return;
                if (iP24 == i3) {
                    iP24 = P2();
                }
                if (iP24 != 136) {
                    this.f23885extends[66] = this.f23882default;
                } else {
                    J2(136);
                }
                J2(148);
                List<Cnew> list = this.f23876break;
                this.f23876break = null;
                int i4 = this.f23907try;
                int i5 = ul2.f6928case;
                if (i4 >= i5) {
                    i = this.f23878catch;
                    i2 = this.f23879class;
                    this.f23878catch = r8;
                    this.f23879class = r8;
                } else {
                    i = 0;
                    i2 = 0;
                }
                c4 c4VarF = f();
                int iP25 = this.f23899return;
                if (iP25 == i3) {
                    iP25 = P2();
                }
                if (iP25 == 46) {
                    m4VarJ22 = J2(46);
                    if (!z) {
                        throw new h3("Expected macro end tag here.", this.f23883do, m4VarJ22);
                    }
                } else {
                    if (iP25 != 47) {
                        this.f23885extends[67] = this.f23882default;
                        J2(i3);
                        throw new h3();
                    }
                    m4VarJ22 = J2(47);
                    if (z) {
                        throw new h3("Expected function end tag here.", this.f23883do, m4VarJ22);
                    }
                }
                m4 m4Var = m4VarJ22;
                this.f23876break = list;
                if (this.f23907try >= i5) {
                    this.f23878catch = i;
                    this.f23879class = i2;
                }
                this.f23886final = r8;
                this.f23880const = r8;
                x1 x1Var = new x1(asString, arrayList, map, str, z, c4VarF);
                x1Var.m28075while(this.f23883do, m4VarJ2, m4Var);
                this.f23883do.R0(x1Var);
                return x1Var;
            }
            m4 m4VarJ23 = J2(142);
            int iP26 = this.f23899return;
            if (iP26 == i3) {
                iP26 = P2();
            }
            if (iP26 != 124) {
                this.f23885extends[63] = this.f23882default;
            } else {
                J2(124);
                z2 = true;
            }
            int iP27 = this.f23899return;
            if (iP27 == i3) {
                iP27 = P2();
            }
            if (iP27 != 105) {
                this.f23885extends[64] = this.f23882default;
                h0VarM28117switch = null;
            } else {
                J2(105);
                h0VarM28117switch = m28117switch();
                arrayList2.add(m4VarJ23.image);
                z3 = true;
            }
            int iP28 = this.f23899return;
            if (iP28 == i3) {
                iP28 = P2();
            }
            if (iP28 != 130) {
                this.f23885extends[65] = this.f23882default;
            } else {
                J2(130);
            }
            if (str != null) {
                throw new h3("There may only be one \"catch-all\" parameter in a macro declaration, and it must be the last parameter.", this.f23883do, m4VarJ23);
            }
            if (!z2) {
                arrayList.add(m4VarJ23.image);
                if (z3 && h0VarM28117switch == null) {
                    throw new h3("In a macro declaration, parameters without a default value must all occur before the parameters with default values.", this.f23883do, m4VarJ23);
                }
                map.put(m4VarJ23.image, h0VarM28117switch);
            } else {
                if (h0VarM28117switch != null) {
                    throw new h3("\"Catch-all\" macro parameter may not have a default value.", this.f23883do, m4VarJ23);
                }
                str = m4VarJ23.image;
            }
            i3 = -1;
            r8 = 0;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final Cclass m28089case() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(30);
        b0(m4VarJ2);
        int i = this.f23884else;
        this.f23884else = 22;
        d3();
        c4 c4VarF = f();
        m4 m4VarJ22 = J2(49);
        Cclass cclass = new Cclass(c4VarF);
        cclass.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        this.f23884else = i;
        d3();
        return cclass;
    }

    /* renamed from: catch, reason: not valid java name */
    public final b4 m28090catch() throws h3 {
        ArrayList arrayListV;
        HashMap mapH;
        m4 m4VarJ2 = J2(27);
        m4 m4VarJ22 = J2(142);
        w0 w0Var = new w0(m4VarJ22.image);
        w0Var.m28075while(this.f23883do, m4VarJ22, m4VarJ22);
        if (u0(Integer.MAX_VALUE)) {
            mapH = h();
            arrayListV = null;
        } else {
            if (t0(Integer.MAX_VALUE)) {
                J2(135);
            }
            arrayListV = v();
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            if (iP2 != 136) {
                this.f23885extends[76] = this.f23882default;
            } else {
                J2(136);
            }
            mapH = null;
        }
        m4 m4VarB = b();
        s4 s4Var = arrayListV != null ? new s4(w0Var, arrayListV, c4.f23539for, (List) null) : new s4(w0Var, mapH, c4.f23539for, (List) null);
        s4Var.f24141throw = true;
        s4Var.m28075while(this.f23883do, m4VarJ2, m4VarB);
        return s4Var;
    }

    /* renamed from: class, reason: not valid java name */
    public final l m28091class() throws h3, NumberFormatException {
        m4 m4VarJ2;
        h0 h0VarM28117switch;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 15) {
            m4VarJ2 = J2(15);
            h0VarM28117switch = m28117switch();
            J2(148);
        } else {
            if (iP2 != 64) {
                this.f23885extends[92] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(64);
            h0VarM28117switch = null;
        }
        c4 c4VarF = f();
        l lVar = new l(h0VarM28117switch, c4VarF);
        lVar.m28070import(this.f23883do, m4VarJ2, m4VarJ2, c4VarF);
        return lVar;
    }

    /* renamed from: const, reason: not valid java name */
    public final o m28092const() throws h3 {
        m4 m4VarJ2;
        StringBuilder sb = new StringBuilder();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 33) {
            m4VarJ2 = J2(33);
        } else {
            if (iP2 != 34) {
                this.f23885extends[84] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(34);
        }
        m4 m4VarU = U(m4VarJ2, sb);
        o oVar = new o(sb.toString());
        oVar.m28075while(this.f23883do, m4VarJ2, m4VarU);
        return oVar;
    }

    /* renamed from: continue, reason: not valid java name */
    public final w0 m28093continue() throws h3 {
        m4 m4VarJ2 = J2(142);
        w0 w0Var = new w0(m4VarJ2.image);
        w0Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return w0Var;
    }

    public final a2 d(h0 h0Var) throws h3 {
        new ArrayList();
        J2(135);
        ArrayList arrayListV = v();
        m4 m4VarJ2 = J2(136);
        arrayListV.trimToSize();
        a2 a2Var = new a2(h0Var, arrayListV);
        a2Var.m28072super(this.f23883do, h0Var, m4VarJ2);
        return a2Var;
    }

    /* renamed from: default, reason: not valid java name */
    public final b4 m28094default() throws h3 {
        m4 m4VarJ2 = J2(59);
        n0 n0Var = new n0();
        n0Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return n0Var;
    }

    /* renamed from: do, reason: not valid java name */
    public final h0 m28095do() throws h3 {
        boolean z;
        h0 cgoto;
        h0 h0VarG = g();
        while (p0(Integer.MAX_VALUE)) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            if (iP2 == 120) {
                J2(120);
                z = true;
            } else {
                if (iP2 != 121) {
                    this.f23885extends[6] = this.f23882default;
                    J2(-1);
                    throw new h3();
                }
                J2(121);
                z = false;
            }
            h0 h0VarG2 = g();
            if (z) {
                cgoto = new freemarker.core.Cif(h0VarG, h0VarG2);
            } else {
                Y2(h0VarG);
                Y2(h0VarG2);
                cgoto = new Cgoto(h0VarG, h0VarG2, 0);
            }
            cgoto.m28068final(this.f23883do, h0VarG, h0VarG2);
            h0VarG = cgoto;
        }
        return h0VarG;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final c2 e() throws h3, NumberFormatException {
        b4 b4VarM28109package;
        c2 c2Var = new c2();
        this.f23905throw++;
        b4 b4Var = null;
        while (true) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            if (iP2 != 6 && iP2 != 8 && iP2 != 72 && iP2 != 74) {
                switch (iP2) {
                    default:
                        switch (iP2) {
                            default:
                                switch (iP2) {
                                    default:
                                        switch (iP2) {
                                            case 65:
                                            case 66:
                                            case 67:
                                            case 68:
                                            case 69:
                                            case 70:
                                                break;
                                            default:
                                                switch (iP2) {
                                                    case 79:
                                                    case 80:
                                                    case 81:
                                                        b4VarM28109package = s();
                                                        break;
                                                    case 82:
                                                    case 84:
                                                        b4VarM28109package = N();
                                                        break;
                                                    case 83:
                                                        b4VarM28109package = o();
                                                        break;
                                                    default:
                                                        this.f23885extends[101] = this.f23882default;
                                                        J2(-1);
                                                        throw new h3();
                                                }
                                        }
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case 60:
                                    case 61:
                                    case 62:
                                    case 63:
                                        break;
                                }
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                                break;
                        }
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        break;
                }
            } else {
                b4VarM28109package = m28109package();
            }
            if (b4Var == null) {
                b4Var = b4VarM28109package;
            }
            c2Var.s(b4VarM28109package);
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 6 && iP22 != 8 && iP22 != 72 && iP22 != 74) {
                switch (iP22) {
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                        continue;
                    default:
                        switch (iP22) {
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                                continue;
                            default:
                                switch (iP22) {
                                    case 55:
                                    case 56:
                                    case 57:
                                    case 58:
                                    case 59:
                                    case 60:
                                    case 61:
                                    case 62:
                                    case 63:
                                        continue;
                                    default:
                                        switch (iP22) {
                                            case 65:
                                            case 66:
                                            case 67:
                                            case 68:
                                            case 69:
                                            case 70:
                                                continue;
                                            default:
                                                switch (iP22) {
                                                    case 79:
                                                    case 80:
                                                    case 81:
                                                    case 82:
                                                    case 83:
                                                    case 84:
                                                        break;
                                                    default:
                                                        this.f23885extends[102] = this.f23882default;
                                                        this.f23905throw--;
                                                        c2Var.m28068final(this.f23883do, b4Var, b4VarM28109package);
                                                        return c2Var;
                                                }
                                        }
                                }
                        }
                }
            }
        }
    }

    public final void e0() {
    }

    public void e3(boolean z) {
        this.f23894new = z;
    }

    /* renamed from: else, reason: not valid java name */
    public final h0 m28096else() throws h3 {
        m4 m4VarJ2;
        Cwhile cwhile;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 95) {
            m4VarJ2 = J2(95);
            cwhile = new Cwhile(false);
        } else {
            if (iP2 != 96) {
                this.f23885extends[23] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(96);
            cwhile = new Cwhile(true);
        }
        cwhile.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return cwhile;
    }

    /* renamed from: extends, reason: not valid java name */
    public final d1 m28097extends() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(13);
        m4 m4VarJ22 = J2(142);
        J2(139);
        h0 h0VarM28117switch = m28117switch();
        J2(148);
        Cnew cnewB3 = b3();
        cnewB3.f23914do = m4VarJ22.image;
        cnewB3.f23915for = 1;
        this.f23878catch++;
        this.f23879class++;
        c4 c4VarF = f();
        m4 m4VarJ23 = J2(42);
        this.f23878catch--;
        this.f23879class--;
        a3();
        d1 d1Var = new d1(h0VarM28117switch, m4VarJ22.image, null, c4VarF, false, true);
        d1Var.m28075while(this.f23883do, m4VarJ2, m4VarJ23);
        return d1Var;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:200)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.processFallThroughCases(SwitchRegionMaker.java:105)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:281)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:64)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final freemarker.core.c4 f() throws freemarker.core.h3, java.lang.NumberFormatException {
        /*
            r9 = this;
            int r0 = r9.f23905throw
            int r0 = r0 + 1
            r9.f23905throw = r0
            r0 = 0
            r1 = 0
            r2 = 0
        L9:
            int r3 = r9.f23899return
            r4 = -1
            if (r3 != r4) goto L12
            int r3 = r9.P2()
        L12:
            r5 = 74
            r6 = 72
            r7 = 8
            r8 = 6
            if (r3 == r8) goto L49
            if (r3 == r7) goto L49
            if (r3 == r6) goto L49
            if (r3 == r5) goto L49
            switch(r3) {
                case 10: goto L49;
                case 11: goto L49;
                case 12: goto L49;
                case 13: goto L49;
                case 14: goto L49;
                default: goto L24;
            }
        L24:
            switch(r3) {
                case 16: goto L49;
                case 17: goto L49;
                case 18: goto L49;
                case 19: goto L49;
                case 20: goto L49;
                case 21: goto L49;
                case 22: goto L49;
                case 23: goto L49;
                case 24: goto L49;
                case 25: goto L49;
                case 26: goto L49;
                case 27: goto L49;
                case 28: goto L49;
                case 29: goto L49;
                case 30: goto L49;
                case 31: goto L49;
                case 32: goto L49;
                case 33: goto L49;
                case 34: goto L49;
                case 35: goto L49;
                default: goto L27;
            }
        L27:
            switch(r3) {
                case 55: goto L49;
                case 56: goto L49;
                case 57: goto L49;
                case 58: goto L49;
                case 59: goto L49;
                case 60: goto L49;
                case 61: goto L49;
                case 62: goto L49;
                case 63: goto L49;
                default: goto L2a;
            }
        L2a:
            switch(r3) {
                case 65: goto L49;
                case 66: goto L49;
                case 67: goto L49;
                case 68: goto L49;
                case 69: goto L49;
                case 70: goto L49;
                default: goto L2d;
            }
        L2d:
            switch(r3) {
                case 79: goto L49;
                case 80: goto L49;
                case 81: goto L49;
                case 82: goto L49;
                case 83: goto L49;
                case 84: goto L49;
                default: goto L30;
            }
        L30:
            int[] r0 = r9.f23885extends
            r3 = 99
            int r4 = r9.f23882default
            r0[r3] = r4
            int r0 = r9.f23905throw
            int r0 = r0 + (-1)
            r9.f23905throw = r0
            if (r1 == 0) goto L46
            freemarker.core.c4 r0 = new freemarker.core.c4
            r0.<init>(r1, r2)
            goto L48
        L46:
            freemarker.core.c4 r0 = freemarker.core.c4.f23539for
        L48:
            return r0
        L49:
            int r3 = r9.f23899return
            if (r3 != r4) goto L51
            int r3 = r9.P2()
        L51:
            if (r3 == r8) goto L88
            if (r3 == r7) goto L88
            if (r3 == r6) goto L88
            if (r3 == r5) goto L88
            switch(r3) {
                case 10: goto L88;
                case 11: goto L88;
                case 12: goto L88;
                case 13: goto L88;
                case 14: goto L88;
                default: goto L5c;
            }
        L5c:
            switch(r3) {
                case 16: goto L88;
                case 17: goto L88;
                case 18: goto L88;
                case 19: goto L88;
                case 20: goto L88;
                case 21: goto L88;
                case 22: goto L88;
                case 23: goto L88;
                case 24: goto L88;
                case 25: goto L88;
                case 26: goto L88;
                case 27: goto L88;
                case 28: goto L88;
                case 29: goto L88;
                case 30: goto L88;
                case 31: goto L88;
                case 32: goto L88;
                case 33: goto L88;
                case 34: goto L88;
                case 35: goto L88;
                default: goto L5f;
            }
        L5f:
            switch(r3) {
                case 55: goto L88;
                case 56: goto L88;
                case 57: goto L88;
                case 58: goto L88;
                case 59: goto L88;
                case 60: goto L88;
                case 61: goto L88;
                case 62: goto L88;
                case 63: goto L88;
                default: goto L62;
            }
        L62:
            switch(r3) {
                case 65: goto L88;
                case 66: goto L88;
                case 67: goto L88;
                case 68: goto L88;
                case 69: goto L88;
                case 70: goto L88;
                default: goto L65;
            }
        L65:
            switch(r3) {
                case 79: goto L83;
                case 80: goto L83;
                case 81: goto L83;
                case 82: goto L7e;
                case 83: goto L79;
                case 84: goto L7e;
                default: goto L68;
            }
        L68:
            int[] r0 = r9.f23885extends
            r1 = 100
            int r2 = r9.f23882default
            r0[r1] = r2
            r9.J2(r4)
            freemarker.core.h3 r0 = new freemarker.core.h3
            r0.<init>()
            throw r0
        L79:
            freemarker.core.a3 r3 = r9.o()
            goto L8c
        L7e:
            freemarker.core.z r3 = r9.N()
            goto L8c
        L83:
            freemarker.core.k4 r3 = r9.s()
            goto L8c
        L88:
            freemarker.core.b4 r3 = r9.m28109package()
        L8c:
            if (r3 == 0) goto L9
            int r2 = r2 + 1
            if (r1 != 0) goto L97
            r1 = 16
            freemarker.core.b4[] r1 = new freemarker.core.b4[r1]
            goto Laa
        L97:
            int r4 = r1.length
            if (r4 >= r2) goto Laa
            int r4 = r2 * 2
            freemarker.core.b4[] r4 = new freemarker.core.b4[r4]
            r5 = 0
        L9f:
            int r6 = r1.length
            if (r5 >= r6) goto La9
            r6 = r1[r5]
            r4[r5] = r6
            int r5 = r5 + 1
            goto L9f
        La9:
            r1 = r4
        Laa:
            int r4 = r2 + (-1)
            r1[r4] = r3
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: freemarker.core.j0.f():freemarker.core.c4");
    }

    public void f3(j0 j0Var, e91 e91Var) {
        k0 k0Var = j0Var.f23909while;
        k0 k0Var2 = this.f23909while;
        k0Var2.f23971final = k0Var.f23971final;
        k0Var2.f23985super = k0Var.f23985super;
        k0Var2.f23988throw = k0Var.f23988throw;
        k0Var2.m28177try(1);
        this.f23877case = e91Var;
        d3();
        if (this.f23907try < ul2.f6933else) {
            this.f23907try = ul2.f6932do;
        }
        this.f23876break = j0Var.f23876break;
    }

    /* renamed from: final, reason: not valid java name */
    public final r m28098final() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(32);
        c4 c4VarF = f();
        m4 m4VarJ22 = J2(51);
        r rVar = new r(c4VarF);
        rVar.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return rVar;
    }

    /* renamed from: finally, reason: not valid java name */
    public final b4 m28099finally() throws h3, NumberFormatException {
        b4 b4VarS;
        c2 c2Var = new c2();
        b4 b4Var = null;
        while (true) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            switch (iP2) {
                case 79:
                case 80:
                case 81:
                    b4VarS = s();
                    break;
                case 82:
                case 84:
                    b4VarS = N();
                    break;
                case 83:
                    b4VarS = o();
                    break;
                default:
                    this.f23885extends[104] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
            if (b4Var == null) {
                b4Var = b4VarS;
            }
            c2Var.m27844return(b4VarS);
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            switch (iP22) {
                case 79:
                case 80:
                case 81:
                case 82:
                case 83:
                case 84:
                default:
                    this.f23885extends[105] = this.f23882default;
                    c2Var.m28068final(this.f23883do, b4Var, b4VarS);
                    return c2Var;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0175  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final b4 m28100for() throws h3, NumberFormatException {
        m4 m4VarJ2;
        int i;
        m4 m4Var;
        h0 h0VarM28117switch;
        h0 h0VarM28117switch2;
        int i2;
        m4 m4Var2;
        h0 h0VarM28117switch3;
        h0 h0Var;
        m4 m4VarJ22;
        ArrayList arrayList = new ArrayList();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        switch (iP2) {
            case 16:
                m4VarJ2 = J2(16);
                i = 1;
                break;
            case 17:
                m4VarJ2 = J2(17);
                i = 3;
                break;
            case 18:
                m4VarJ2 = J2(18);
                if (!this.f23880const && !this.f23886final) {
                    throw new h3("Local variable assigned outside a macro.", this.f23883do, m4VarJ2);
                }
                i = 2;
                break;
            default:
                this.f23885extends[46] = this.f23882default;
                J2(-1);
                throw new h3();
        }
        h0 h0VarM28115strictfp = m28115strictfp();
        String asString = h0VarM28115strictfp instanceof x3 ? ((x3) h0VarM28115strictfp).getAsString() : ((w0) h0VarM28115strictfp).d();
        int iP22 = this.f23899return;
        if (iP22 == -1) {
            iP22 = P2();
        }
        if (iP22 != 105) {
            if (iP22 == 139 || iP22 == 148) {
                int iP23 = this.f23899return;
                if (iP23 == -1) {
                    iP23 = P2();
                }
                if (iP23 != 139) {
                    this.f23885extends[55] = this.f23882default;
                    h0Var = null;
                } else {
                    m4 m4VarJ23 = J2(139);
                    h0 h0VarM28117switch4 = m28117switch();
                    if (i != 1) {
                        throw new h3("Cannot assign to namespace here.", this.f23883do, m4VarJ23);
                    }
                    h0Var = h0VarM28117switch4;
                }
                J2(148);
                c4 c4VarF = f();
                int iP24 = this.f23899return;
                if (iP24 == -1) {
                    iP24 = P2();
                }
                switch (iP24) {
                    case 43:
                        m4VarJ22 = J2(43);
                        if (i != 2) {
                            throw new h3("Mismatched assignment tags.", this.f23883do, m4VarJ22);
                        }
                        break;
                    case 44:
                        m4VarJ22 = J2(44);
                        if (i != 3) {
                            throw new h3("Mismatched assignment tags", this.f23883do, m4VarJ22);
                        }
                        break;
                    case 45:
                        m4VarJ22 = J2(45);
                        if (i != 1) {
                            throw new h3("Mismatched assignment tags.", this.f23883do, m4VarJ22);
                        }
                        break;
                    default:
                        this.f23885extends[56] = this.f23882default;
                        J2(-1);
                        throw new h3();
                }
                Cfinal cfinal = new Cfinal(c4VarF, asString, i, h0Var, m0());
                cfinal.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
                return cfinal;
            }
            switch (iP22) {
                case 108:
                case 109:
                case 110:
                case 111:
                case 112:
                case 113:
                case 114:
                    break;
                default:
                    this.f23885extends[57] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
        }
        int iP25 = this.f23899return;
        if (iP25 == -1) {
            iP25 = P2();
        }
        int i3 = 112;
        int i4 = 113;
        if (iP25 != 105) {
            switch (iP25) {
                case 108:
                case 109:
                case 110:
                case 111:
                case 112:
                    int iP26 = this.f23899return;
                    if (iP26 == -1) {
                        iP26 = P2();
                    }
                    if (iP26 != 105) {
                        switch (iP26) {
                            case 108:
                                J2(108);
                                break;
                            case 109:
                                J2(109);
                                break;
                            case 110:
                                J2(110);
                                break;
                            case 111:
                                J2(111);
                                break;
                            case 112:
                                J2(112);
                                break;
                            default:
                                this.f23885extends[47] = this.f23882default;
                                J2(-1);
                                throw new h3();
                        }
                    } else {
                        J2(105);
                    }
                    m4Var = this.f23893native;
                    h0VarM28117switch = m28117switch();
                    break;
                case 113:
                case 114:
                    int iP27 = this.f23899return;
                    if (iP27 == -1) {
                        iP27 = P2();
                    }
                    if (iP27 == 113) {
                        J2(113);
                    } else {
                        if (iP27 != 114) {
                            this.f23885extends[48] = this.f23882default;
                            J2(-1);
                            throw new h3();
                        }
                        J2(114);
                    }
                    m4Var = this.f23893native;
                    h0VarM28117switch = null;
                    break;
                default:
                    this.f23885extends[49] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
        }
        Cthis cthis = new Cthis(asString, m4Var.kind, h0VarM28117switch, i);
        if (h0VarM28117switch != null) {
            cthis.m28068final(this.f23883do, h0VarM28115strictfp, h0VarM28117switch);
        } else {
            cthis.m28072super(this.f23883do, h0VarM28115strictfp, m4Var);
        }
        arrayList.add(cthis);
        while (r0(Integer.MAX_VALUE)) {
            int iP28 = this.f23899return;
            if (iP28 == -1) {
                iP28 = P2();
            }
            if (iP28 != 130) {
                this.f23885extends[50] = this.f23882default;
            } else {
                J2(130);
            }
            h0 h0VarM28115strictfp2 = m28115strictfp();
            String asString2 = h0VarM28115strictfp2 instanceof x3 ? ((x3) h0VarM28115strictfp2).getAsString() : ((w0) h0VarM28115strictfp2).d();
            int iP29 = this.f23899return;
            if (iP29 == -1) {
                iP29 = P2();
            }
            if (iP29 != 105) {
                switch (iP29) {
                    case 108:
                    case 109:
                    case 110:
                    case 111:
                    case 112:
                        int iP210 = this.f23899return;
                        if (iP210 == -1) {
                            iP210 = P2();
                        }
                        if (iP210 != 105) {
                            switch (iP210) {
                                case 108:
                                    J2(108);
                                    break;
                                case 109:
                                    J2(109);
                                    break;
                                case 110:
                                    J2(110);
                                    break;
                                case 111:
                                    J2(111);
                                    break;
                                case 112:
                                    J2(i3);
                                    break;
                                default:
                                    this.f23885extends[51] = this.f23882default;
                                    J2(-1);
                                    throw new h3();
                            }
                        } else {
                            J2(105);
                        }
                        m4Var2 = this.f23893native;
                        h0VarM28117switch3 = m28117switch();
                        break;
                    case 113:
                    case 114:
                        int iP211 = this.f23899return;
                        if (iP211 == -1) {
                            iP211 = P2();
                        }
                        if (iP211 == i4) {
                            J2(i4);
                        } else {
                            if (iP211 != 114) {
                                this.f23885extends[52] = this.f23882default;
                                J2(-1);
                                throw new h3();
                            }
                            J2(114);
                        }
                        m4Var2 = this.f23893native;
                        h0VarM28117switch3 = null;
                        break;
                    default:
                        this.f23885extends[53] = this.f23882default;
                        J2(-1);
                        throw new h3();
                }
            }
            Cthis cthis2 = new Cthis(asString2, m4Var2.kind, h0VarM28117switch3, i);
            if (h0VarM28117switch3 != null) {
                cthis2.m28068final(this.f23883do, h0VarM28115strictfp2, h0VarM28117switch3);
            } else {
                cthis2.m28072super(this.f23883do, h0VarM28115strictfp2, m4Var2);
            }
            arrayList.add(cthis2);
            i3 = 112;
            i4 = 113;
        }
        int iP212 = this.f23899return;
        if (iP212 == -1) {
            iP212 = P2();
        }
        if (iP212 != 139) {
            this.f23885extends[54] = this.f23882default;
            i2 = 1;
            h0VarM28117switch2 = null;
        } else {
            m4 m4VarJ24 = J2(139);
            h0VarM28117switch2 = m28117switch();
            i2 = 1;
            if (i != 1) {
                throw new h3("Cannot assign to namespace here.", this.f23883do, m4VarJ24);
            }
        }
        m4 m4VarB = b();
        if (arrayList.size() == i2) {
            Cthis cthis3 = (Cthis) arrayList.get(0);
            cthis3.u(h0VarM28117switch2);
            cthis3.m28075while(this.f23883do, m4VarJ2, m4VarB);
            return cthis3;
        }
        Cbreak cbreak = new Cbreak(i);
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            cbreak.r((Cthis) arrayList.get(i5));
        }
        cbreak.s(h0VarM28117switch2);
        cbreak.m28075while(this.f23883do, m4VarJ2, m4VarB);
        return cbreak;
    }

    public final h0 g() throws h3 {
        int i;
        h0 h0VarR = R();
        while (y0(Integer.MAX_VALUE)) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            if (iP2 == 122) {
                J2(122);
                i = 1;
            } else if (iP2 == 125) {
                J2(125);
                i = 2;
            } else {
                if (iP2 != 126) {
                    this.f23885extends[7] = this.f23882default;
                    J2(-1);
                    throw new h3();
                }
                J2(126);
                i = 3;
            }
            h0 h0VarR2 = R();
            Y2(h0VarR);
            Y2(h0VarR2);
            Cgoto cgoto = new Cgoto(h0VarR, h0VarR2, i);
            cgoto.m28068final(this.f23883do, h0VarR, h0VarR2);
            h0VarR = cgoto;
        }
        return h0VarR;
    }

    public final void g0() {
    }

    /* renamed from: goto, reason: not valid java name */
    public final Cnative m28101goto() throws h3 {
        m4 m4VarJ2 = J2(55);
        if (this.f23878catch >= 1) {
            Cnative cnative = new Cnative();
            cnative.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
            return cnative;
        }
        throw new h3(m4VarJ2.image + " must be nested inside a directive that supports it:  #list with \"as\", #items, #switch (or the deprecated " + i0() + ")", this.f23883do, m4VarJ2);
    }

    public final HashMap h() throws h3 {
        int iP2;
        HashMap map = new HashMap();
        do {
            m4 m4VarJ2 = J2(142);
            J2(105);
            this.f23909while.m28177try(4);
            this.f23909while.f23964class = true;
            map.put(m4VarJ2.image, m28117switch());
            iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
        } while (iP2 == 142);
        this.f23885extends[77] = this.f23882default;
        this.f23909while.f23964class = false;
        return map;
    }

    public void h3(j0 j0Var) {
        k0 k0Var = j0Var.f23909while;
        k0 k0Var2 = this.f23909while;
        k0Var.f23985super = k0Var2.f23985super;
        k0Var.f23988throw = k0Var2.f23988throw;
    }

    public final b4 i() throws h3 {
        m4 m4VarJ2;
        Csuper csuper;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 65) {
            m4VarJ2 = J2(65);
            csuper = new Csuper(null);
            csuper.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        } else {
            if (iP2 != 66) {
                this.f23885extends[44] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(66);
            ArrayList arrayListV = v();
            m4 m4VarB = b();
            csuper = new Csuper(arrayListV);
            csuper.m28075while(this.f23883do, m4VarJ2, m4VarB);
        }
        if (this.f23880const) {
            return csuper;
        }
        throw new h3("Cannot use a " + m4VarJ2.image + " instruction outside a macro.", this.f23883do, m4VarJ2);
    }

    /* renamed from: if, reason: not valid java name */
    public final h0 m28102if() throws h3 {
        h0 h0VarM28112public = m28112public();
        while (C0(Integer.MAX_VALUE)) {
            J2(127);
            h0 h0VarM28112public2 = m28112public();
            a0(h0VarM28112public);
            a0(h0VarM28112public2);
            Ccase ccase = new Ccase(h0VarM28112public, h0VarM28112public2);
            ccase.m28068final(this.f23883do, h0VarM28112public, h0VarM28112public2);
            h0VarM28112public = ccase;
        }
        return h0VarM28112public;
    }

    /* renamed from: implements, reason: not valid java name */
    public final w1.Cdo m28103implements() throws h3 {
        m4 m4VarJ2;
        List listEmptyList;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        ArrayList arrayList = null;
        m4 m4Var = null;
        if (iP2 == 135) {
            m4 m4VarJ22 = J2(135);
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 142) {
                this.f23885extends[18] = this.f23882default;
            } else {
                w0 w0VarM28093continue = m28093continue();
                arrayList = new ArrayList(4);
                arrayList.add(w0VarM28093continue);
                while (true) {
                    int iP23 = this.f23899return;
                    if (iP23 == -1) {
                        iP23 = P2();
                    }
                    if (iP23 != 130) {
                        break;
                    }
                    J2(130);
                    arrayList.add(m28093continue());
                }
                this.f23885extends[17] = this.f23882default;
            }
            m4VarJ2 = J2(136);
            ArrayList arrayList2 = arrayList;
            m4Var = m4VarJ22;
            listEmptyList = arrayList2;
        } else {
            if (iP2 != 142) {
                this.f23885extends[19] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            listEmptyList = Collections.singletonList(m28093continue());
            m4VarJ2 = null;
        }
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        return new w1.Cdo(m4Var, listEmptyList, m4VarJ2);
    }

    /* renamed from: import, reason: not valid java name */
    public final h0 m28104import(h0 h0Var) throws h3 {
        J2(133);
        h0 h0VarM28117switch = m28117switch();
        m4 m4VarJ2 = J2(134);
        T2(h0Var, "list or hash");
        W2(h0Var, "list or hash");
        b0 b0Var = new b0(h0Var, h0VarM28117switch);
        b0Var.m28072super(this.f23883do, h0Var, m4VarJ2);
        return b0Var;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final b4 m28105instanceof() throws h3, NumberFormatException {
        m4 m4VarJ2;
        m4 m4VarJ22;
        c0 c0VarM28107native;
        m4 m4VarJ23 = J2(10);
        h0 h0VarM28117switch = m28117switch();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 140) {
            this.f23885extends[34] = this.f23882default;
            m4VarJ22 = null;
            m4VarJ2 = null;
        } else {
            J2(140);
            m4VarJ2 = J2(142);
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 130) {
                this.f23885extends[33] = this.f23882default;
                m4VarJ22 = null;
            } else {
                J2(130);
                m4VarJ22 = J2(142);
            }
        }
        J2(148);
        Cnew cnewB3 = b3();
        if (m4VarJ2 != null) {
            cnewB3.f23914do = m4VarJ2.image;
            this.f23878catch++;
            this.f23879class++;
            if (m4VarJ22 != null) {
                cnewB3.f23916if = m4VarJ22.image;
                cnewB3.f23917new = true;
                if (cnewB3.f23916if.equals(cnewB3.f23914do)) {
                    throw new h3("The key and value loop variable names must differ, but both were: " + cnewB3.f23914do, this.f23883do, m4VarJ23);
                }
            }
        }
        c4 c4VarF = f();
        if (m4VarJ2 != null) {
            this.f23878catch--;
            this.f23879class--;
        } else if (cnewB3.f23915for != 2) {
            throw new h3("#list must have either \"as loopVar\" parameter or nested #items that belongs to it.", this.f23883do, m4VarJ23);
        }
        a3();
        int iP23 = this.f23899return;
        if (iP23 == -1) {
            iP23 = P2();
        }
        if (iP23 != 54) {
            this.f23885extends[35] = this.f23882default;
            c0VarM28107native = null;
        } else {
            c0VarM28107native = m28107native();
        }
        m4 m4VarJ24 = J2(37);
        d1 d1Var = new d1(h0VarM28117switch, m4VarJ2 != null ? m4VarJ2.image : null, m4VarJ22 != null ? m4VarJ22.image : null, c4VarF, cnewB3.f23917new, false);
        d1Var.m28075while(this.f23883do, m4VarJ23, m4VarJ24);
        if (c0VarM28107native == null) {
            return d1Var;
        }
        s1 s1Var = new s1(d1Var, c0VarM28107native);
        s1Var.m28075while(this.f23883do, m4VarJ23, m4VarJ24);
        return s1Var;
    }

    /* renamed from: interface, reason: not valid java name */
    public final r1 m28106interface() throws h3 {
        m4 m4VarJ2 = J2(20);
        h0 h0VarM28117switch = m28117switch();
        J2(140);
        m4 m4VarJ22 = J2(142);
        m4 m4VarB = b();
        r1 r1Var = new r1(this.f23883do, h0VarM28117switch, m4VarJ22.image);
        r1Var.m28075while(this.f23883do, m4VarJ2, m4VarB);
        this.f23883do.Q0(r1Var);
        return r1Var;
    }

    public final f2 j() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(31);
        int i = this.f23884else;
        this.f23884else = 20;
        d3();
        c4 c4VarF = f();
        m4 m4VarJ22 = J2(50);
        f2 f2Var = new f2(c4VarF);
        f2Var.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        this.f23884else = i;
        d3();
        return f2Var;
    }

    public h3 j0() {
        this.f23881continue.clear();
        boolean[] zArr = new boolean[158];
        int i = this.f23908volatile;
        if (i >= 0) {
            zArr[i] = true;
            this.f23908volatile = -1;
        }
        for (int i2 = 0; i2 < 116; i2++) {
            if (this.f23885extends[i2] == this.f23882default) {
                for (int i3 = 0; i3 < 32; i3++) {
                    int i4 = 1 << i3;
                    if ((a[i2] & i4) != 0) {
                        zArr[i3] = true;
                    }
                    if ((b[i2] & i4) != 0) {
                        zArr[i3 + 32] = true;
                    }
                    if ((c[i2] & i4) != 0) {
                        zArr[i3 + 64] = true;
                    }
                    if ((d[i2] & i4) != 0) {
                        zArr[i3 + 96] = true;
                    }
                    if ((e[i2] & i4) != 0) {
                        zArr[i3 + 128] = true;
                    }
                }
            }
        }
        for (int i5 = 0; i5 < 158; i5++) {
            if (zArr[i5]) {
                int[] iArr = {i5};
                this.f23901strictfp = iArr;
                this.f23881continue.add(iArr);
            }
        }
        this.f23897protected = 0;
        Q2();
        I2(0, 0);
        int[][] iArr2 = new int[this.f23881continue.size()][];
        for (int i6 = 0; i6 < this.f23881continue.size(); i6++) {
            iArr2[i6] = this.f23881continue.get(i6);
        }
        return new h3(this.f23893native, iArr2, FMParserConstants.tokenImage);
    }

    public final g2 k() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(72);
        if (this.f23902super.isEmpty()) {
            throw new h3("#noescape with no matching #escape encountered.", this.f23883do, m4VarJ2);
        }
        Object objRemoveFirst = this.f23902super.removeFirst();
        c4 c4VarF = f();
        m4 m4VarJ22 = J2(73);
        this.f23902super.addFirst(objRemoveFirst);
        g2 g2Var = new g2(c4VarF);
        g2Var.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return g2Var;
    }

    public final k4 l() throws h3 {
        StringBuilder sb = new StringBuilder();
        m4 m4VarJ2 = J2(35);
        m4 m4VarU = U(m4VarJ2, sb);
        k4 k4Var = new k4(sb.toString(), true);
        k4Var.m28075while(this.f23883do, m4VarJ2, m4VarU);
        return k4Var;
    }

    public final h0 m() throws h3 {
        int iP2;
        ArrayList arrayList = new ArrayList();
        do {
            arrayList.add(J2(129));
            iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
        } while (iP2 == 129);
        this.f23885extends[4] = this.f23882default;
        h0 h0VarX = x();
        int i = 0;
        x2 x2Var = null;
        while (i < arrayList.size()) {
            x2Var = new x2(h0VarX);
            x2Var.m28073throw(this.f23883do, (m4) arrayList.get((arrayList.size() - i) - 1), h0VarX);
            i++;
            h0VarX = x2Var;
        }
        return x2Var;
    }

    public y1 m0() {
        e91 e91Var = this.f23877case;
        if (e91Var instanceof y1) {
            return (y1) e91Var;
        }
        return null;
    }

    public final h0 n() throws h3 {
        m4 m4VarJ2;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 97) {
            m4VarJ2 = J2(97);
        } else {
            if (iP2 != 98) {
                this.f23885extends[13] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(98);
        }
        z2 z2Var = new z2(this.f23904this.getArithmeticEngine().mo27993final(m4VarJ2.image));
        z2Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return z2Var;
    }

    public final m4 n0() {
        m4 m4Var = this.f23893native;
        m4 m4Var2 = m4Var.next;
        if (m4Var2 != null) {
            this.f23893native = m4Var2;
        } else {
            m4 m4VarM28170class = this.f23909while.m28170class();
            m4Var.next = m4VarM28170class;
            this.f23893native = m4VarM28170class;
        }
        this.f23899return = -1;
        this.f23882default++;
        return this.f23893native;
    }

    /* renamed from: native, reason: not valid java name */
    public final c0 m28107native() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(54);
        c4 c4VarF = f();
        c0 c0Var = new c0(c4VarF);
        c0Var.m28070import(this.f23883do, m4VarJ2, m4VarJ2, c4VarF);
        return c0Var;
    }

    /* renamed from: new, reason: not valid java name */
    public final h0 m28108new() throws h3 {
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 133) {
            return m28118synchronized();
        }
        if (iP2 == 135) {
            return u();
        }
        if (iP2 == 137) {
            return m28110private();
        }
        if (iP2 == 142) {
            return m28093continue();
        }
        switch (iP2) {
            case 93:
            case 94:
                return M(true);
            case 95:
            case 96:
                return m28096else();
            case 97:
            case 98:
                return n();
            case 99:
                return m28088break();
            default:
                this.f23885extends[2] = this.f23882default;
                J2(-1);
                throw new h3();
        }
    }

    public final a3 o() throws h3, NumberFormatException {
        m4 m4VarJ2;
        a3 a3Var;
        m4 m4VarJ22 = J2(83);
        h0 h0VarM28117switch = m28117switch();
        Y2(h0VarM28117switch);
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        y1 y1Var = null;
        if (iP2 != 131) {
            this.f23885extends[29] = this.f23882default;
            m4VarJ2 = null;
        } else {
            J2(131);
            m4VarJ2 = J2(142);
        }
        m4 m4VarJ23 = J2(138);
        if (this.f23889goto) {
            e91 e91Var = this.f23877case;
            if (e91Var instanceof y1) {
                y1Var = (y1) e91Var;
            }
        }
        if (m4VarJ2 != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(m4VarJ2.image, "mM", true);
            int i = -1;
            int i2 = -1;
            while (true) {
                char c2 = hy1.f2561for;
                while (stringTokenizer.hasMoreTokens()) {
                    String strNextToken = stringTokenizer.nextToken();
                    if (c2 != '-') {
                        if (c2 != 'M') {
                            if (c2 != 'm') {
                                throw new h3("Invalid formatting string", this.f23883do, m4VarJ2);
                            }
                            if (i2 != -1) {
                                throw new h3("Invalid formatting string", this.f23883do, m4VarJ2);
                            }
                            try {
                                i2 = Integer.parseInt(strNextToken);
                            } catch (h3 unused) {
                                throw new h3("Invalid format specifier " + m4VarJ2.image, this.f23883do, m4VarJ2);
                            } catch (NumberFormatException unused2) {
                                throw new h3("Invalid number in the format specifier " + m4VarJ2.image, this.f23883do, m4VarJ2);
                            }
                        } else {
                            if (i != -1) {
                                throw new h3("Invalid formatting string", this.f23883do, m4VarJ2);
                            }
                            i = Integer.parseInt(strNextToken);
                        }
                    } else if (strNextToken.equals("m")) {
                        c2 = 'm';
                    } else {
                        if (!strNextToken.equals("M")) {
                            throw new h3();
                        }
                        c2 = 'M';
                    }
                }
                if (i == -1) {
                    if (i2 == -1) {
                        throw new h3("Invalid format specification, at least one of m and M must be specified!", this.f23883do, m4VarJ2);
                    }
                    i = i2;
                } else if (i2 == -1) {
                    i2 = 0;
                }
                if (i2 > i) {
                    throw new h3("Invalid format specification, min cannot be greater than max!", this.f23883do, m4VarJ2);
                }
                if (i2 > 50 || i > 50) {
                    throw new h3("Cannot specify more than 50 fraction digits", this.f23883do, m4VarJ2);
                }
                a3Var = new a3(h0VarM28117switch, i2, i, y1Var);
            }
        } else {
            a3Var = new a3(h0VarM28117switch, y1Var);
        }
        a3Var.m28075while(this.f23883do, m4VarJ22, m4VarJ23);
        return a3Var;
    }

    public final m4 o0(int i) {
        m4 m4Var = this.f23893native;
        for (int i2 = 0; i2 < i; i2++) {
            m4 m4VarM28170class = m4Var.next;
            if (m4VarM28170class == null) {
                m4VarM28170class = this.f23909while.m28170class();
                m4Var.next = m4VarM28170class;
            }
            m4Var = m4VarM28170class;
        }
        return m4Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0031 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final b4 p() throws h3, NumberFormatException {
        c2 c2VarE;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 6 && iP2 != 8 && iP2 != 72 && iP2 != 74) {
            switch (iP2) {
                default:
                    switch (iP2) {
                        default:
                            switch (iP2) {
                                default:
                                    switch (iP2) {
                                        default:
                                            switch (iP2) {
                                                case 79:
                                                case 80:
                                                case 81:
                                                case 82:
                                                case 83:
                                                case 84:
                                                    break;
                                                default:
                                                    this.f23885extends[103] = this.f23882default;
                                                    c2VarE = null;
                                                    break;
                                            }
                                        case 65:
                                        case 66:
                                        case 67:
                                        case 68:
                                        case 69:
                                        case 70:
                                            break;
                                    }
                                case 55:
                                case 56:
                                case 57:
                                case 58:
                                case 59:
                                case 60:
                                case 61:
                                case 62:
                                case 63:
                                    break;
                            }
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                            break;
                    }
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                    break;
            }
        } else {
            c2VarE = e();
        }
        return c2VarE != null ? c2VarE : new k4(vm.f7295for, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0098  */
    /* renamed from: package, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final b4 m28109package() throws h3 {
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 6) {
            return m28123try();
        }
        if (iP2 == 8) {
            return m28124volatile();
        }
        if (iP2 == 72) {
            return k();
        }
        if (iP2 == 74) {
            return T();
        }
        switch (iP2) {
            case 10:
                return m28105instanceof();
            case 11:
                return m28122transient();
            case 12:
                return I();
            case 13:
                return m28097extends();
            case 14:
                return O();
            default:
                switch (iP2) {
                    case 16:
                    case 17:
                    case 18:
                        return m28100for();
                    case 19:
                        return m28111protected();
                    case 20:
                        return m28106interface();
                    case 21:
                    case 22:
                        return c();
                    case 23:
                        return P();
                    case 24:
                        return V();
                    case 25:
                        return L();
                    case 26:
                        return G();
                    case 27:
                        return m28090catch();
                    case 28:
                        return J();
                    case 29:
                        return r();
                    case 30:
                        return m28089case();
                    case 31:
                        return j();
                    case 32:
                        return m28098final();
                    case 33:
                    case 34:
                        return m28092const();
                    case 35:
                        return l();
                    default:
                        switch (iP2) {
                            case 55:
                                return m28101goto();
                            case 56:
                                return m28116super();
                            case 57:
                                break;
                            case 58:
                                break;
                            case 59:
                                return m28094default();
                            case 60:
                            case 61:
                            case 62:
                            case 63:
                                return Q();
                            default:
                                switch (iP2) {
                                    case 65:
                                    case 66:
                                        return i();
                                    case 67:
                                    case 68:
                                        return E();
                                    case 69:
                                        return m28121throws();
                                    case 70:
                                        return m28113return();
                                    default:
                                        this.f23885extends[94] = this.f23882default;
                                        J2(-1);
                                        throw new h3();
                                }
                        }
                }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* renamed from: private, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final r0 m28110private() throws h3 {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        m4 m4VarJ2 = J2(137);
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 120 && iP2 != 121 && iP2 != 129 && iP2 != 133 && iP2 != 135 && iP2 != 137 && iP2 != 142) {
            switch (iP2) {
                case 93:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                    break;
                default:
                    this.f23885extends[27] = this.f23882default;
                    break;
            }
        } else {
            h0 h0VarM28117switch = m28117switch();
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 == 130) {
                J2(130);
            } else {
                if (iP22 != 132) {
                    this.f23885extends[24] = this.f23882default;
                    J2(-1);
                    throw new h3();
                }
                J2(132);
            }
            h0 h0VarM28117switch2 = m28117switch();
            g3(h0VarM28117switch);
            arrayList.add(h0VarM28117switch);
            arrayList2.add(h0VarM28117switch2);
            while (true) {
                int iP23 = this.f23899return;
                if (iP23 == -1) {
                    iP23 = P2();
                }
                if (iP23 != 130) {
                    this.f23885extends[25] = this.f23882default;
                } else {
                    J2(130);
                    h0 h0VarM28117switch3 = m28117switch();
                    int iP24 = this.f23899return;
                    if (iP24 == -1) {
                        iP24 = P2();
                    }
                    if (iP24 == 130) {
                        J2(130);
                    } else {
                        if (iP24 != 132) {
                            this.f23885extends[26] = this.f23882default;
                            J2(-1);
                            throw new h3();
                        }
                        J2(132);
                    }
                    h0 h0VarM28117switch4 = m28117switch();
                    g3(h0VarM28117switch3);
                    arrayList.add(h0VarM28117switch3);
                    arrayList2.add(h0VarM28117switch4);
                }
            }
        }
        m4 m4VarJ22 = J2(138);
        r0 r0Var = new r0(arrayList, arrayList2);
        r0Var.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return r0Var;
    }

    /* renamed from: protected, reason: not valid java name */
    public final y0 m28111protected() throws h3 {
        m4 m4VarJ2 = J2(19);
        h0 h0VarM28117switch = m28117switch();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 131) {
            this.f23885extends[58] = this.f23882default;
        } else {
            J2(131);
        }
        h0 h0Var = null;
        h0 h0Var2 = null;
        h0 h0Var3 = null;
        while (true) {
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 142) {
                this.f23885extends[59] = this.f23882default;
                m4 m4VarB = b();
                y0 y0Var = new y0(this.f23883do, h0VarM28117switch, h0Var, h0Var2, h0Var3);
                y0Var.m28075while(this.f23883do, m4VarJ2, m4VarB);
                return y0Var;
            }
            m4 m4VarJ22 = J2(142);
            J2(105);
            h0 h0VarM28117switch2 = m28117switch();
            String str = m4VarJ22.image;
            if (str.equalsIgnoreCase("parse")) {
                h0Var2 = h0VarM28117switch2;
            } else if (str.equalsIgnoreCase("encoding")) {
                h0Var = h0VarM28117switch2;
            } else {
                if (!str.equalsIgnoreCase("ignore_missing") && !str.equals("ignoreMissing")) {
                    String str2 = str.equals("ignoreMissing") ? "ignore_missing" : null;
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unsupported named #include parameter: \"");
                    sb.append(str);
                    sb.append("\". Supported parameters are: \"parse\", \"encoding\", \"ignore_missing\".");
                    sb.append(str2 == null ? "" : " Supporting camelCase parameter names is planned for FreeMarker 2.4.0; check if an update is available, and if it indeed supports camel case.");
                    throw new h3(sb.toString(), this.f23883do, m4VarJ22);
                }
                this.f23909while.m28172else(m4VarJ22);
                h0Var3 = h0VarM28117switch2;
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public final h0 m28112public() throws h3 {
        m4 m4VarJ2;
        h0 h0VarF = F();
        if (!z0(Integer.MAX_VALUE)) {
            return h0VarF;
        }
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        switch (iP2) {
            case 105:
                m4VarJ2 = J2(105);
                break;
            case 106:
                m4VarJ2 = J2(106);
                break;
            case 107:
                m4VarJ2 = J2(107);
                break;
            default:
                this.f23885extends[8] = this.f23882default;
                J2(-1);
                throw new h3();
        }
        h0 h0VarF2 = F();
        U2(h0VarF, TypedValues.Custom.S_STRING);
        U2(h0VarF2, TypedValues.Custom.S_STRING);
        V2(h0VarF, TypedValues.Custom.S_STRING);
        V2(h0VarF2, TypedValues.Custom.S_STRING);
        q qVar = new q(h0VarF, h0VarF2, m4VarJ2.image);
        qVar.m28068final(this.f23883do, h0VarF, h0VarF2);
        return qVar;
    }

    public final h0 q() throws h3 {
        h0 h0VarM28102if = m28102if();
        while (D0(Integer.MAX_VALUE)) {
            J2(128);
            h0 h0VarM28102if2 = m28102if();
            a0(h0VarM28102if);
            a0(h0VarM28102if2);
            c3 c3Var = new c3(h0VarM28102if, h0VarM28102if2);
            c3Var.m28068final(this.f23883do, h0VarM28102if, h0VarM28102if2);
            h0VarM28102if = c3Var;
        }
        return h0VarM28102if;
    }

    public final d3 r() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(29);
        h0 h0VarM28117switch = m28117switch();
        J2(148);
        if (!h0VarM28117switch.mo27817instanceof()) {
            throw new h3("Parameter expression must be parse-time evaluable (constant): " + h0VarM28117switch.mo27815for(), h0VarM28117switch);
        }
        try {
            TemplateModel templateModelM28055throws = h0VarM28117switch.m28055throws(null);
            if (!(templateModelM28055throws instanceof TemplateScalarModel)) {
                throw new h3("Parameter must be a string, but was: " + freemarker.template.utility.Cif.m29271case(templateModelM28055throws), h0VarM28117switch);
            }
            try {
                String asString = ((TemplateScalarModel) templateModelM28055throws).getAsString();
                e91 e91Var = this.f23877case;
                try {
                    if (!asString.startsWith("{")) {
                        this.f23877case = this.f23883do.b1().D1(asString);
                    } else {
                        if (!asString.endsWith("}")) {
                            throw new h3("Output format name that starts with '{' must end with '}': " + asString, this.f23883do, m4VarJ2);
                        }
                        e91 e91VarD1 = this.f23883do.b1().D1(asString.substring(1, asString.length() - 1));
                        if (!(e91VarD1 instanceof y1)) {
                            throw new h3("The output format inside the {...} must be a markup format, but was: " + e91VarD1, this.f23883do, m4VarJ2);
                        }
                        e91 e91Var2 = this.f23877case;
                        if (!(e91Var2 instanceof y1)) {
                            throw new h3("The current output format must be a markup format when using {...}, but was: " + this.f23877case, this.f23883do, m4VarJ2);
                        }
                        this.f23877case = new n((y1) e91Var2, (y1) e91VarD1);
                    }
                    d3();
                    c4 c4VarF = f();
                    m4 m4VarJ22 = J2(48);
                    d3 d3Var = new d3(c4VarF, h0VarM28117switch);
                    d3Var.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
                    this.f23877case = e91Var;
                    d3();
                    return d3Var;
                } catch (jc2 e2) {
                    throw new h3(e2.getMessage(), this.f23883do, m4VarJ2, e2.getCause());
                } catch (IllegalArgumentException e3) {
                    throw new h3("Invalid format name: " + e3.getMessage(), this.f23883do, m4VarJ2, e3.getCause());
                }
            } catch (k52 e4) {
                throw new h3("Could not evaluate expression (on parse-time): " + h0VarM28117switch.mo27815for() + "\nUnderlying cause: " + e4, h0VarM28117switch, e4);
            }
        } catch (Exception e5) {
            throw new h3("Could not evaluate expression (on parse-time): " + h0VarM28117switch.mo27815for() + "\nUnderlying cause: " + e5, h0VarM28117switch, e5);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final e0 m28113return() throws h3 {
        m4 m4VarJ2 = J2(70);
        if ((this.f23877case instanceof y1) && this.f23889goto) {
            throw new h3("Using the \"escape\" directive (legacy escaping) is not allowed when auto-escaping is on with a markup output format (" + this.f23877case.mo889if() + "), to avoid confusion and double-escaping mistakes.", this.f23883do, m4VarJ2);
        }
        m4 m4VarJ22 = J2(142);
        J2(140);
        h0 h0VarM28117switch = m28117switch();
        J2(148);
        e0 e0Var = new e0(m4VarJ22.image, h0VarM28117switch, h0(h0VarM28117switch));
        this.f23902super.addFirst(e0Var);
        e0Var.s(f());
        this.f23902super.removeFirst();
        e0Var.m28075while(this.f23883do, m4VarJ2, J2(71));
        return e0Var;
    }

    public final k4 s() throws h3 {
        m4 m4VarJ2;
        StringBuilder sb = new StringBuilder();
        m4 m4Var = null;
        m4 m4Var2 = null;
        while (true) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            switch (iP2) {
                case 79:
                    m4VarJ2 = J2(79);
                    break;
                case 80:
                    m4VarJ2 = J2(80);
                    break;
                case 81:
                    m4VarJ2 = J2(81);
                    break;
                default:
                    this.f23885extends[95] = this.f23882default;
                    J2(-1);
                    throw new h3();
            }
            sb.append(m4VarJ2.image);
            if (m4Var == null) {
                m4Var = m4VarJ2;
            }
            if (m4Var2 != null) {
                m4Var2.next = null;
            }
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            switch (iP22) {
                case 79:
                case 80:
                case 81:
                    m4Var2 = m4VarJ2;
                default:
                    this.f23885extends[96] = this.f23882default;
                    if (this.f23888for && this.f23905throw == 1 && !this.f23894new) {
                        return null;
                    }
                    k4 k4Var = new k4(sb.toString(), false);
                    k4Var.m28075while(this.f23883do, m4Var, m4VarJ2);
                    return k4Var;
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final h0 m28114static(h0 h0Var) throws h3 {
        m4 m4VarJ2 = J2(104);
        g0 g0Var = new g0(h0Var);
        g0Var.m28072super(this.f23883do, h0Var, m4VarJ2);
        return g0Var;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final h0 m28115strictfp() throws h3 {
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 93 || iP2 == 94) {
            return M(false);
        }
        if (iP2 == 142) {
            return m28093continue();
        }
        this.f23885extends[14] = this.f23882default;
        J2(-1);
        throw new h3();
    }

    /* renamed from: super, reason: not valid java name */
    public final u m28116super() throws h3 {
        m4 m4VarJ2 = J2(56);
        if (this.f23879class >= 1) {
            u uVar = new u();
            uVar.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
            return uVar;
        }
        throw new h3(m4VarJ2.image + " must be nested inside a directive that supports it:  #list with \"as\", #items (or the deprecated " + i0() + ")", this.f23883do, m4VarJ2);
    }

    /* renamed from: switch, reason: not valid java name */
    public final h0 m28117switch() throws h3 {
        return q();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final t1 m28118synchronized() throws h3 {
        new ArrayList();
        m4 m4VarJ2 = J2(133);
        ArrayList arrayListV = v();
        m4 m4VarJ22 = J2(134);
        t1 t1Var = new t1(arrayListV);
        t1Var.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return t1Var;
    }

    public final Map t() throws h3 {
        int iP2;
        HashMap map = new HashMap();
        do {
            w0 w0VarM28093continue = m28093continue();
            J2(105);
            map.put(w0VarM28093continue.toString(), m28117switch());
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 130) {
                this.f23885extends[111] = this.f23882default;
            } else {
                J2(130);
            }
            iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
        } while (iP2 == 142);
        this.f23885extends[112] = this.f23882default;
        return map;
    }

    /* renamed from: this, reason: not valid java name */
    public final h0 m28119this(h0 h0Var) throws h3 {
        J2(103);
        m4 m4VarJ2 = J2(142);
        this.f23909while.m28172else(m4VarJ2);
        Creturn creturnL = Creturn.l(this.f23907try, h0Var, m4VarJ2, this.f23909while);
        creturnL.m28072super(this.f23883do, h0Var, m4VarJ2);
        if (!(creturnL instanceof v3)) {
            return creturnL;
        }
        if (creturnL instanceof Cextends) {
            if (h0Var instanceof w0) {
                String strD = ((w0) h0Var).d();
                c0(strD, h0Var, m4VarJ2);
                ((Cextends) creturnL).r(strD);
                return creturnL;
            }
            throw new h3("Expression used as the left hand operand of ?" + m4VarJ2.image + " must be a simple loop variable name.", h0Var);
        }
        if (creturnL instanceof Cstatic) {
            if (!(this.f23877case instanceof y1) || !this.f23889goto) {
                return creturnL;
            }
            throw new h3("Using ?" + m4VarJ2.image + " (legacy escaping) is not allowed when auto-escaping is on with a markup output format (" + this.f23877case.mo889if() + "), to avoid double-escaping mistakes.", this.f23883do, m4VarJ2);
        }
        if (creturnL instanceof z1) {
            e91 e91Var = this.f23877case;
            if (e91Var instanceof y1) {
                ((z1) creturnL).r((y1) e91Var);
                return creturnL;
            }
            throw new h3("?" + m4VarJ2.image + " can't be used here, as the current output format isn't a markup (escaping) format: " + this.f23877case, this.f23883do, m4VarJ2);
        }
        if (creturnL instanceof e3) {
            ((e3) creturnL).r(this.f23877case, this.f23884else);
            return creturnL;
        }
        boolean z = creturnL instanceof Cinterface;
        if (z) {
            Cinterface cinterface = (Cinterface) creturnL;
            if (!cinterface.x()) {
                m4 m4VarJ22 = J2(135);
                ArrayList arrayListV = v();
                m4 m4VarJ23 = J2(136);
                creturnL.m28072super(this.f23883do, h0Var, m4VarJ23);
                cinterface.r(arrayListV, m4VarJ22, m4VarJ23);
                return creturnL;
            }
        }
        if (z) {
            Cinterface cinterface2 = (Cinterface) creturnL;
            if (cinterface2.x()) {
                m4 m4VarJ24 = J2(135);
                ArrayList arrayListW = w();
                m4 m4VarJ25 = J2(136);
                creturnL.m28072super(this.f23883do, h0Var, m4VarJ25);
                cinterface2.r(arrayListW, m4VarJ24, m4VarJ25);
                return creturnL;
            }
        }
        if (F0(Integer.MAX_VALUE) && (creturnL instanceof Cvolatile)) {
            a2 a2VarD = d(creturnL);
            ((Cvolatile) creturnL).r();
            return a2VarD;
        }
        if (creturnL instanceof Cvolatile) {
            return creturnL;
        }
        throw new AssertionError("Unhandled " + v3.class.getName() + " subclass: " + creturnL.getClass());
    }

    /* renamed from: throw, reason: not valid java name */
    public final h0 m28120throw(h0 h0Var) throws h3 {
        m4 m4VarJ2;
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        h0 h0VarM28117switch = null;
        if (iP2 == 129) {
            m4VarJ2 = J2(129);
            if (E0(Integer.MAX_VALUE)) {
                h0VarM28117switch = m28117switch();
            }
        } else {
            if (iP2 != 153) {
                this.f23885extends[15] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(153);
        }
        x xVar = new x(h0Var, h0VarM28117switch);
        if (h0VarM28117switch == null) {
            xVar.mo28044const(this.f23883do, h0Var.f23823if, h0Var.f23822for, m4VarJ2.beginColumn, m4VarJ2.beginLine);
        } else {
            xVar.m28068final(this.f23883do, h0Var, h0VarM28117switch);
        }
        return xVar;
    }

    /* renamed from: throws, reason: not valid java name */
    public final l0 m28121throws() throws h3 {
        m4 m4VarJ2 = J2(69);
        if (!this.f23880const) {
            throw new h3("Cannot fall back outside a macro.", this.f23883do, m4VarJ2);
        }
        l0 l0Var = new l0();
        l0Var.m28075while(this.f23883do, m4VarJ2, m4VarJ2);
        return l0Var;
    }

    /* renamed from: transient, reason: not valid java name */
    public final c1 m28122transient() throws h3, NumberFormatException {
        m4 m4VarJ2;
        String str;
        m4 m4VarJ22 = J2(11);
        m4 m4VarJ23 = J2(142);
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 130) {
            this.f23885extends[36] = this.f23882default;
            m4VarJ2 = null;
        } else {
            J2(130);
            m4VarJ2 = J2(142);
        }
        J2(148);
        Cnew cnewZ2 = Z2();
        if (cnewZ2 == null) {
            throw new h3("#items must be inside a #list block.", this.f23883do, m4VarJ22);
        }
        if (cnewZ2.f23914do != null) {
            if (cnewZ2.f23915for != 1) {
                str = cnewZ2.f23915for == 2 ? "Can't nest #items into each other when they belong to the same #list." : "The parent #list of the #items must not have \"as loopVar\" parameter.";
            } else {
                str = i0() + " doesn't support nested #items.";
            }
            throw new h3(str, this.f23883do, m4VarJ22);
        }
        cnewZ2.f23915for = 2;
        cnewZ2.f23914do = m4VarJ23.image;
        if (m4VarJ2 != null) {
            cnewZ2.f23916if = m4VarJ2.image;
            cnewZ2.f23917new = true;
            if (cnewZ2.f23916if.equals(cnewZ2.f23914do)) {
                throw new h3("The key and value loop variable names must differ, but both were: " + cnewZ2.f23914do, this.f23883do, m4VarJ22);
            }
        }
        this.f23878catch++;
        this.f23879class++;
        c4 c4VarF = f();
        m4 m4VarJ24 = J2(38);
        this.f23878catch--;
        this.f23879class--;
        cnewZ2.f23914do = null;
        cnewZ2.f23916if = null;
        c1 c1Var = new c1(m4VarJ23.image, m4VarJ2 != null ? m4VarJ2.image : null, c4VarF);
        c1Var.m28075while(this.f23883do, m4VarJ22, m4VarJ24);
        return c1Var;
    }

    /* renamed from: try, reason: not valid java name */
    public final Ccatch m28123try() throws h3, NumberFormatException {
        m4 m4VarJ2;
        m4 m4VarJ22 = J2(6);
        c4 c4VarF = f();
        m3 m3VarD = D();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 40) {
            m4VarJ2 = J2(40);
        } else {
            if (iP2 != 41) {
                this.f23885extends[32] = this.f23882default;
                J2(-1);
                throw new h3();
            }
            m4VarJ2 = J2(41);
        }
        Ccatch ccatch = new Ccatch(c4VarF, m3VarD);
        ccatch.m28075while(this.f23883do, m4VarJ22, m4VarJ2);
        return ccatch;
    }

    public final h0 u() throws h3 {
        m4 m4VarJ2 = J2(135);
        h0 h0VarM28117switch = m28117switch();
        m4 m4VarJ22 = J2(136);
        g3 g3Var = new g3(h0VarM28117switch);
        g3Var.m28075while(this.f23883do, m4VarJ2, m4VarJ22);
        return g3Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList v() throws h3 {
        ArrayList arrayList = new ArrayList();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 120 && iP2 != 121 && iP2 != 129 && iP2 != 133 && iP2 != 135 && iP2 != 137 && iP2 != 142) {
            switch (iP2) {
                case 93:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                    break;
                default:
                    this.f23885extends[80] = this.f23882default;
                    break;
            }
        } else {
            arrayList.add(m28117switch());
            while (true) {
                int iP22 = this.f23899return;
                if (iP22 == -1) {
                    iP22 = P2();
                }
                if (iP22 != 120 && iP22 != 121 && iP22 != 129 && iP22 != 130 && iP22 != 133 && iP22 != 135 && iP22 != 137 && iP22 != 142) {
                    switch (iP22) {
                        case 93:
                        case 94:
                        case 95:
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                            break;
                        default:
                            this.f23885extends[78] = this.f23882default;
                            break;
                    }
                }
                int iP23 = this.f23899return;
                if (iP23 == -1) {
                    iP23 = P2();
                }
                if (iP23 != 130) {
                    this.f23885extends[79] = this.f23882default;
                } else {
                    J2(130);
                }
                arrayList.add(m28117switch());
            }
        }
        return arrayList;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final b4 m28124volatile() throws h3, NumberFormatException {
        m4 m4VarJ2 = J2(8);
        h0 h0VarM28117switch = m28117switch();
        m4 m4VarJ22 = J2(148);
        c4 c4VarF = f();
        s sVar = new s(h0VarM28117switch, c4VarF, 0);
        sVar.m28070import(this.f23883do, m4VarJ2, m4VarJ22, c4VarF);
        x0 x0Var = new x0(sVar);
        while (true) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            if (iP2 != 9) {
                break;
            }
            m4 m4VarJ23 = J2(9);
            h0 h0VarM28117switch2 = m28117switch();
            m4 m4VarB = b();
            c4 c4VarF2 = f();
            s sVar2 = new s(h0VarM28117switch2, c4VarF2, 2);
            sVar2.m28070import(this.f23883do, m4VarJ23, m4VarB, c4VarF2);
            x0Var.r(sVar2);
        }
        this.f23885extends[30] = this.f23882default;
        int iP22 = this.f23899return;
        if (iP22 == -1) {
            iP22 = P2();
        }
        if (iP22 != 54) {
            this.f23885extends[31] = this.f23882default;
        } else {
            m4 m4VarJ24 = J2(54);
            c4 c4VarF3 = f();
            s sVar3 = new s(null, c4VarF3, 1);
            sVar3.m28070import(this.f23883do, m4VarJ24, m4VarJ24, c4VarF3);
            x0Var.r(sVar3);
        }
        x0Var.m28075while(this.f23883do, m4VarJ2, J2(36));
        return x0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList w() throws h3 {
        ArrayList arrayList = new ArrayList();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 != 120 && iP2 != 121 && iP2 != 129 && iP2 != 133 && iP2 != 135 && iP2 != 137 && iP2 != 142) {
            switch (iP2) {
                case 93:
                case 94:
                case 95:
                case 96:
                case 97:
                case 98:
                case 99:
                    break;
                default:
                    this.f23885extends[83] = this.f23882default;
                    break;
            }
        } else {
            arrayList.add(a());
            while (true) {
                int iP22 = this.f23899return;
                if (iP22 == -1) {
                    iP22 = P2();
                }
                if (iP22 != 120 && iP22 != 121 && iP22 != 129 && iP22 != 130 && iP22 != 133 && iP22 != 135 && iP22 != 137 && iP22 != 142) {
                    switch (iP22) {
                        case 93:
                        case 94:
                        case 95:
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                            break;
                        default:
                            this.f23885extends[81] = this.f23882default;
                            break;
                    }
                }
                int iP23 = this.f23899return;
                if (iP23 == -1) {
                    iP23 = P2();
                }
                if (iP23 != 130) {
                    this.f23885extends[82] = this.f23882default;
                } else {
                    J2(130);
                }
                arrayList.add(a());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0049 A[FALL_THROUGH] */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final h0 m28125while(h0 h0Var) throws h3 {
        m4 m4VarJ2;
        J2(99);
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        if (iP2 == 95 || iP2 == 96) {
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 == 95) {
                m4VarJ2 = J2(95);
            } else if (iP22 != 96) {
                switch (iP22) {
                    case 115:
                        m4VarJ2 = J2(115);
                        break;
                    case 116:
                        m4VarJ2 = J2(116);
                        break;
                    case 117:
                        m4VarJ2 = J2(117);
                        break;
                    case 118:
                        m4VarJ2 = J2(118);
                        break;
                    default:
                        switch (iP22) {
                            case 139:
                                m4VarJ2 = J2(139);
                                break;
                            case 140:
                                m4VarJ2 = J2(140);
                                break;
                            case 141:
                                m4VarJ2 = J2(141);
                                break;
                            default:
                                this.f23885extends[20] = this.f23882default;
                                J2(-1);
                                throw new h3();
                        }
                }
            } else {
                m4VarJ2 = J2(96);
            }
            if (!Character.isLetter(m4VarJ2.image.charAt(0))) {
                throw new h3(m4VarJ2.image + " is not a valid identifier.", this.f23883do, m4VarJ2);
            }
        } else if (iP2 == 122) {
            m4VarJ2 = J2(122);
        } else if (iP2 != 123) {
            switch (iP2) {
                default:
                    switch (iP2) {
                        case 139:
                        case 140:
                        case 141:
                            break;
                        case 142:
                            m4VarJ2 = J2(142);
                            break;
                        default:
                            this.f23885extends[21] = this.f23882default;
                            J2(-1);
                            throw new h3();
                    }
                case 115:
                case 116:
                case 117:
                case 118:
                    break;
            }
        } else {
            m4VarJ2 = J2(123);
        }
        V2(h0Var, "hash");
        X2(h0Var, "hash");
        T2(h0Var, "hash");
        a0 a0Var = new a0(h0Var, m4VarJ2.image);
        a0Var.m28072super(this.f23883do, h0Var, m4VarJ2);
        return a0Var;
    }

    public final h0 x() throws h3 {
        h0 h0VarM28108new = m28108new();
        while (true) {
            int iP2 = this.f23899return;
            if (iP2 == -1) {
                iP2 = P2();
            }
            if (iP2 != 99 && iP2 != 129 && iP2 != 133 && iP2 != 135 && iP2 != 153 && iP2 != 103 && iP2 != 104) {
                this.f23885extends[0] = this.f23882default;
                return h0VarM28108new;
            }
            int iP22 = this.f23899return;
            if (iP22 == -1) {
                iP22 = P2();
            }
            if (iP22 != 99) {
                if (iP22 != 129) {
                    if (iP22 == 133) {
                        h0VarM28108new = m28104import(h0VarM28108new);
                    } else if (iP22 == 135) {
                        h0VarM28108new = d(h0VarM28108new);
                    } else if (iP22 != 153) {
                        if (iP22 == 103) {
                            h0VarM28108new = m28119this(h0VarM28108new);
                        } else {
                            if (iP22 != 104) {
                                this.f23885extends[1] = this.f23882default;
                                J2(-1);
                                throw new h3();
                            }
                            h0VarM28108new = m28114static(h0VarM28108new);
                        }
                    }
                }
                h0VarM28108new = m28120throw(h0VarM28108new);
            } else {
                h0VarM28108new = m28125while(h0VarM28108new);
            }
        }
    }

    public final h0 y() throws h3 {
        m4 m4Var;
        int i;
        h0 h0VarM28095do = m28095do();
        int iP2 = this.f23899return;
        if (iP2 == -1) {
            iP2 = P2();
        }
        switch (iP2) {
            case 100:
            case 101:
            case 102:
                int iP22 = this.f23899return;
                if (iP22 == -1) {
                    iP22 = P2();
                }
                h0 h0VarM28095do2 = null;
                switch (iP22) {
                    case 100:
                        m4 m4VarJ2 = J2(100);
                        if (!B0(Integer.MAX_VALUE)) {
                            m4Var = m4VarJ2;
                            i = 2;
                            break;
                        } else {
                            h0VarM28095do2 = m28095do();
                            m4Var = m4VarJ2;
                            i = 0;
                            break;
                        }
                    case 101:
                    case 102:
                        int iP23 = this.f23899return;
                        if (iP23 == -1) {
                            iP23 = P2();
                        }
                        if (iP23 == 101) {
                            J2(101);
                            i = 1;
                        } else {
                            if (iP23 != 102) {
                                this.f23885extends[10] = this.f23882default;
                                J2(-1);
                                throw new h3();
                            }
                            J2(102);
                            i = 3;
                        }
                        h0VarM28095do2 = m28095do();
                        m4Var = null;
                        break;
                    default:
                        this.f23885extends[11] = this.f23882default;
                        J2(-1);
                        throw new h3();
                }
                Y2(h0VarM28095do);
                if (h0VarM28095do2 != null) {
                    Y2(h0VarM28095do2);
                }
                k3 k3Var = new k3(h0VarM28095do, h0VarM28095do2, i);
                if (h0VarM28095do2 != null) {
                    k3Var.m28068final(this.f23883do, h0VarM28095do, h0VarM28095do2);
                } else {
                    k3Var.m28072super(this.f23883do, h0VarM28095do, m4Var);
                }
                return k3Var;
            default:
                this.f23885extends[12] = this.f23882default;
                return h0VarM28095do;
        }
    }

    public void z(k0 k0Var) {
        this.f23909while = k0Var;
        this.f23893native = new m4();
        this.f23899return = -1;
        int i = 0;
        this.f23882default = 0;
        for (int i2 = 0; i2 < 116; i2++) {
            this.f23885extends[i2] = -1;
        }
        while (true) {
            Cif[] cifArr = this.f23887finally;
            if (i >= cifArr.length) {
                return;
            }
            cifArr[i] = new Cif();
            i++;
        }
    }

    public j0(Cstatic cstatic, Reader reader, boolean z, boolean z2, int i) {
        this(cstatic, reader, z, z2, i, freemarker.template.Cdo.v3);
    }

    public j0(Cstatic cstatic, Reader reader, boolean z, boolean z2, int i, int i2) {
        this(cstatic, reader, z, z2, i, 10, i2);
    }

    public j0(String str) {
        this(f0(), (Reader) new StringReader(str), true, true);
    }

    public j0(Cstatic cstatic, Reader reader, boolean z, boolean z2, int i, int i2, int i3) {
        this(cstatic, reader, new q1(z, z2, i, 20, i2, Integer.valueOf(cstatic != null ? cstatic.j1().getAutoEscapingPolicy() : 21), cstatic != null ? cstatic.j1().getOutputFormat() : null, cstatic != null ? Boolean.valueOf(cstatic.j1().getRecognizeStandardFileExtensions()) : null, cstatic != null ? Integer.valueOf(cstatic.j1().getTabSize()) : null, new we2(i3), cstatic != null ? cstatic.getArithmeticEngine() : null));
    }

    public j0(Cstatic cstatic, Reader reader, ParserConfiguration parserConfiguration) {
        this(cstatic, true, c3(reader, parserConfiguration), parserConfiguration);
    }

    public j0(Cstatic cstatic, boolean z, k0 k0Var, ParserConfiguration parserConfiguration) {
        e91 e91VarL0;
        this(k0Var);
        w41.check(parserConfiguration);
        this.f23904this = parserConfiguration;
        w41.check(cstatic);
        this.f23883do = cstatic;
        if (parserConfiguration instanceof q1) {
            q1 q1Var = (q1) parserConfiguration;
            q1Var.m28219do(cstatic.getArithmeticEngine());
            q1Var.m28221if(cstatic.b1().getAutoEscapingPolicy());
            q1Var.m28220for(cstatic.getOutputFormat());
            q1Var.m28222new(cstatic.j1().getRecognizeStandardFileExtensions());
            q1Var.m28223try(cstatic.j1().getTabSize());
        }
        int iIntValue = parserConfiguration.getIncompatibleImprovements().intValue();
        this.f23909while.f23991while = iIntValue;
        this.f23907try = iIntValue;
        if (parserConfiguration.getRecognizeStandardFileExtensions() && (e91VarL0 = l0()) != null) {
            this.f23884else = 21;
            this.f23877case = e91VarL0;
        } else {
            this.f23884else = parserConfiguration.getAutoEscapingPolicy();
            this.f23877case = parserConfiguration.getOutputFormat();
        }
        d3();
        this.f23909while.Q(this);
        this.f23909while.f23974goto = parserConfiguration.getStrictSyntaxMode();
        int tagSyntax = parserConfiguration.getTagSyntax();
        if (tagSyntax == 0) {
            this.f23909while.f23961break = true;
        } else if (tagSyntax == 1) {
            this.f23909while.f23987this = false;
        } else if (tagSyntax == 2) {
            this.f23909while.f23987this = true;
        } else {
            throw new IllegalArgumentException("Illegal argument for tagSyntax: " + tagSyntax);
        }
        this.f23909while.f23965const = parserConfiguration.getInterpolationSyntax();
        int namingConvention = parserConfiguration.getNamingConvention();
        switch (namingConvention) {
            case 10:
            case 11:
            case 12:
                k0 k0Var2 = this.f23909while;
                k0Var2.f23971final = namingConvention;
                k0Var2.f23985super = namingConvention;
                this.f23890if = parserConfiguration.getWhitespaceStripping();
                if (z) {
                    ul2.m8519while(cstatic, this.f23889goto);
                    ul2.m8508import(cstatic, this.f23877case);
                    return;
                }
                return;
            default:
                throw new IllegalArgumentException("Illegal argument for namingConvention: " + namingConvention);
        }
    }

    public j0(InputStream inputStream) {
        this(inputStream, null);
    }

    public j0(InputStream inputStream, String str) {
        this.f23902super = new LinkedList();
        this.f23885extends = new int[116];
        this.f23887finally = new Cif[17];
        int i = 0;
        this.f23895package = false;
        this.f23896private = 0;
        this.f23875abstract = new Cfor();
        this.f23881continue = new ArrayList();
        this.f23908volatile = -1;
        this.f23892interface = new int[100];
        try {
            this.f23891import = new t3(inputStream, str, 1, 1);
            this.f23909while = new k0(this.f23891import);
            this.f23893native = new m4();
            this.f23899return = -1;
            this.f23882default = 0;
            for (int i2 = 0; i2 < 116; i2++) {
                this.f23885extends[i2] = -1;
            }
            while (true) {
                Cif[] cifArr = this.f23887finally;
                if (i >= cifArr.length) {
                    return;
                }
                cifArr[i] = new Cif();
                i++;
            }
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }

    public j0(Reader reader) {
        this.f23902super = new LinkedList();
        this.f23885extends = new int[116];
        this.f23887finally = new Cif[17];
        int i = 0;
        this.f23895package = false;
        this.f23896private = 0;
        this.f23875abstract = new Cfor();
        this.f23881continue = new ArrayList();
        this.f23908volatile = -1;
        this.f23892interface = new int[100];
        this.f23891import = new t3(reader, 1, 1);
        this.f23909while = new k0(this.f23891import);
        this.f23893native = new m4();
        this.f23899return = -1;
        this.f23882default = 0;
        for (int i2 = 0; i2 < 116; i2++) {
            this.f23885extends[i2] = -1;
        }
        while (true) {
            Cif[] cifArr = this.f23887finally;
            if (i >= cifArr.length) {
                return;
            }
            cifArr[i] = new Cif();
            i++;
        }
    }

    public j0(k0 k0Var) {
        this.f23902super = new LinkedList();
        this.f23885extends = new int[116];
        this.f23887finally = new Cif[17];
        int i = 0;
        this.f23895package = false;
        this.f23896private = 0;
        this.f23875abstract = new Cfor();
        this.f23881continue = new ArrayList();
        this.f23908volatile = -1;
        this.f23892interface = new int[100];
        this.f23909while = k0Var;
        this.f23893native = new m4();
        this.f23899return = -1;
        this.f23882default = 0;
        for (int i2 = 0; i2 < 116; i2++) {
            this.f23885extends[i2] = -1;
        }
        while (true) {
            Cif[] cifArr = this.f23887finally;
            if (i >= cifArr.length) {
                return;
            }
            cifArr[i] = new Cif();
            i++;
        }
    }
}
