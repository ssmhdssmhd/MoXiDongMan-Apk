package android.support.v4;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes.dex */
public class tx0 {
    private tx0() {
    }

    /* renamed from: case, reason: not valid java name */
    public static void m8140case(@NonNull View view, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        if (materialShapeDrawable.m()) {
            materialShapeDrawable.D(ViewUtils.m13623this(view));
        }
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static yr m8141do(int i) {
        return i != 0 ? i != 1 ? m8143if() : new it() : new ro1();
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public static a60 m8142for() {
        return new a60();
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static yr m8143if() {
        return new ro1();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m8144new(@NonNull View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).y(f);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m8145try(@NonNull View view) {
        Drawable background = view.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            m8140case(view, (MaterialShapeDrawable) background);
        }
    }
}
