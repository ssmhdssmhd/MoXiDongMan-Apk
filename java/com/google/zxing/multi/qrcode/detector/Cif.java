package com.google.zxing.multi.qrcode.detector;

import android.support.v4.bc0;
import android.support.v4.dc0;
import android.support.v4.j41;
import android.support.v4.yn1;
import android.support.v4.z8;
import com.google.zxing.Cnew;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.qrcode.detector.Cfor;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.zxing.multi.qrcode.detector.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif extends Cfor {

    /* renamed from: break, reason: not valid java name */
    private static final float f17574break = 180.0f;

    /* renamed from: catch, reason: not valid java name */
    private static final float f17575catch = 9.0f;

    /* renamed from: class, reason: not valid java name */
    private static final float f17576class = 0.05f;

    /* renamed from: const, reason: not valid java name */
    private static final float f17577const = 0.5f;

    /* renamed from: this, reason: not valid java name */
    private static final dc0[] f17578this = new dc0[0];

    /* renamed from: com.google.zxing.multi.qrcode.detector.if$if, reason: invalid class name and collision with other inner class name */
    public static final class C0166if implements Serializable, Comparator<bc0> {
        private C0166if() {
        }

        @Override // java.util.Comparator
        public int compare(bc0 bc0Var, bc0 bc0Var2) {
            double dM513this = bc0Var2.m513this() - bc0Var.m513this();
            if (dM513this < 0.0d) {
                return -1;
            }
            return dM513this > 0.0d ? 1 : 0;
        }
    }

    public Cif(z8 z8Var) {
        super(z8Var);
    }

    /* renamed from: native, reason: not valid java name */
    private bc0[][] m21978native() throws j41 {
        List<bc0> listM22373class = m22373class();
        int size = listM22373class.size();
        int i = 3;
        if (size < 3) {
            throw j41.getNotFoundInstance();
        }
        char c = 0;
        if (size == 3) {
            return new bc0[][]{new bc0[]{listM22373class.get(0), listM22373class.get(1), listM22373class.get(2)}};
        }
        Collections.sort(listM22373class, new C0166if());
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < size - 2) {
            bc0 bc0Var = listM22373class.get(i2);
            if (bc0Var != null) {
                int i3 = i2 + 1;
                while (i3 < size - 1) {
                    bc0 bc0Var2 = listM22373class.get(i3);
                    if (bc0Var2 != null) {
                        float fM513this = (bc0Var.m513this() - bc0Var2.m513this()) / Math.min(bc0Var.m513this(), bc0Var2.m513this());
                        float fAbs = Math.abs(bc0Var.m513this() - bc0Var2.m513this());
                        float f = f17576class;
                        float f2 = 0.5f;
                        if (fAbs <= 0.5f || fM513this < f17576class) {
                            int i4 = i3 + 1;
                            while (i4 < size) {
                                bc0 bc0Var3 = listM22373class.get(i4);
                                if (bc0Var3 != null) {
                                    float fM513this2 = (bc0Var2.m513this() - bc0Var3.m513this()) / Math.min(bc0Var2.m513this(), bc0Var3.m513this());
                                    if (Math.abs(bc0Var2.m513this() - bc0Var3.m513this()) <= f2 || fM513this2 < f) {
                                        bc0[] bc0VarArr = new bc0[i];
                                        bc0VarArr[c] = bc0Var;
                                        bc0VarArr[1] = bc0Var2;
                                        bc0VarArr[2] = bc0Var3;
                                        yn1.m9910try(bc0VarArr);
                                        dc0 dc0Var = new dc0(bc0VarArr);
                                        float fM9909if = yn1.m9909if(dc0Var.m1261if(), dc0Var.m1259do());
                                        float fM9909if2 = yn1.m9909if(dc0Var.m1260for(), dc0Var.m1259do());
                                        float fM9909if3 = yn1.m9909if(dc0Var.m1261if(), dc0Var.m1260for());
                                        float fM513this3 = (fM9909if + fM9909if3) / (bc0Var.m513this() * 2.0f);
                                        if (fM513this3 <= 180.0f && fM513this3 >= f17575catch && Math.abs((fM9909if - fM9909if3) / Math.min(fM9909if, fM9909if3)) < 0.1f) {
                                            float fSqrt = (float) Math.sqrt((fM9909if * fM9909if) + (fM9909if3 * fM9909if3));
                                            if (Math.abs((fM9909if2 - fSqrt) / Math.min(fM9909if2, fSqrt)) < 0.1f) {
                                                arrayList.add(bc0VarArr);
                                            }
                                        }
                                    }
                                }
                                i4++;
                                i = 3;
                                c = 0;
                                f = f17576class;
                                f2 = 0.5f;
                            }
                        }
                    }
                    i3++;
                    i = 3;
                    c = 0;
                }
            }
            i2++;
            i = 3;
            c = 0;
        }
        if (arrayList.isEmpty()) {
            throw j41.getNotFoundInstance();
        }
        return (bc0[][]) arrayList.toArray(new bc0[arrayList.size()][]);
    }

    /* renamed from: import, reason: not valid java name */
    public FinderPatternInfo[] m21979import(Map<Cnew, ?> map) throws j41 {
        boolean z = map != null && map.containsKey(Cnew.TRY_HARDER);
        z8 z8VarM22372catch = m22372catch();
        int iM10094goto = z8VarM22372catch.m10094goto();
        int iM10091class = z8VarM22372catch.m10091class();
        int i = (iM10094goto * 3) / 388;
        if (i < 3 || z) {
            i = 3;
        }
        int[] iArr = new int[5];
        for (int i2 = i - 1; i2 < iM10094goto; i2 += i) {
            m22376if(iArr);
            int i3 = 0;
            for (int i4 = 0; i4 < iM10091class; i4++) {
                if (z8VarM22372catch.m10105try(i4, i2)) {
                    if ((i3 & 1) == 1) {
                        i3++;
                    }
                    iArr[i3] = iArr[i3] + 1;
                } else if ((i3 & 1) != 0) {
                    iArr[i3] = iArr[i3] + 1;
                } else if (i3 != 4) {
                    i3++;
                    iArr[i3] = iArr[i3] + 1;
                } else if (Cfor.m22365goto(iArr) && m22374const(iArr, i2, i4)) {
                    m22376if(iArr);
                    i3 = 0;
                } else {
                    m22377while(iArr);
                    i3 = 3;
                }
            }
            if (Cfor.m22365goto(iArr)) {
                m22374const(iArr, i2, iM10091class);
            }
        }
        bc0[][] bc0VarArrM21978native = m21978native();
        ArrayList arrayList = new ArrayList();
        for (bc0[] bc0VarArr : bc0VarArrM21978native) {
            yn1.m9910try(bc0VarArr);
            arrayList.add(new dc0(bc0VarArr));
        }
        return arrayList.isEmpty() ? f17578this : (dc0[]) arrayList.toArray(new dc0[arrayList.size()]);
    }

    public Cif(z8 z8Var, ResultPointCallback resultPointCallback) {
        super(z8Var, resultPointCallback);
    }
}
