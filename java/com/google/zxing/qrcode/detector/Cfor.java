package com.google.zxing.qrcode.detector;

import android.support.v4.bc0;
import android.support.v4.dc0;
import android.support.v4.j41;
import android.support.v4.yn1;
import android.support.v4.z8;
import com.google.zxing.Cnew;
import com.google.zxing.ResultPointCallback;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.zxing.qrcode.detector.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor {

    /* renamed from: case, reason: not valid java name */
    private static final int f17926case = 2;

    /* renamed from: else, reason: not valid java name */
    public static final int f17927else = 3;

    /* renamed from: goto, reason: not valid java name */
    public static final int f17928goto = 97;

    /* renamed from: do, reason: not valid java name */
    private final z8 f17929do;

    /* renamed from: for, reason: not valid java name */
    private boolean f17930for;

    /* renamed from: if, reason: not valid java name */
    private final List<bc0> f17931if;

    /* renamed from: new, reason: not valid java name */
    private final int[] f17932new;

    /* renamed from: try, reason: not valid java name */
    private final ResultPointCallback f17933try;

    /* renamed from: com.google.zxing.qrcode.detector.for$for, reason: invalid class name and collision with other inner class name */
    public static final class C0169for implements Serializable, Comparator<bc0> {
        private final float average;

        private C0169for(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public int compare(bc0 bc0Var, bc0 bc0Var2) {
            return Float.compare(Math.abs(bc0Var2.m513this() - this.average), Math.abs(bc0Var.m513this() - this.average));
        }
    }

    /* renamed from: com.google.zxing.qrcode.detector.for$if, reason: invalid class name */
    public static final class Cif implements Serializable, Comparator<bc0> {
        private final float average;

        private Cif(float f) {
            this.average = f;
        }

        @Override // java.util.Comparator
        public int compare(bc0 bc0Var, bc0 bc0Var2) {
            int iCompare = Integer.compare(bc0Var2.m512goto(), bc0Var.m512goto());
            return iCompare == 0 ? Float.compare(Math.abs(bc0Var.m513this() - this.average), Math.abs(bc0Var2.m513this() - this.average)) : iCompare;
        }
    }

    public Cfor(z8 z8Var) {
        this(z8Var, null);
    }

    /* renamed from: break, reason: not valid java name */
    private int[] m22361break() {
        m22376if(this.f17932new);
        return this.f17932new;
    }

    /* renamed from: do, reason: not valid java name */
    private static float m22362do(int[] iArr, int i) {
        return ((i - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    /* renamed from: else, reason: not valid java name */
    private int m22363else() {
        if (this.f17931if.size() <= 1) {
            return 0;
        }
        bc0 bc0Var = null;
        for (bc0 bc0Var2 : this.f17931if) {
            if (bc0Var2.m512goto() >= 2) {
                if (bc0Var != null) {
                    this.f17930for = true;
                    return ((int) (Math.abs(bc0Var.m9911for() - bc0Var2.m9911for()) - Math.abs(bc0Var.m9912new() - bc0Var2.m9912new()))) / 2;
                }
                bc0Var = bc0Var2;
            }
        }
        return 0;
    }

    /* renamed from: for, reason: not valid java name */
    private boolean m22364for(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int[] iArrM22361break = m22361break();
        int i6 = 0;
        while (i >= i6 && i2 >= i6 && this.f17929do.m10105try(i2 - i6, i - i6)) {
            iArrM22361break[2] = iArrM22361break[2] + 1;
            i6++;
        }
        if (iArrM22361break[2] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && !this.f17929do.m10105try(i2 - i6, i - i6)) {
            iArrM22361break[1] = iArrM22361break[1] + 1;
            i6++;
        }
        if (iArrM22361break[1] == 0) {
            return false;
        }
        while (i >= i6 && i2 >= i6 && this.f17929do.m10105try(i2 - i6, i - i6)) {
            iArrM22361break[0] = iArrM22361break[0] + 1;
            i6++;
        }
        if (iArrM22361break[0] == 0) {
            return false;
        }
        int iM10094goto = this.f17929do.m10094goto();
        int iM10091class = this.f17929do.m10091class();
        int i7 = 1;
        while (true) {
            int i8 = i + i7;
            if (i8 >= iM10094goto || (i5 = i2 + i7) >= iM10091class || !this.f17929do.m10105try(i5, i8)) {
                break;
            }
            iArrM22361break[2] = iArrM22361break[2] + 1;
            i7++;
        }
        while (true) {
            int i9 = i + i7;
            if (i9 >= iM10094goto || (i4 = i2 + i7) >= iM10091class || this.f17929do.m10105try(i4, i9)) {
                break;
            }
            iArrM22361break[3] = iArrM22361break[3] + 1;
            i7++;
        }
        if (iArrM22361break[3] == 0) {
            return false;
        }
        while (true) {
            int i10 = i + i7;
            if (i10 >= iM10094goto || (i3 = i2 + i7) >= iM10091class || !this.f17929do.m10105try(i3, i10)) {
                break;
            }
            iArrM22361break[4] = iArrM22361break[4] + 1;
            i7++;
        }
        if (iArrM22361break[4] == 0) {
            return false;
        }
        return m22368this(iArrM22361break);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m22365goto(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 2.0f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    /* renamed from: new, reason: not valid java name */
    private float m22366new(int i, int i2, int i3, int i4) {
        z8 z8Var = this.f17929do;
        int iM10091class = z8Var.m10091class();
        int[] iArrM22361break = m22361break();
        int i5 = i;
        while (i5 >= 0 && z8Var.m10105try(i5, i2)) {
            iArrM22361break[2] = iArrM22361break[2] + 1;
            i5--;
        }
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i5 >= 0 && !z8Var.m10105try(i5, i2) && iArrM22361break[1] <= i3) {
            iArrM22361break[1] = iArrM22361break[1] + 1;
            i5--;
        }
        if (i5 >= 0 && iArrM22361break[1] <= i3) {
            while (i5 >= 0 && z8Var.m10105try(i5, i2) && iArrM22361break[0] <= i3) {
                iArrM22361break[0] = iArrM22361break[0] + 1;
                i5--;
            }
            if (iArrM22361break[0] > i3) {
                return Float.NaN;
            }
            int i6 = i + 1;
            while (i6 < iM10091class && z8Var.m10105try(i6, i2)) {
                iArrM22361break[2] = iArrM22361break[2] + 1;
                i6++;
            }
            if (i6 == iM10091class) {
                return Float.NaN;
            }
            while (i6 < iM10091class && !z8Var.m10105try(i6, i2) && iArrM22361break[3] < i3) {
                iArrM22361break[3] = iArrM22361break[3] + 1;
                i6++;
            }
            if (i6 != iM10091class && iArrM22361break[3] < i3) {
                while (i6 < iM10091class && z8Var.m10105try(i6, i2) && iArrM22361break[4] < i3) {
                    iArrM22361break[4] = iArrM22361break[4] + 1;
                    i6++;
                }
                if (iArrM22361break[4] < i3 && Math.abs(((((iArrM22361break[0] + iArrM22361break[1]) + iArrM22361break[2]) + iArrM22361break[3]) + iArrM22361break[4]) - i4) * 5 < i4 && m22365goto(iArrM22361break)) {
                    return m22362do(iArrM22361break, i6);
                }
            }
        }
        return Float.NaN;
    }

    /* renamed from: super, reason: not valid java name */
    private boolean m22367super() {
        int size = this.f17931if.size();
        float fAbs = 0.0f;
        int i = 0;
        float fM513this = 0.0f;
        for (bc0 bc0Var : this.f17931if) {
            if (bc0Var.m512goto() >= 2) {
                i++;
                fM513this += bc0Var.m513this();
            }
        }
        if (i < 3) {
            return false;
        }
        float f = fM513this / size;
        Iterator<bc0> it = this.f17931if.iterator();
        while (it.hasNext()) {
            fAbs += Math.abs(it.next().m513this() - f);
        }
        return fAbs <= fM513this * 0.05f;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m22368this(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = i / 7.0f;
        float f2 = f / 1.333f;
        return Math.abs(f - ((float) iArr[0])) < f2 && Math.abs(f - ((float) iArr[1])) < f2 && Math.abs((f * 3.0f) - ((float) iArr[2])) < 3.0f * f2 && Math.abs(f - ((float) iArr[3])) < f2 && Math.abs(f - ((float) iArr[4])) < f2;
    }

    /* renamed from: throw, reason: not valid java name */
    private bc0[] m22369throw() throws j41 {
        int size = this.f17931if.size();
        if (size < 3) {
            throw j41.getNotFoundInstance();
        }
        float fM513this = 0.0f;
        if (size > 3) {
            Iterator<bc0> it = this.f17931if.iterator();
            float f = 0.0f;
            float f2 = 0.0f;
            while (it.hasNext()) {
                float fM513this2 = it.next().m513this();
                f += fM513this2;
                f2 += fM513this2 * fM513this2;
            }
            float f3 = f / size;
            float fSqrt = (float) Math.sqrt((f2 / r0) - (f3 * f3));
            Collections.sort(this.f17931if, new C0169for(f3));
            float fMax = Math.max(0.2f * f3, fSqrt);
            int i = 0;
            while (i < this.f17931if.size() && this.f17931if.size() > 3) {
                if (Math.abs(this.f17931if.get(i).m513this() - f3) > fMax) {
                    this.f17931if.remove(i);
                    i--;
                }
                i++;
            }
        }
        if (this.f17931if.size() > 3) {
            Iterator<bc0> it2 = this.f17931if.iterator();
            while (it2.hasNext()) {
                fM513this += it2.next().m513this();
            }
            Collections.sort(this.f17931if, new Cif(fM513this / this.f17931if.size()));
            List<bc0> list = this.f17931if;
            list.subList(3, list.size()).clear();
        }
        return new bc0[]{this.f17931if.get(0), this.f17931if.get(1), this.f17931if.get(2)};
    }

    /* renamed from: try, reason: not valid java name */
    private float m22370try(int i, int i2, int i3, int i4) {
        z8 z8Var = this.f17929do;
        int iM10094goto = z8Var.m10094goto();
        int[] iArrM22361break = m22361break();
        int i5 = i;
        while (i5 >= 0 && z8Var.m10105try(i2, i5)) {
            iArrM22361break[2] = iArrM22361break[2] + 1;
            i5--;
        }
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i5 >= 0 && !z8Var.m10105try(i2, i5) && iArrM22361break[1] <= i3) {
            iArrM22361break[1] = iArrM22361break[1] + 1;
            i5--;
        }
        if (i5 >= 0 && iArrM22361break[1] <= i3) {
            while (i5 >= 0 && z8Var.m10105try(i2, i5) && iArrM22361break[0] <= i3) {
                iArrM22361break[0] = iArrM22361break[0] + 1;
                i5--;
            }
            if (iArrM22361break[0] > i3) {
                return Float.NaN;
            }
            int i6 = i + 1;
            while (i6 < iM10094goto && z8Var.m10105try(i2, i6)) {
                iArrM22361break[2] = iArrM22361break[2] + 1;
                i6++;
            }
            if (i6 == iM10094goto) {
                return Float.NaN;
            }
            while (i6 < iM10094goto && !z8Var.m10105try(i2, i6) && iArrM22361break[3] < i3) {
                iArrM22361break[3] = iArrM22361break[3] + 1;
                i6++;
            }
            if (i6 != iM10094goto && iArrM22361break[3] < i3) {
                while (i6 < iM10094goto && z8Var.m10105try(i2, i6) && iArrM22361break[4] < i3) {
                    iArrM22361break[4] = iArrM22361break[4] + 1;
                    i6++;
                }
                if (iArrM22361break[4] < i3 && Math.abs(((((iArrM22361break[0] + iArrM22361break[1]) + iArrM22361break[2]) + iArrM22361break[3]) + iArrM22361break[4]) - i4) * 5 < i4 * 2 && m22365goto(iArrM22361break)) {
                    return m22362do(iArrM22361break, i6);
                }
            }
        }
        return Float.NaN;
    }

    /* renamed from: case, reason: not valid java name */
    public final dc0 m22371case(Map<Cnew, ?> map) throws j41 {
        boolean z = map != null && map.containsKey(Cnew.TRY_HARDER);
        int iM10094goto = this.f17929do.m10094goto();
        int iM10091class = this.f17929do.m10091class();
        int i = (iM10094goto * 3) / 388;
        if (i < 3 || z) {
            i = 3;
        }
        int[] iArr = new int[5];
        int i2 = i - 1;
        boolean zM22367super = false;
        while (i2 < iM10094goto && !zM22367super) {
            m22376if(iArr);
            int i3 = 0;
            int i4 = 0;
            while (i3 < iM10091class) {
                if (this.f17929do.m10105try(i3, i2)) {
                    if ((i4 & 1) == 1) {
                        i4++;
                    }
                    iArr[i4] = iArr[i4] + 1;
                } else if ((i4 & 1) != 0) {
                    iArr[i4] = iArr[i4] + 1;
                } else if (i4 != 4) {
                    i4++;
                    iArr[i4] = iArr[i4] + 1;
                } else if (m22365goto(iArr) && m22374const(iArr, i2, i3)) {
                    if (this.f17930for) {
                        zM22367super = m22367super();
                    } else {
                        int iM22363else = m22363else();
                        if (iM22363else > iArr[2]) {
                            i2 += (iM22363else - iArr[2]) - 2;
                            i3 = iM10091class - 1;
                        }
                    }
                    m22376if(iArr);
                    i = 2;
                    i4 = 0;
                } else {
                    m22377while(iArr);
                    i4 = 3;
                }
                i3++;
            }
            if (m22365goto(iArr) && m22374const(iArr, i2, iM10091class)) {
                i = iArr[0];
                if (this.f17930for) {
                    zM22367super = m22367super();
                }
            }
            i2 += i;
        }
        bc0[] bc0VarArrM22369throw = m22369throw();
        yn1.m9910try(bc0VarArrM22369throw);
        return new dc0(bc0VarArrM22369throw);
    }

    /* renamed from: catch, reason: not valid java name */
    public final z8 m22372catch() {
        return this.f17929do;
    }

    /* renamed from: class, reason: not valid java name */
    public final List<bc0> m22373class() {
        return this.f17931if;
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m22374const(int[] iArr, int i, int i2) {
        boolean z = false;
        int i3 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int iM22362do = (int) m22362do(iArr, i2);
        float fM22370try = m22370try(i, iM22362do, iArr[2], i3);
        if (!Float.isNaN(fM22370try)) {
            int i4 = (int) fM22370try;
            float fM22366new = m22366new(iM22362do, i4, iArr[2], i3);
            if (!Float.isNaN(fM22366new) && m22364for(i4, (int) fM22366new)) {
                float f = i3 / 7.0f;
                int i5 = 0;
                while (true) {
                    if (i5 >= this.f17931if.size()) {
                        break;
                    }
                    bc0 bc0Var = this.f17931if.get(i5);
                    if (bc0Var.m510case(f, fM22370try, fM22366new)) {
                        this.f17931if.set(i5, bc0Var.m511else(fM22370try, fM22366new, f));
                        z = true;
                        break;
                    }
                    i5++;
                }
                if (!z) {
                    bc0 bc0Var2 = new bc0(fM22366new, fM22370try, f);
                    this.f17931if.add(bc0Var2);
                    ResultPointCallback resultPointCallback = this.f17933try;
                    if (resultPointCallback != null) {
                        resultPointCallback.foundPossibleResultPoint(bc0Var2);
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Deprecated
    /* renamed from: final, reason: not valid java name */
    public final boolean m22375final(int[] iArr, int i, int i2, boolean z) {
        return m22374const(iArr, i, i2);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m22376if(int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 0;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public final void m22377while(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    public Cfor(z8 z8Var, ResultPointCallback resultPointCallback) {
        this.f17929do = z8Var;
        this.f17931if = new ArrayList();
        this.f17932new = new int[5];
        this.f17933try = resultPointCallback;
    }
}
