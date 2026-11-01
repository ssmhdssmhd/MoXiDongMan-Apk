package com.luck.picture.lib.photoview;

import android.widget.ImageView;

/* renamed from: com.luck.picture.lib.photoview.new, reason: invalid class name */
/* loaded from: classes2.dex */
class Cnew {

    /* renamed from: com.luck.picture.lib.photoview.new$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18849do;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f18849do = iArr;
            try {
                iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m23249do(float f, float f2, float f3) {
        if (f >= f2) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f2 >= f3) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m23250for(ImageView imageView) {
        return imageView.getDrawable() != null;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m23251if(int i) {
        return (i & 65280) >> 8;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m23252new(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        if (Cdo.f18849do[scaleType.ordinal()] != 1) {
            return true;
        }
        throw new IllegalStateException("Matrix scale type is not supported");
    }
}
