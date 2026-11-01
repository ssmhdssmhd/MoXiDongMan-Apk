package com.google.android.material.transition.platform;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.transition.platform.Cgoto;

@RequiresApi(21)
/* renamed from: com.google.android.material.transition.platform.else, reason: invalid class name */
/* loaded from: classes.dex */
class Celse {

    /* renamed from: try, reason: not valid java name */
    private ShapeAppearanceModel f13466try;

    /* renamed from: do, reason: not valid java name */
    private final Path f13462do = new Path();

    /* renamed from: if, reason: not valid java name */
    private final Path f13464if = new Path();

    /* renamed from: for, reason: not valid java name */
    private final Path f13463for = new Path();

    /* renamed from: new, reason: not valid java name */
    private final ShapeAppearancePathProvider f13465new = ShapeAppearancePathProvider.m14030catch();

    /* renamed from: do, reason: not valid java name */
    public void m14859do(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f13462do);
        } else {
            canvas.clipPath(this.f13464if);
            canvas.clipPath(this.f13463for, Region.Op.UNION);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public ShapeAppearanceModel m14860for() {
        return this.f13466try;
    }

    /* renamed from: if, reason: not valid java name */
    public void m14861if(float f, ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, RectF rectF3, Cgoto.Ctry ctry) {
        ShapeAppearanceModel shapeAppearanceModelM14824import = TransitionUtils.m14824import(shapeAppearanceModel, shapeAppearanceModel2, rectF, rectF3, ctry.m14941new(), ctry.m14940for(), f);
        this.f13466try = shapeAppearanceModelM14824import;
        this.f13465new.m14041new(shapeAppearanceModelM14824import, 1.0f, rectF2, this.f13464if);
        this.f13465new.m14041new(this.f13466try, 1.0f, rectF3, this.f13463for);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f13462do.op(this.f13464if, this.f13463for, Path.Op.UNION);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Path m14862new() {
        return this.f13462do;
    }
}
