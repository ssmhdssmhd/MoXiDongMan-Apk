package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.transition.MaterialContainerTransform;

/* renamed from: com.google.android.material.transition.else, reason: invalid class name */
/* loaded from: classes.dex */
class Celse {

    /* renamed from: try, reason: not valid java name */
    private ShapeAppearanceModel f13383try;

    /* renamed from: do, reason: not valid java name */
    private final Path f13379do = new Path();

    /* renamed from: if, reason: not valid java name */
    private final Path f13381if = new Path();

    /* renamed from: for, reason: not valid java name */
    private final Path f13380for = new Path();

    /* renamed from: new, reason: not valid java name */
    private final ShapeAppearancePathProvider f13382new = ShapeAppearancePathProvider.m14030catch();

    /* renamed from: do, reason: not valid java name */
    public void m14780do(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f13379do);
        } else {
            canvas.clipPath(this.f13381if);
            canvas.clipPath(this.f13380for, Region.Op.UNION);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public ShapeAppearanceModel m14781for() {
        return this.f13383try;
    }

    /* renamed from: if, reason: not valid java name */
    public void m14782if(float f, ShapeAppearanceModel shapeAppearanceModel, ShapeAppearanceModel shapeAppearanceModel2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.Ctry ctry) {
        ShapeAppearanceModel shapeAppearanceModelM14755import = TransitionUtils.m14755import(shapeAppearanceModel, shapeAppearanceModel2, rectF, rectF3, ctry.m14720new(), ctry.m14719for(), f);
        this.f13383try = shapeAppearanceModelM14755import;
        this.f13382new.m14041new(shapeAppearanceModelM14755import, 1.0f, rectF2, this.f13381if);
        this.f13382new.m14041new(this.f13383try, 1.0f, rectF3, this.f13380for);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f13379do.op(this.f13381if, this.f13380for, Path.Op.UNION);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Path m14783new() {
        return this.f13379do;
    }
}
