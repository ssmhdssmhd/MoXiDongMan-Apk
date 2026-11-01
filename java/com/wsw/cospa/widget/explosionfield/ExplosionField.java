package com.wsw.cospa.widget.explosionfield;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* loaded from: classes2.dex */
public class ExplosionField extends View {
    private int[] mExpandInset;
    private List<ExplosionAnimator> mExplosions;

    public ExplosionField(Context context) {
        super(context);
        this.mExplosions = new ArrayList();
        this.mExpandInset = new int[2];
        init();
    }

    public static ExplosionField attach2Window(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        ExplosionField explosionField = new ExplosionField(activity);
        viewGroup.addView(explosionField, new ViewGroup.LayoutParams(-1, -1));
        return explosionField;
    }

    private void init() {
        Arrays.fill(this.mExpandInset, Utils.dp2Px(32));
    }

    public void clear() {
        this.mExplosions.clear();
        invalidate();
    }

    public void expandExplosionBound(int i, int i2) {
        int[] iArr = this.mExpandInset;
        iArr[0] = i;
        iArr[1] = i2;
    }

    public void explode(Bitmap bitmap, Rect rect, long j, long j2) {
        ExplosionAnimator explosionAnimator = new ExplosionAnimator(this, bitmap, rect);
        explosionAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.wsw.cospa.widget.explosionfield.ExplosionField.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ExplosionField.this.mExplosions.remove(animator);
            }
        });
        explosionAnimator.setStartDelay(j);
        explosionAnimator.setDuration(j2);
        this.mExplosions.add(explosionAnimator);
        explosionAnimator.start();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Iterator<ExplosionAnimator> it = this.mExplosions.iterator();
        while (it.hasNext()) {
            it.next().draw(canvas);
        }
    }

    public ExplosionField(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mExplosions = new ArrayList();
        this.mExpandInset = new int[2];
        init();
    }

    public void explode(final View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        rect.offset(-iArr[0], -iArr[1]);
        int[] iArr2 = this.mExpandInset;
        rect.inset(-iArr2[0], -iArr2[1]);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(150L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.wsw.cospa.widget.explosionfield.ExplosionField.2
            public Random random = new Random();

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setTranslationX((this.random.nextFloat() - 0.5f) * view.getWidth() * 0.05f);
                view.setTranslationY((this.random.nextFloat() - 0.5f) * view.getHeight() * 0.05f);
            }
        });
        duration.start();
        long j = 100;
        view.animate().setDuration(150L).setStartDelay(j).scaleX(0.0f).scaleY(0.0f).alpha(0.0f).start();
        explode(Utils.createBitmapFromView(view), rect, j, ExplosionAnimator.DEFAULT_DURATION);
    }

    public ExplosionField(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mExplosions = new ArrayList();
        this.mExpandInset = new int[2];
        init();
    }
}
