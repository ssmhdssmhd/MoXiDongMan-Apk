package android.support.v4;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;

/* renamed from: android.support.v4.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private AnimationSet f1087do = new AnimationSet(true);

    /* renamed from: if, reason: not valid java name */
    public static Cdo m1446if() {
        return new Cdo();
    }

    /* renamed from: break, reason: not valid java name */
    public Cdo m1447break(int i) {
        this.f1087do.setRepeatMode(i);
        return this;
    }

    /* renamed from: case, reason: not valid java name */
    public AnimationSet m1448case() {
        return this.f1087do;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cdo m1449catch() {
        this.f1087do.reset();
        return this;
    }

    /* renamed from: class, reason: not valid java name */
    public Cdo m1450class(float f, float f2, float f3, float f4, int i, float f5, int i2, float f6) {
        this.f1087do.addAnimation(new ScaleAnimation(f, f2, f3, f4, i, f5, i2, f6));
        return this;
    }

    /* renamed from: const, reason: not valid java name */
    public Cdo m1451const(long j) {
        this.f1087do.setStartOffset(j);
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public Cdo m1452do(float f, float f2) {
        this.f1087do.addAnimation(new AlphaAnimation(f, f2));
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public void m1453else(View view) {
        view.setAnimation(this.f1087do);
    }

    /* renamed from: final, reason: not valid java name */
    public Cdo m1454final(int i, int i2, int i3, int i4) {
        this.f1087do.addAnimation(new TranslateAnimation(i, i2, i3, i4));
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public Cdo m1455for(long j) {
        this.f1087do.setDuration(j);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdo m1456goto(Animation.AnimationListener animationListener) {
        this.f1087do.setAnimationListener(animationListener);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public Cdo m1457new(boolean z) {
        this.f1087do.setFillAfter(z);
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public Cdo m1458this(float f, float f2, int i, float f3, int i2, float f4) {
        this.f1087do.addAnimation(new RotateAnimation(f, f2, i, f3, i2, f4));
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public Cdo m1459try(boolean z) {
        this.f1087do.setFillBefore(z);
        return this;
    }
}
