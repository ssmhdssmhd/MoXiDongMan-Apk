package android.support.v4;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Random;

/* loaded from: classes2.dex */
public class s12 extends Animation {

    /* renamed from: case, reason: not valid java name */
    public float f5992case;

    /* renamed from: do, reason: not valid java name */
    public PointF f5993do;

    /* renamed from: else, reason: not valid java name */
    public PointF f5994else;

    /* renamed from: for, reason: not valid java name */
    public int f5995for;

    /* renamed from: goto, reason: not valid java name */
    public PointF f5996goto;

    /* renamed from: if, reason: not valid java name */
    public float f5997if;

    /* renamed from: new, reason: not valid java name */
    public final Paint f5998new;

    /* renamed from: try, reason: not valid java name */
    public float f5999try;

    public s12(int i, PointF pointF, PointF pointF2, int i2, int i3) {
        Paint paint = new Paint();
        this.f5998new = paint;
        this.f5999try = 1.0f;
        this.f5992case = 0.4f;
        this.f5995for = i;
        this.f5993do = new PointF((pointF.x + pointF2.x) / 2.0f, (pointF.y + pointF2.y) / 2.0f);
        float f = pointF.x;
        PointF pointF3 = this.f5993do;
        this.f5994else = new PointF(f - pointF3.x, pointF.y - pointF3.y);
        float f2 = pointF2.x;
        PointF pointF4 = this.f5993do;
        this.f5996goto = new PointF(f2 - pointF4.x, pointF2.y - pointF4.y);
        m7239new(i2);
        m7240try(i3);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        float f2 = this.f5999try;
        m7237for(f2 + ((this.f5992case - f2) * f));
    }

    /* renamed from: case, reason: not valid java name */
    public void m7235case(float f, float f2) {
        this.f5999try = f;
        this.f5992case = f2;
        super.start();
    }

    /* renamed from: do, reason: not valid java name */
    public void m7236do(Canvas canvas) {
        PointF pointF = this.f5994else;
        float f = pointF.x;
        float f2 = pointF.y;
        PointF pointF2 = this.f5996goto;
        canvas.drawLine(f, f2, pointF2.x, pointF2.y, this.f5998new);
    }

    /* renamed from: for, reason: not valid java name */
    public void m7237for(float f) {
        this.f5998new.setAlpha((int) (f * 255.0f));
    }

    /* renamed from: if, reason: not valid java name */
    public void m7238if(int i) {
        this.f5997if = (-new Random().nextInt(i)) + i;
    }

    /* renamed from: new, reason: not valid java name */
    public void m7239new(int i) {
        this.f5998new.setColor(i);
    }

    /* renamed from: try, reason: not valid java name */
    public void m7240try(int i) {
        this.f5998new.setStrokeWidth(i);
    }
}
