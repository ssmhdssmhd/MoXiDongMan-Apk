package com.scwang.smartrefresh.header.internal.pathview;

import android.graphics.Matrix;
import android.graphics.Path;
import android.os.Build;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.scwang.smartrefresh.header.internal.pathview.do, reason: invalid class name */
/* loaded from: classes2.dex */
class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final String f20398do = "PathParser";

    /* renamed from: com.scwang.smartrefresh.header.internal.pathview.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public char f20399do;

        /* renamed from: if, reason: not valid java name */
        public float[] f20400if;

        public Cfor(char c, float[] fArr) {
            this.f20399do = c;
            this.f20400if = fArr;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: do, reason: not valid java name */
        private static void m24387do(Path path, float[] fArr, char c, char c2, float[] fArr2) {
            int i;
            int i2;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            char c3 = c2;
            float f9 = fArr[0];
            float f10 = fArr[1];
            float f11 = fArr[2];
            float f12 = fArr[3];
            float f13 = fArr[4];
            float f14 = fArr[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f13, f14);
                    f9 = f13;
                    f11 = f9;
                    f10 = f14;
                    f12 = f10;
                    i = 2;
                    break;
            }
            float f15 = f9;
            float f16 = f10;
            float f17 = f13;
            float f18 = f14;
            int i3 = 0;
            char c4 = c;
            while (i3 < fArr2.length) {
                if (c3 != 'A') {
                    if (c3 == 'C') {
                        i2 = i3;
                        int i4 = i2 + 2;
                        int i5 = i2 + 3;
                        int i6 = i2 + 4;
                        int i7 = i2 + 5;
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i4], fArr2[i5], fArr2[i6], fArr2[i7]);
                        f15 = fArr2[i6];
                        float f19 = fArr2[i7];
                        float f20 = fArr2[i4];
                        float f21 = fArr2[i5];
                        f16 = f19;
                        f12 = f21;
                        f11 = f20;
                    } else if (c3 == 'H') {
                        i2 = i3;
                        int i8 = i2 + 0;
                        path.lineTo(fArr2[i8], f16);
                        f15 = fArr2[i8];
                    } else if (c3 == 'Q') {
                        i2 = i3;
                        int i9 = i2 + 0;
                        int i10 = i2 + 1;
                        int i11 = i2 + 2;
                        int i12 = i2 + 3;
                        path.quadTo(fArr2[i9], fArr2[i10], fArr2[i11], fArr2[i12]);
                        float f22 = fArr2[i9];
                        float f23 = fArr2[i10];
                        f15 = fArr2[i11];
                        f16 = fArr2[i12];
                        f11 = f22;
                        f12 = f23;
                    } else if (c3 == 'V') {
                        i2 = i3;
                        int i13 = i2 + 0;
                        path.lineTo(f15, fArr2[i13]);
                        f16 = fArr2[i13];
                    } else if (c3 != 'a') {
                        if (c3 != 'c') {
                            if (c3 == 'h') {
                                int i14 = i3 + 0;
                                path.rLineTo(fArr2[i14], 0.0f);
                                f15 += fArr2[i14];
                            } else if (c3 != 'q') {
                                if (c3 == 'v') {
                                    int i15 = i3 + 0;
                                    path.rLineTo(0.0f, fArr2[i15]);
                                    f4 = fArr2[i15];
                                } else if (c3 == 'L') {
                                    int i16 = i3 + 0;
                                    int i17 = i3 + 1;
                                    path.lineTo(fArr2[i16], fArr2[i17]);
                                    f15 = fArr2[i16];
                                    f16 = fArr2[i17];
                                } else if (c3 == 'M') {
                                    int i18 = i3 + 0;
                                    f15 = fArr2[i18];
                                    int i19 = i3 + 1;
                                    f16 = fArr2[i19];
                                    if (i3 > 0) {
                                        path.lineTo(fArr2[i18], fArr2[i19]);
                                    } else {
                                        path.moveTo(fArr2[i18], fArr2[i19]);
                                        i2 = i3;
                                        f18 = f16;
                                        f17 = f15;
                                    }
                                } else if (c3 == 'S') {
                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                        f15 = (f15 * 2.0f) - f11;
                                        f16 = (f16 * 2.0f) - f12;
                                    }
                                    float f24 = f16;
                                    int i20 = i3 + 0;
                                    int i21 = i3 + 1;
                                    int i22 = i3 + 2;
                                    int i23 = i3 + 3;
                                    path.cubicTo(f15, f24, fArr2[i20], fArr2[i21], fArr2[i22], fArr2[i23]);
                                    f = fArr2[i20];
                                    f2 = fArr2[i21];
                                    f15 = fArr2[i22];
                                    f16 = fArr2[i23];
                                    f11 = f;
                                    f12 = f2;
                                } else if (c3 == 'T') {
                                    if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                        f15 = (f15 * 2.0f) - f11;
                                        f16 = (f16 * 2.0f) - f12;
                                    }
                                    int i24 = i3 + 0;
                                    int i25 = i3 + 1;
                                    path.quadTo(f15, f16, fArr2[i24], fArr2[i25]);
                                    float f25 = fArr2[i24];
                                    float f26 = fArr2[i25];
                                    i2 = i3;
                                    f12 = f16;
                                    f11 = f15;
                                    f15 = f25;
                                    f16 = f26;
                                } else if (c3 == 'l') {
                                    int i26 = i3 + 0;
                                    int i27 = i3 + 1;
                                    path.rLineTo(fArr2[i26], fArr2[i27]);
                                    f15 += fArr2[i26];
                                    f4 = fArr2[i27];
                                } else if (c3 == 'm') {
                                    int i28 = i3 + 0;
                                    f15 += fArr2[i28];
                                    int i29 = i3 + 1;
                                    f16 += fArr2[i29];
                                    if (i3 > 0) {
                                        path.rLineTo(fArr2[i28], fArr2[i29]);
                                    } else {
                                        path.rMoveTo(fArr2[i28], fArr2[i29]);
                                        i2 = i3;
                                        f18 = f16;
                                        f17 = f15;
                                    }
                                } else if (c3 == 's') {
                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                        float f27 = f15 - f11;
                                        f5 = f16 - f12;
                                        f6 = f27;
                                    } else {
                                        f6 = 0.0f;
                                        f5 = 0.0f;
                                    }
                                    int i30 = i3 + 0;
                                    int i31 = i3 + 1;
                                    int i32 = i3 + 2;
                                    int i33 = i3 + 3;
                                    path.rCubicTo(f6, f5, fArr2[i30], fArr2[i31], fArr2[i32], fArr2[i33]);
                                    f = fArr2[i30] + f15;
                                    f2 = fArr2[i31] + f16;
                                    f15 += fArr2[i32];
                                    f3 = fArr2[i33];
                                } else if (c3 == 't') {
                                    if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                        f7 = f15 - f11;
                                        f8 = f16 - f12;
                                    } else {
                                        f8 = 0.0f;
                                        f7 = 0.0f;
                                    }
                                    int i34 = i3 + 0;
                                    int i35 = i3 + 1;
                                    path.rQuadTo(f7, f8, fArr2[i34], fArr2[i35]);
                                    float f28 = f7 + f15;
                                    float f29 = f8 + f16;
                                    f15 += fArr2[i34];
                                    f16 += fArr2[i35];
                                    f12 = f29;
                                    f11 = f28;
                                }
                                f16 += f4;
                            } else {
                                int i36 = i3 + 0;
                                int i37 = i3 + 1;
                                int i38 = i3 + 2;
                                int i39 = i3 + 3;
                                path.rQuadTo(fArr2[i36], fArr2[i37], fArr2[i38], fArr2[i39]);
                                f = fArr2[i36] + f15;
                                f2 = fArr2[i37] + f16;
                                f15 += fArr2[i38];
                                f3 = fArr2[i39];
                            }
                            i2 = i3;
                        } else {
                            int i40 = i3 + 2;
                            int i41 = i3 + 3;
                            int i42 = i3 + 4;
                            int i43 = i3 + 5;
                            path.rCubicTo(fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i40], fArr2[i41], fArr2[i42], fArr2[i43]);
                            f = fArr2[i40] + f15;
                            f2 = fArr2[i41] + f16;
                            f15 += fArr2[i42];
                            f3 = fArr2[i43];
                        }
                        f16 += f3;
                        f11 = f;
                        f12 = f2;
                        i2 = i3;
                    } else {
                        int i44 = i3 + 5;
                        int i45 = i3 + 6;
                        i2 = i3;
                        m24388for(path, f15, f16, fArr2[i44] + f15, fArr2[i45] + f16, fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i3 + 2], fArr2[i3 + 3] != 0.0f, fArr2[i3 + 4] != 0.0f);
                        f15 += fArr2[i44];
                        f16 += fArr2[i45];
                    }
                    i3 = i2 + i;
                    c4 = c2;
                    c3 = c4;
                } else {
                    i2 = i3;
                    int i46 = i2 + 5;
                    int i47 = i2 + 6;
                    m24388for(path, f15, f16, fArr2[i46], fArr2[i47], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                    f15 = fArr2[i46];
                    f16 = fArr2[i47];
                }
                f12 = f16;
                f11 = f15;
                i3 = i2 + i;
                c4 = c2;
                c3 = c4;
            }
            fArr[0] = f15;
            fArr[1] = f16;
            fArr[2] = f11;
            fArr[3] = f12;
            fArr[4] = f17;
            fArr[5] = f18;
        }

        /* renamed from: for, reason: not valid java name */
        private static void m24388for(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d3 = f;
            Double.isNaN(d3);
            double d4 = d3 * dCos;
            double d5 = f2;
            Double.isNaN(d5);
            double d6 = f5;
            Double.isNaN(d6);
            double d7 = (d4 + (d5 * dSin)) / d6;
            double d8 = -f;
            Double.isNaN(d8);
            Double.isNaN(d5);
            double d9 = (d8 * dSin) + (d5 * dCos);
            double d10 = f6;
            Double.isNaN(d10);
            double d11 = d9 / d10;
            double d12 = f3;
            Double.isNaN(d12);
            double d13 = f4;
            Double.isNaN(d13);
            Double.isNaN(d6);
            double d14 = ((d12 * dCos) + (d13 * dSin)) / d6;
            double d15 = -f3;
            Double.isNaN(d15);
            Double.isNaN(d13);
            Double.isNaN(d10);
            double d16 = ((d15 * dSin) + (d13 * dCos)) / d10;
            double d17 = d7 - d14;
            double d18 = d11 - d16;
            double d19 = (d7 + d14) / 2.0d;
            double d20 = (d11 + d16) / 2.0d;
            double d21 = (d17 * d17) + (d18 * d18);
            if (d21 == 0.0d) {
                return;
            }
            double d22 = (1.0d / d21) - 0.25d;
            if (d22 < 0.0d) {
                float fSqrt = (float) (Math.sqrt(d21) / 1.99999d);
                m24388for(path, f, f2, f3, f4, f5 * fSqrt, f6 * fSqrt, f7, z, z2);
                return;
            }
            double dSqrt = Math.sqrt(d22);
            double d23 = d17 * dSqrt;
            double d24 = dSqrt * d18;
            if (z == z2) {
                d = d19 - d24;
                d2 = d20 + d23;
            } else {
                d = d19 + d24;
                d2 = d20 - d23;
            }
            double dAtan2 = Math.atan2(d11 - d2, d7 - d);
            double dAtan22 = Math.atan2(d16 - d2, d14 - d) - dAtan2;
            if (z2 != (dAtan22 >= 0.0d)) {
                dAtan22 = dAtan22 > 0.0d ? dAtan22 - 6.283185307179586d : dAtan22 + 6.283185307179586d;
            }
            Double.isNaN(d6);
            double d25 = d * d6;
            Double.isNaN(d10);
            double d26 = d2 * d10;
            m24389if(path, (d25 * dCos) - (d26 * dSin), (d25 * dSin) + (d26 * dCos), d6, d10, d3, d5, radians, dAtan2, dAtan22);
        }

        /* renamed from: if, reason: not valid java name */
        private static void m24389if(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            double d10 = d3;
            int iCeil = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
            double dCos = Math.cos(d7);
            double dSin = Math.sin(d7);
            double dCos2 = Math.cos(d8);
            double dSin2 = Math.sin(d8);
            double d11 = -d10;
            double d12 = d11 * dCos;
            double d13 = d4 * dSin;
            double d14 = (d12 * dSin2) - (d13 * dCos2);
            double d15 = d11 * dSin;
            double d16 = d4 * dCos;
            double d17 = (dSin2 * d15) + (dCos2 * d16);
            double d18 = iCeil;
            Double.isNaN(d18);
            double d19 = d9 / d18;
            double d20 = d8;
            double d21 = d17;
            double d22 = d14;
            int i = 0;
            double d23 = d5;
            double d24 = d6;
            while (i < iCeil) {
                double d25 = d20 + d19;
                double dSin3 = Math.sin(d25);
                double dCos3 = Math.cos(d25);
                double d26 = (d + ((d10 * dCos) * dCos3)) - (d13 * dSin3);
                double d27 = d2 + (d10 * dSin * dCos3) + (d16 * dSin3);
                double d28 = (d12 * dSin3) - (d13 * dCos3);
                double d29 = (dSin3 * d15) + (dCos3 * d16);
                double d30 = d25 - d20;
                double dTan = Math.tan(d30 / 2.0d);
                double dSin4 = (Math.sin(d30) * (Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d)) / 3.0d;
                double d31 = d23 + (d22 * dSin4);
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d31, (float) (d24 + (d21 * dSin4)), (float) (d26 - (dSin4 * d28)), (float) (d27 - (dSin4 * d29)), (float) d26, (float) d27);
                i++;
                d19 = d19;
                dSin = dSin;
                d23 = d26;
                d15 = d15;
                dCos = dCos;
                d20 = d25;
                d21 = d29;
                d22 = d28;
                iCeil = iCeil;
                d24 = d27;
                d10 = d3;
            }
        }

        /* renamed from: new, reason: not valid java name */
        public static void m24390new(Cfor[] cforArr, Path path) {
            float[] fArr = new float[6];
            char c = 'm';
            for (Cfor cfor : cforArr) {
                m24387do(path, fArr, c, cfor.f20399do, cfor.f20400if);
                c = cfor.f20399do;
            }
        }
    }

    /* renamed from: com.scwang.smartrefresh.header.internal.pathview.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public int f20401do;

        /* renamed from: if, reason: not valid java name */
        public boolean f20402if;

        private Cif() {
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static void m24377break(float f, float f2, Cfor[] cforArr) {
        for (Cfor cfor : cforArr) {
            m24385this(f, f2, cfor.f20399do, cfor.f20400if);
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static float[] m24378case(String str) {
        int i = 1;
        if ((str.charAt(0) == 'z') || (str.charAt(0) == 'Z')) {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            Cif cif = new Cif();
            int length = str.length();
            int i2 = 0;
            while (i < length) {
                m24386try(str, i, cif);
                int i3 = cif.f20401do;
                if (i < i3) {
                    fArr[i2] = Float.parseFloat(str.substring(i, i3));
                    i2++;
                }
                i = cif.f20402if ? i3 : i3 + 1;
            }
            return m24383if(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static void m24379do(List<Cfor> list, char c, float[] fArr) {
        list.add(new Cfor(c, fArr));
    }

    /* renamed from: else, reason: not valid java name */
    private static int m24380else(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cfor[] m24381for(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int iM24380else = m24380else(str, i);
            String strTrim = str.substring(i2, iM24380else).trim();
            if (strTrim.length() > 0) {
                m24379do(arrayList, strTrim.charAt(0), m24378case(strTrim));
            }
            i2 = iM24380else;
            i = iM24380else + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            m24379do(arrayList, str.charAt(i2), new float[0]);
        }
        return (Cfor[]) arrayList.toArray(new Cfor[0]);
    }

    /* renamed from: goto, reason: not valid java name */
    public static List<Path> m24382goto(float f, float f2, List<Path> list, List<String> list2) {
        Matrix matrix = new Matrix();
        matrix.setScale(f, f2);
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT > 16) {
            for (Path path : list) {
                Path path2 = new Path();
                path.transform(matrix, path2);
                arrayList.add(path2);
            }
        } else {
            for (String str : list2) {
                Path path3 = new Path();
                Cfor[] cforArrM24381for = m24381for(str);
                m24377break(f, f2, cforArrM24381for);
                Cfor.m24390new(cforArrM24381for, path3);
                arrayList.add(path3);
            }
        }
        return arrayList;
    }

    /* renamed from: if, reason: not valid java name */
    public static float[] m24383if(@NonNull float[] fArr, int i, int i2) {
        int i3 = i2 - i;
        int iMin = Math.min(i3, fArr.length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, iMin);
        return fArr2;
    }

    /* renamed from: new, reason: not valid java name */
    public static Path m24384new(String str) {
        Path path = new Path();
        Cfor[] cforArrM24381for = m24381for(str);
        if (cforArrM24381for == null) {
            return null;
        }
        try {
            Cfor.m24390new(cforArrM24381for, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a7  */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m24385this(float f, float f2, char c, float[] fArr) {
        char c2 = 'H';
        int i = 2;
        if (c == 'A') {
            i = 7;
        } else if (c == 'C') {
            i = 6;
        } else if (c == 'H') {
            i = 1;
        } else if (c == 'Q') {
            i = 4;
        } else if (c != 'V') {
            if (c != 'a') {
                if (c != 'c') {
                    if (c != 'h') {
                        if (c != 'q') {
                            if (c != 'v') {
                                if (c != 'L' && c != 'M' && (c == 'S' || (c != 'T' && c != 'l' && c != 'm' && c == 's'))) {
                                }
                            }
                        }
                    }
                }
            }
        }
        int i2 = 0;
        while (i2 < fArr.length) {
            if (c == 'A') {
                fArr[i2] = fArr[i2] * f;
                int i3 = i2 + 1;
                fArr[i3] = fArr[i3] * f2;
                int i4 = i2 + 5;
                fArr[i4] = fArr[i4] * f;
                int i5 = i2 + 6;
                fArr[i5] = fArr[i5] * f2;
            } else if (c == 'C') {
                fArr[i2] = fArr[i2] * f;
                int i6 = i2 + 1;
                fArr[i6] = fArr[i6] * f2;
                int i7 = i2 + 2;
                fArr[i7] = fArr[i7] * f;
                int i8 = i2 + 3;
                fArr[i8] = fArr[i8] * f2;
                int i9 = i2 + 4;
                fArr[i9] = fArr[i9] * f;
                int i10 = i2 + 5;
                fArr[i10] = fArr[i10] * f2;
            } else if (c == c2) {
                fArr[i2] = fArr[i2] * f;
            } else if (c == 'Q') {
                fArr[i2] = fArr[i2] * f;
                int i11 = i2 + 1;
                fArr[i11] = fArr[i11] * f2;
                int i12 = i2 + 2;
                fArr[i12] = fArr[i12] * f;
                int i13 = i2 + 3;
                fArr[i13] = fArr[i13] * f2;
                fArr[i2] = fArr[i2] * f;
                int i32 = i2 + 1;
                fArr[i32] = fArr[i32] * f2;
                int i42 = i2 + 5;
                fArr[i42] = fArr[i42] * f;
                int i52 = i2 + 6;
                fArr[i52] = fArr[i52] * f2;
            } else if (c == 'V') {
                fArr[i2] = fArr[i2] * f2;
            } else {
                if (c != 'a') {
                    if (c != 'c') {
                        if (c != 'h') {
                            if (c != 'q') {
                                if (c != 'v') {
                                    if (c != 'L' && c != 'M') {
                                        if (c != 'S') {
                                            if (c != 'T' && c != 'l' && c != 'm') {
                                                if (c != 's') {
                                                    if (c != 't') {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    fArr[i2] = fArr[i2] * f;
                                    int i14 = i2 + 1;
                                    fArr[i14] = fArr[i14] * f2;
                                }
                            }
                            fArr[i2] = fArr[i2] * f;
                            int i112 = i2 + 1;
                            fArr[i112] = fArr[i112] * f2;
                            int i122 = i2 + 2;
                            fArr[i122] = fArr[i122] * f;
                            int i132 = i2 + 3;
                            fArr[i132] = fArr[i132] * f2;
                            fArr[i2] = fArr[i2] * f;
                            int i322 = i2 + 1;
                            fArr[i322] = fArr[i322] * f2;
                            int i422 = i2 + 5;
                            fArr[i422] = fArr[i422] * f;
                            int i522 = i2 + 6;
                            fArr[i522] = fArr[i522] * f2;
                        }
                    }
                }
                fArr[i2] = fArr[i2] * f;
                int i3222 = i2 + 1;
                fArr[i3222] = fArr[i3222] * f2;
                int i4222 = i2 + 5;
                fArr[i4222] = fArr[i4222] * f;
                int i5222 = i2 + 6;
                fArr[i5222] = fArr[i5222] * f2;
            }
            i2 += i;
            c2 = 'H';
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003a A[LOOP:0: B:3:0x0007->B:24:0x003a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d A[SYNTHETIC] */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m24386try(String str, int i, Cif cif) {
        cif.f20402if = false;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = i; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == ' ') {
                z = false;
                z3 = true;
                if (z3) {
                }
            } else {
                if (cCharAt != 'E' && cCharAt != 'e') {
                    switch (cCharAt) {
                        case ',':
                            break;
                        case '-':
                            if (i2 != i && !z) {
                                cif.f20402if = true;
                                z = false;
                                z3 = true;
                                break;
                            }
                            z = false;
                            break;
                        case '.':
                            if (z2) {
                                cif.f20402if = true;
                                z = false;
                                z3 = true;
                                break;
                            } else {
                                z = false;
                                z2 = true;
                                break;
                            }
                        default:
                            z = false;
                            break;
                    }
                } else {
                    z = true;
                }
                if (z3) {
                }
            }
            cif.f20401do = i2;
        }
        cif.f20401do = i2;
    }
}
