package com.google.zxing;

import android.support.v4.aa1;
import android.support.v4.ig2;
import android.support.v4.n5;
import android.support.v4.rm;
import android.support.v4.vw;
import android.support.v4.z8;
import com.google.zxing.oned.Ccatch;
import com.google.zxing.oned.Cextends;
import com.google.zxing.oned.Cfinal;
import com.google.zxing.oned.Cfor;
import com.google.zxing.oned.Cpublic;
import com.google.zxing.oned.Cthis;
import com.google.zxing.oned.Ctry;
import com.google.zxing.qrcode.Cif;
import java.util.Map;

/* renamed from: com.google.zxing.else, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Celse implements Writer {

    /* renamed from: com.google.zxing.else$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f17541do;

        static {
            int[] iArr = new int[com.google.zxing.Cdo.values().length];
            f17541do = iArr;
            try {
                iArr[com.google.zxing.Cdo.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17541do[com.google.zxing.Cdo.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17541do[com.google.zxing.Cdo.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17541do[com.google.zxing.Cdo.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17541do[com.google.zxing.Cdo.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17541do[com.google.zxing.Cdo.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17541do[com.google.zxing.Cdo.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17541do[com.google.zxing.Cdo.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17541do[com.google.zxing.Cdo.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17541do[com.google.zxing.Cdo.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17541do[com.google.zxing.Cdo.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17541do[com.google.zxing.Cdo.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17541do[com.google.zxing.Cdo.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, com.google.zxing.Cdo cdo, int i, int i2) throws ig2 {
        return encode(str, cdo, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public z8 encode(String str, com.google.zxing.Cdo cdo, int i, int i2, Map<Ctry, ?> map) throws ig2 {
        Writer ccatch;
        switch (Cdo.f17541do[cdo.ordinal()]) {
            case 1:
                ccatch = new Ccatch();
                break;
            case 2:
                ccatch = new Cextends();
                break;
            case 3:
                ccatch = new Cthis();
                break;
            case 4:
                ccatch = new Cpublic();
                break;
            case 5:
                ccatch = new Cif();
                break;
            case 6:
                ccatch = new Ctry();
                break;
            case 7:
                ccatch = new com.google.zxing.oned.Celse();
                break;
            case 8:
                ccatch = new Cfor();
                break;
            case 9:
                ccatch = new Cfinal();
                break;
            case 10:
                ccatch = new aa1();
                break;
            case 11:
                ccatch = new rm();
                break;
            case 12:
                ccatch = new vw();
                break;
            case 13:
                ccatch = new n5();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(cdo)));
        }
        return ccatch.encode(str, cdo, i, i2, map);
    }
}
