package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.constraintlayout.motion.widget.Key;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.this, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cthis extends Cimport {

    /* renamed from: for, reason: not valid java name */
    public float f18410for = 0.5f;

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.this$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cthis.this.f18410for = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Cthis.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.5f, 1.0f, 0.5f);
        valueAnimatorOfFloat.setDuration(1000L);
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.addUpdateListener(new Cdo());
        valueAnimatorOfFloat.start();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(m22851try(), Key.ROTATION, 0.0f, 180.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.start();
        arrayList.add(valueAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fM22845case = m22845case() / 10;
        float fM22845case2 = m22845case() / 2;
        float fM22850new = m22850new() / 2;
        canvas.save();
        float f = 2.0f * fM22845case;
        canvas.translate((fM22845case2 - f) - fM22845case, fM22850new);
        float f2 = this.f18410for;
        canvas.scale(f2, f2);
        canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(fM22845case2, fM22850new);
        float f3 = this.f18410for;
        canvas.scale(f3, f3);
        canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(fM22845case2 + f + fM22845case, fM22850new);
        float f4 = this.f18410for;
        canvas.scale(f4, f4);
        canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
        canvas.restore();
    }
}
