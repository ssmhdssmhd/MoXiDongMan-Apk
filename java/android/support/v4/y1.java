package android.support.v4;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class y1 extends Animation {

    /* renamed from: import, reason: not valid java name */
    private static final WeakHashMap<View, y1> f8084import;

    /* renamed from: while, reason: not valid java name */
    public static final boolean f8085while;

    /* renamed from: break, reason: not valid java name */
    private float f8086break;

    /* renamed from: case, reason: not valid java name */
    private boolean f8087case;

    /* renamed from: catch, reason: not valid java name */
    private float f8088catch;

    /* renamed from: class, reason: not valid java name */
    private float f8089class;

    /* renamed from: do, reason: not valid java name */
    private final WeakReference<View> f8091do;

    /* renamed from: goto, reason: not valid java name */
    private float f8095goto;

    /* renamed from: super, reason: not valid java name */
    private float f8098super;

    /* renamed from: this, reason: not valid java name */
    private float f8099this;

    /* renamed from: throw, reason: not valid java name */
    private float f8100throw;

    /* renamed from: if, reason: not valid java name */
    private final Camera f8096if = new Camera();

    /* renamed from: for, reason: not valid java name */
    private final RectF f8094for = new RectF();

    /* renamed from: new, reason: not valid java name */
    private final RectF f8097new = new RectF();

    /* renamed from: try, reason: not valid java name */
    private final Matrix f8101try = new Matrix();

    /* renamed from: else, reason: not valid java name */
    private float f8092else = 1.0f;

    /* renamed from: const, reason: not valid java name */
    private float f8090const = 1.0f;

    /* renamed from: final, reason: not valid java name */
    private float f8093final = 1.0f;

    static {
        f8085while = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        f8084import = new WeakHashMap<>();
    }

    private y1(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f8091do = new WeakReference<>(view);
    }

    /* renamed from: do, reason: not valid java name */
    private void m9669do(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.f8101try;
        matrix.reset();
        m9670strictfp(matrix, view);
        this.f8101try.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        float f = rectF.right;
        float f2 = rectF.left;
        if (f < f2) {
            rectF.right = f2;
            rectF.left = f;
        }
        float f3 = rectF.bottom;
        float f4 = rectF.top;
        if (f3 < f4) {
            rectF.top = f3;
            rectF.bottom = f4;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m9670strictfp(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z = this.f8087case;
        float f = z ? this.f8095goto : width / 2.0f;
        float f2 = z ? this.f8099this : height / 2.0f;
        float f3 = this.f8086break;
        float f4 = this.f8088catch;
        float f5 = this.f8089class;
        if (f3 != 0.0f || f4 != 0.0f || f5 != 0.0f) {
            Camera camera = this.f8096if;
            camera.save();
            camera.rotateX(f3);
            camera.rotateY(f4);
            camera.rotateZ(-f5);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f, -f2);
            matrix.postTranslate(f, f2);
        }
        float f6 = this.f8090const;
        float f7 = this.f8093final;
        if (f6 != 1.0f || f7 != 1.0f) {
            matrix.postScale(f6, f7);
            matrix.postTranslate((-(f / width)) * ((f6 * width) - width), (-(f2 / height)) * ((f7 * height) - height));
        }
        matrix.postTranslate(this.f8098super, this.f8100throw);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m9671throw() {
        View view = this.f8091do.get();
        if (view == null || view.getParent() == null) {
            return;
        }
        RectF rectF = this.f8097new;
        m9669do(rectF, view);
        rectF.union(this.f8094for);
        ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static y1 m9672volatile(View view) {
        WeakHashMap<View, y1> weakHashMap = f8084import;
        y1 y1Var = weakHashMap.get(view);
        if (y1Var != null && y1Var == view.getAnimation()) {
            return y1Var;
        }
        y1 y1Var2 = new y1(view);
        weakHashMap.put(view, y1Var2);
        return y1Var2;
    }

    /* renamed from: while, reason: not valid java name */
    private void m9673while() {
        View view = this.f8091do.get();
        if (view != null) {
            m9669do(this.f8094for, view);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m9674abstract(float f) {
        if (this.f8091do.get() != null) {
            m9692package(f - r0.getLeft());
        }
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        View view = this.f8091do.get();
        if (view != null) {
            transformation.setAlpha(this.f8092else);
            m9670strictfp(transformation.getMatrix(), view);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public int m9675break() {
        View view = this.f8091do.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollX();
    }

    /* renamed from: case, reason: not valid java name */
    public float m9676case() {
        return this.f8086break;
    }

    /* renamed from: catch, reason: not valid java name */
    public int m9677catch() {
        View view = this.f8091do.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollY();
    }

    /* renamed from: class, reason: not valid java name */
    public float m9678class() {
        return this.f8098super;
    }

    /* renamed from: const, reason: not valid java name */
    public float m9679const() {
        return this.f8100throw;
    }

    /* renamed from: continue, reason: not valid java name */
    public void m9680continue(float f) {
        if (this.f8091do.get() != null) {
            m9693private(f - r0.getTop());
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m9681default(float f) {
        if (this.f8093final != f) {
            m9673while();
            this.f8093final = f;
            m9671throw();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public float m9682else() {
        return this.f8088catch;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m9683extends(int i) {
        View view = this.f8091do.get();
        if (view != null) {
            view.scrollTo(i, view.getScrollY());
        }
    }

    /* renamed from: final, reason: not valid java name */
    public float m9684final() {
        if (this.f8091do.get() == null) {
            return 0.0f;
        }
        return r0.getLeft() + this.f8098super;
    }

    /* renamed from: finally, reason: not valid java name */
    public void m9685finally(int i) {
        View view = this.f8091do.get();
        if (view != null) {
            view.scrollTo(view.getScrollX(), i);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public float m9686for() {
        return this.f8095goto;
    }

    /* renamed from: goto, reason: not valid java name */
    public float m9687goto() {
        return this.f8090const;
    }

    /* renamed from: if, reason: not valid java name */
    public float m9688if() {
        return this.f8092else;
    }

    /* renamed from: import, reason: not valid java name */
    public void m9689import(float f) {
        if (this.f8092else != f) {
            this.f8092else = f;
            View view = this.f8091do.get();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m9690native(float f) {
        if (this.f8087case && this.f8095goto == f) {
            return;
        }
        m9673while();
        this.f8087case = true;
        this.f8095goto = f;
        m9671throw();
    }

    /* renamed from: new, reason: not valid java name */
    public float m9691new() {
        return this.f8099this;
    }

    /* renamed from: package, reason: not valid java name */
    public void m9692package(float f) {
        if (this.f8098super != f) {
            m9673while();
            this.f8098super = f;
            m9671throw();
        }
    }

    /* renamed from: private, reason: not valid java name */
    public void m9693private(float f) {
        if (this.f8100throw != f) {
            m9673while();
            this.f8100throw = f;
            m9671throw();
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m9694public(float f) {
        if (this.f8087case && this.f8099this == f) {
            return;
        }
        m9673while();
        this.f8087case = true;
        this.f8099this = f;
        m9671throw();
    }

    /* renamed from: return, reason: not valid java name */
    public void m9695return(float f) {
        if (this.f8089class != f) {
            m9673while();
            this.f8089class = f;
            m9671throw();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m9696static(float f) {
        if (this.f8086break != f) {
            m9673while();
            this.f8086break = f;
            m9671throw();
        }
    }

    /* renamed from: super, reason: not valid java name */
    public float m9697super() {
        if (this.f8091do.get() == null) {
            return 0.0f;
        }
        return r0.getTop() + this.f8100throw;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m9698switch(float f) {
        if (this.f8088catch != f) {
            m9673while();
            this.f8088catch = f;
            m9671throw();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public float m9699this() {
        return this.f8093final;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m9700throws(float f) {
        if (this.f8090const != f) {
            m9673while();
            this.f8090const = f;
            m9671throw();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public float m9701try() {
        return this.f8089class;
    }
}
