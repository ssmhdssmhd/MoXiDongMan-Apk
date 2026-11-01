package com.jcodecraeer.xrecyclerview.progressindicator.indicator;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.w21;
import com.scwang.smartrefresh.header.FunGameBattleCityHeader;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.try, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ctry extends Cimport {

    /* renamed from: new, reason: not valid java name */
    public static final int f18416new = 255;

    /* renamed from: for, reason: not valid java name */
    public int[] f18417for = {255, 255, 255, 255, 255, 255, 255, 255, 255};

    /* renamed from: com.jcodecraeer.xrecyclerview.progressindicator.indicator.try$do, reason: invalid class name */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18418do;

        public Cdo(int i) {
            this.f18418do = i;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Ctry.this.f18417for[this.f18418do] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            Ctry.this.m22848goto();
        }
    }

    @Override // com.jcodecraeer.xrecyclerview.progressindicator.indicator.Cimport
    /* renamed from: do */
    public List<Animator> mo457do() {
        ArrayList arrayList = new ArrayList();
        int[] iArr = {960, 930, 1190, 1130, 1340, 940, 1200, 820, 1190};
        int[] iArr2 = {FunGameBattleCityHeader.u, 400, 680, 410, 710, w21.g2, w21.I1, 10, 320};
        for (int i = 0; i < 9; i++) {
            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 168, 255);
            valueAnimatorOfInt.setDuration(iArr[i]);
            valueAnimatorOfInt.setRepeatCount(-1);
            valueAnimatorOfInt.setStartDelay(iArr2[i]);
            valueAnimatorOfInt.addUpdateListener(new Cdo(i));
            valueAnimatorOfInt.start();
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
                paint.setAlpha(this.f18417for[(i * 3) + i2]);
                canvas.drawCircle(0.0f, 0.0f, fM22845case, paint);
                canvas.restore();
            }
        }
    }
}
