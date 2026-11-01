package com.google.zxing.qrcode.decoder;

import android.support.v4.z8;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.google.zxing.qrcode.decoder.for, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cfor {
    public static final Cfor DATA_MASK_000;
    public static final Cfor DATA_MASK_001;
    public static final Cfor DATA_MASK_010;
    public static final Cfor DATA_MASK_011;
    public static final Cfor DATA_MASK_100;
    public static final Cfor DATA_MASK_101;
    public static final Cfor DATA_MASK_110;
    public static final Cfor DATA_MASK_111;

    /* renamed from: do, reason: not valid java name */
    private static final /* synthetic */ Cfor[] f17899do;

    /* renamed from: com.google.zxing.qrcode.decoder.for$do, reason: invalid class name */
    public enum Cdo extends Cfor {
        public Cdo(String str, int i) {
            super(str, i, null);
        }

        @Override // com.google.zxing.qrcode.decoder.Cfor
        public boolean isMasked(int i, int i2) {
            return ((i + i2) & 1) == 0;
        }
    }

    static {
        Cdo cdo = new Cdo("DATA_MASK_000", 0);
        DATA_MASK_000 = cdo;
        Cfor cfor = new Cfor("DATA_MASK_001", 1) { // from class: com.google.zxing.qrcode.decoder.for.if
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.zxing.qrcode.decoder.Cfor
            public boolean isMasked(int i, int i2) {
                return (i & 1) == 0;
            }
        };
        DATA_MASK_001 = cfor;
        Cfor cfor2 = new Cfor("DATA_MASK_010", 2) { // from class: com.google.zxing.qrcode.decoder.for.for
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.zxing.qrcode.decoder.Cfor
            public boolean isMasked(int i, int i2) {
                return i2 % 3 == 0;
            }
        };
        DATA_MASK_010 = cfor2;
        Cfor cfor3 = new Cfor("DATA_MASK_011", 3) { // from class: com.google.zxing.qrcode.decoder.for.new
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.zxing.qrcode.decoder.Cfor
            public boolean isMasked(int i, int i2) {
                return (i + i2) % 3 == 0;
            }
        };
        DATA_MASK_011 = cfor3;
        Cfor cfor4 = new Cfor("DATA_MASK_100", 4) { // from class: com.google.zxing.qrcode.decoder.for.try
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.zxing.qrcode.decoder.Cfor
            public boolean isMasked(int i, int i2) {
                return (((i / 2) + (i2 / 3)) & 1) == 0;
            }
        };
        DATA_MASK_100 = cfor4;
        Cfor cfor5 = new Cfor("DATA_MASK_101", 5) { // from class: com.google.zxing.qrcode.decoder.for.case
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.zxing.qrcode.decoder.Cfor
            public boolean isMasked(int i, int i2) {
                return (i * i2) % 6 == 0;
            }
        };
        DATA_MASK_101 = cfor5;
        Cfor cfor6 = new Cfor("DATA_MASK_110", 6) { // from class: com.google.zxing.qrcode.decoder.for.else
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.zxing.qrcode.decoder.Cfor
            public boolean isMasked(int i, int i2) {
                return (i * i2) % 6 < 3;
            }
        };
        DATA_MASK_110 = cfor6;
        Cfor cfor7 = new Cfor("DATA_MASK_111", 7) { // from class: com.google.zxing.qrcode.decoder.for.goto
            {
                Cdo cdo2 = null;
            }

            @Override // com.google.zxing.qrcode.decoder.Cfor
            public boolean isMasked(int i, int i2) {
                return (((i + i2) + ((i * i2) % 3)) & 1) == 0;
            }
        };
        DATA_MASK_111 = cfor7;
        f17899do = new Cfor[]{cdo, cfor, cfor2, cfor3, cfor4, cfor5, cfor6, cfor7};
    }

    private Cfor(String str, int i) {
    }

    public static Cfor valueOf(String str) {
        return (Cfor) Enum.valueOf(Cfor.class, str);
    }

    public static Cfor[] values() {
        return (Cfor[]) f17899do.clone();
    }

    public abstract boolean isMasked(int i, int i2);

    public final void unmaskBitMatrix(z8 z8Var, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            for (int i3 = 0; i3 < i; i3++) {
                if (isMasked(i2, i3)) {
                    z8Var.m10098new(i3, i2);
                }
            }
        }
    }

    public /* synthetic */ Cfor(String str, int i, Cdo cdo) {
        this(str, i);
    }
}
