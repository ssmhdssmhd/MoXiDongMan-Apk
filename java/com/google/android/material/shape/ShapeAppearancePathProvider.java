package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.a60;
import android.support.v4.yr;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

/* loaded from: classes.dex */
public class ShapeAppearancePathProvider {

    /* renamed from: do, reason: not valid java name */
    private final com.google.android.material.shape.Cif[] f12573do = new com.google.android.material.shape.Cif[4];

    /* renamed from: if, reason: not valid java name */
    private final Matrix[] f12577if = new Matrix[4];

    /* renamed from: for, reason: not valid java name */
    private final Matrix[] f12575for = new Matrix[4];

    /* renamed from: new, reason: not valid java name */
    private final PointF f12578new = new PointF();

    /* renamed from: try, reason: not valid java name */
    private final Path f12580try = new Path();

    /* renamed from: case, reason: not valid java name */
    private final Path f12570case = new Path();

    /* renamed from: else, reason: not valid java name */
    private final com.google.android.material.shape.Cif f12574else = new com.google.android.material.shape.Cif();

    /* renamed from: goto, reason: not valid java name */
    private final float[] f12576goto = new float[2];

    /* renamed from: this, reason: not valid java name */
    private final float[] f12579this = new float[2];

    /* renamed from: break, reason: not valid java name */
    private final Path f12569break = new Path();

    /* renamed from: catch, reason: not valid java name */
    private final Path f12571catch = new Path();

    /* renamed from: class, reason: not valid java name */
    private boolean f12572class = true;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface PathListener {
        void onCornerPathCreated(com.google.android.material.shape.Cif cif, Matrix matrix, int i);

        void onEdgePathCreated(com.google.android.material.shape.Cif cif, Matrix matrix, int i);
    }

    /* renamed from: com.google.android.material.shape.ShapeAppearancePathProvider$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final ShapeAppearancePathProvider f12581do = new ShapeAppearancePathProvider();

        private Cdo() {
        }
    }

    /* renamed from: com.google.android.material.shape.ShapeAppearancePathProvider$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        public final ShapeAppearanceModel f12582do;

        /* renamed from: for, reason: not valid java name */
        @NonNull
        public final RectF f12583for;

        /* renamed from: if, reason: not valid java name */
        @NonNull
        public final Path f12584if;

        /* renamed from: new, reason: not valid java name */
        @Nullable
        public final PathListener f12585new;

        /* renamed from: try, reason: not valid java name */
        public final float f12586try;

        public Cif(@NonNull ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @Nullable PathListener pathListener, Path path) {
            this.f12585new = pathListener;
            this.f12582do = shapeAppearanceModel;
            this.f12586try = f;
            this.f12583for = rectF;
            this.f12584if = path;
        }
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.f12573do[i] = new com.google.android.material.shape.Cif();
            this.f12577if[i] = new Matrix();
            this.f12575for[i] = new Matrix();
        }
    }

    /* renamed from: break, reason: not valid java name */
    private a60 m14028break(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.m13983super() : shapeAppearanceModel.m13986throw() : shapeAppearanceModel.m13976final() : shapeAppearanceModel.m13977goto();
    }

    /* renamed from: case, reason: not valid java name */
    private void m14029case(int i, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    /* renamed from: catch, reason: not valid java name */
    public static ShapeAppearancePathProvider m14030catch() {
        return Cdo.f12581do;
    }

    @RequiresApi(19)
    /* renamed from: class, reason: not valid java name */
    private boolean m14031class(Path path, int i) {
        this.f12571catch.reset();
        this.f12573do[i].m14066new(this.f12577if[i], this.f12571catch);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f12571catch.computeBounds(rectF, true);
        path.op(this.f12571catch, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    /* renamed from: const, reason: not valid java name */
    private void m14032const(@NonNull Cif cif, int i) {
        m14036goto(i, cif.f12582do).m9932for(this.f12573do[i], 90.0f, cif.f12586try, cif.f12583for, m14034else(i, cif.f12582do));
        float fM14033do = m14033do(i);
        this.f12577if[i].reset();
        m14029case(i, cif.f12583for, this.f12578new);
        Matrix matrix = this.f12577if[i];
        PointF pointF = this.f12578new;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f12577if[i].preRotate(fM14033do);
    }

    /* renamed from: do, reason: not valid java name */
    private float m14033do(int i) {
        return (i + 1) * 90;
    }

    /* renamed from: else, reason: not valid java name */
    private CornerSize m14034else(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.m13980public() : shapeAppearanceModel.m13978import() : shapeAppearanceModel.m13972break() : shapeAppearanceModel.m13974class();
    }

    /* renamed from: for, reason: not valid java name */
    private void m14035for(@NonNull Cif cif, int i) {
        int i2 = (i + 1) % 4;
        this.f12576goto[0] = this.f12573do[i].m14058break();
        this.f12576goto[1] = this.f12573do[i].m14060catch();
        this.f12577if[i].mapPoints(this.f12576goto);
        this.f12579this[0] = this.f12573do[i2].m14061class();
        this.f12579this[1] = this.f12573do[i2].m14062const();
        this.f12577if[i2].mapPoints(this.f12579this);
        float f = this.f12576goto[0];
        float[] fArr = this.f12579this;
        float fMax = Math.max(((float) Math.hypot(f - fArr[0], r1[1] - fArr[1])) - 0.001f, 0.0f);
        float fM14039this = m14039this(cif.f12583for, i);
        this.f12574else.m14068throw(0.0f, 0.0f);
        a60 a60VarM14028break = m14028break(i, cif.f12582do);
        a60VarM14028break.mo51if(fMax, fM14039this, cif.f12586try, this.f12574else);
        this.f12569break.reset();
        this.f12574else.m14066new(this.f12575for[i], this.f12569break);
        if (this.f12572class && Build.VERSION.SDK_INT >= 19 && (a60VarM14028break.mo49do() || m14031class(this.f12569break, i) || m14031class(this.f12569break, i2))) {
            Path path = this.f12569break;
            path.op(path, this.f12570case, Path.Op.DIFFERENCE);
            this.f12576goto[0] = this.f12574else.m14061class();
            this.f12576goto[1] = this.f12574else.m14062const();
            this.f12575for[i].mapPoints(this.f12576goto);
            Path path2 = this.f12580try;
            float[] fArr2 = this.f12576goto;
            path2.moveTo(fArr2[0], fArr2[1]);
            this.f12574else.m14066new(this.f12575for[i], this.f12580try);
        } else {
            this.f12574else.m14066new(this.f12575for[i], cif.f12584if);
        }
        PathListener pathListener = cif.f12585new;
        if (pathListener != null) {
            pathListener.onEdgePathCreated(this.f12574else, this.f12575for[i], i);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private yr m14036goto(int i, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        return i != 1 ? i != 2 ? i != 3 ? shapeAppearanceModel.m13979native() : shapeAppearanceModel.m13988while() : shapeAppearanceModel.m13985this() : shapeAppearanceModel.m13973catch();
    }

    /* renamed from: if, reason: not valid java name */
    private void m14037if(@NonNull Cif cif, int i) {
        this.f12576goto[0] = this.f12573do[i].m14061class();
        this.f12576goto[1] = this.f12573do[i].m14062const();
        this.f12577if[i].mapPoints(this.f12576goto);
        if (i == 0) {
            Path path = cif.f12584if;
            float[] fArr = this.f12576goto;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cif.f12584if;
            float[] fArr2 = this.f12576goto;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f12573do[i].m14066new(this.f12577if[i], cif.f12584if);
        PathListener pathListener = cif.f12585new;
        if (pathListener != null) {
            pathListener.onCornerPathCreated(this.f12573do[i], this.f12577if[i], i);
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m14038super(int i) {
        this.f12576goto[0] = this.f12573do[i].m14058break();
        this.f12576goto[1] = this.f12573do[i].m14060catch();
        this.f12577if[i].mapPoints(this.f12576goto);
        float fM14033do = m14033do(i);
        this.f12575for[i].reset();
        Matrix matrix = this.f12575for[i];
        float[] fArr = this.f12576goto;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f12575for[i].preRotate(fM14033do);
    }

    /* renamed from: this, reason: not valid java name */
    private float m14039this(@NonNull RectF rectF, int i) {
        float[] fArr = this.f12576goto;
        com.google.android.material.shape.Cif[] cifArr = this.f12573do;
        fArr[0] = cifArr[i].f12599for;
        fArr[1] = cifArr[i].f12602new;
        this.f12577if[i].mapPoints(fArr);
        return (i == 1 || i == 3) ? Math.abs(rectF.centerX() - this.f12576goto[0]) : Math.abs(rectF.centerY() - this.f12576goto[1]);
    }

    /* renamed from: final, reason: not valid java name */
    public void m14040final(boolean z) {
        this.f12572class = z;
    }

    /* renamed from: new, reason: not valid java name */
    public void m14041new(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, @NonNull Path path) {
        m14042try(shapeAppearanceModel, f, rectF, null, path);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: try, reason: not valid java name */
    public void m14042try(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, @NonNull Path path) {
        path.rewind();
        this.f12580try.rewind();
        this.f12570case.rewind();
        this.f12570case.addRect(rectF, Path.Direction.CW);
        Cif cif = new Cif(shapeAppearanceModel, f, rectF, pathListener, path);
        for (int i = 0; i < 4; i++) {
            m14032const(cif, i);
            m14038super(i);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            m14037if(cif, i2);
            m14035for(cif, i2);
        }
        path.close();
        this.f12580try.close();
        if (Build.VERSION.SDK_INT < 19 || this.f12580try.isEmpty()) {
            return;
        }
        path.op(this.f12580try, Path.Op.UNION);
    }
}
