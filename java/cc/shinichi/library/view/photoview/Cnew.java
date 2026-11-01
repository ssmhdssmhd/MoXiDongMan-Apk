package cc.shinichi.library.view.photoview;

import android.widget.ImageView;

/* renamed from: cc.shinichi.library.view.photoview.new, reason: invalid class name */
/* loaded from: classes.dex */
class Cnew {

    /* renamed from: cc.shinichi.library.view.photoview.new$do, reason: invalid class name */
    public static /* synthetic */ class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f9020do;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f9020do = iArr;
            try {
                iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m10780do(float f, float f2, float f3) {
        if (f >= f2) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f2 >= f3) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m10781for(ImageView imageView) {
        return imageView.getDrawable() != null;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m10782if(int i) {
        return (i & 65280) >> 8;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m10783new(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        if (Cdo.f9020do[scaleType.ordinal()] != 1) {
            return true;
        }
        throw new IllegalStateException("Matrix scale type is not supported");
    }
}
