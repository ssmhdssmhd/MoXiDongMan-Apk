package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.oc;
import android.support.v4.w21;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.case, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccase extends Cimport {

    /* renamed from: case, reason: not valid java name */
    public static final float f18310case = 1.0f;

    /* renamed from: try, reason: not valid java name */
    public static final int f18311try = 255;

    /* renamed from: for, reason: not valid java name */
    public int[] f18312for = {255, 255, 255, 255, 255, 255, 255, 255, 255};

    /* renamed from: new, reason: not valid java name */
    public float[] f18313new = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.case$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18314do;

        public Cdo(int i) {
            this.f18314do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Ccase.this.f18313new[this.f18314do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Ccase.this.m22848goto();
        }
    }

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.case$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18316do;

        public Cif(int i) {
            this.f18316do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Ccase.this.f18312for[this.f18316do] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Ccase.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        int[] iArr = {720, 1020, LogType.UNEXP_ANR, 1420, 1450, 1180, 870, 1450, 1060};
        int[] iArr2 = {-60, 250, w21.v2, 480, 310, 30, 460, 780, 450};
        for (int i = 0; i < 9; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f);
            valueAnimatorOfFloat.setDuration(iArr[i]);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(iArr2[i]);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, oc.f4541try, 122, 255);
            valueAnimatorOfInt.setDuration(iArr[i]);
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.setStartDelay(iArr2[i]);
            valueAnimatorOfInt.addUpdateListener(new Cif(i));
            valueAnimatorOfInt.start();
            arrayList.add(valueAnimatorOfFloat);
            arrayList.add(valueAnimatorOfInt);
        }
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = (m22845case() - 16.0f) / 6.0f;
        float f = 2.0f * fM22845case;
        float f2 = f + 4.0f;
        float fM22845case2 = (m22845case() / 2) - f2;
        float fM22845case3 = (m22845case() / 2) - f2;
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                canvas.save();
                float f3 = i2;
                float f4 = (f * f3) + fM22845case2 + (f3 * 4.0f);
                float f5 = i;
                canvas.translate(f4, (f * f5) + fM22845case3 + (f5 * 4.0f));
                float[] fArr = this.f18313new;
                int i3 = (i * 3) + i2;
                canvas.scale(fArr[i3], fArr[i3]);
                paint.setAlpha(this.f18312for[i3]);
                canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
                canvas.restore();
            }
        }
    }
}
