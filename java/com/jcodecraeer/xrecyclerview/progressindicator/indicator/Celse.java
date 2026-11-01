package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import com.scwang.smartrefresh.header.flyrefresh.MountainSceneView;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.else, reason: invalid class name */
/* loaded from: classes2.dex */
public class Celse extends Cimport {

    /* renamed from: new, reason: not valid java name */
    public static final float f18346new = 1.0f;

    /* renamed from: for, reason: not valid java name */
    private float[] f18347for = {1.0f, 1.0f, 1.0f};

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.else$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18348do;

        public Cdo(int i) {
            this.f18348do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Celse.this.f18347for[this.f18348do] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            Celse.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        int[] iArr = {120, MountainSceneView.f20267finally, FunGameBattleCityHeader.u};
        for (int i = 0; i < 3; i++) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            valueAnimatorOfFloat.setDuration(750L);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setStartDelay(iArr[i]);
            valueAnimatorOfFloat.addUpdateListener(new Cdo(i));
            valueAnimatorOfFloat.start();
            arrayList.add(valueAnimatorOfFloat);
        }
        return arrayList;
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: for */
    public void mo458for(Canvas canvas, Paint paint) {
        float fMin = (Math.min(m22845case(), m22850new()) - 8.0f) / 6.0f;
        float f = 2.0f * fMin;
        float fM22845case = (m22845case() / 2) - (f + 4.0f);
        float fM22850new = m22850new() / 2;
        for (int i = 0; i < 3; i++) {
            canvas.save();
            float f2 = i;
            canvas.translate((f * f2) + fM22845case + (f2 * 4.0f), fM22850new);
            float[] fArr = this.f18347for;
            canvas.scale(fArr[i], fArr[i]);
            canvas.drawCircle(0.0f, 0.0f, fMin, paint);
            canvas.restore();
        }
    }
}
