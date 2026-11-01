package com.wsw.cospa.widget.explosionfield;

import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.Random;

/* loaded from: classes2.dex */
public class ExplosionAnimator extends ValueAnimator {
    public static long DEFAULT_DURATION = 1024;
    private static final float END_VALUE = 1.4f;
    private Rect mBound;
    private View mContainer;
    private Paint mPaint = new Paint();
    private Particle[] mParticles = new Particle[225];
    private static final Interpolator DEFAULT_INTERPOLATOR = new AccelerateInterpolator(0.6f);
    private static final float X = Utils.dp2Px(5);
    private static final float Y = Utils.dp2Px(20);
    private static final float V = Utils.dp2Px(2);
    private static final float W = Utils.dp2Px(1);

    public class Particle {
        public float alpha;
        public float baseCx;
        public float baseCy;
        public float baseRadius;
        public float bottom;
        public int color;
        public float cx;
        public float cy;
        public float life;
        public float mag;
        public float neg;
        public float overflow;
        public float radius;
        public float top;

        private Particle() {
        }

        public void advance(float f) {
            float f2 = f / ExplosionAnimator.END_VALUE;
            float f3 = this.life;
            if (f2 >= f3) {
                float f4 = this.overflow;
                if (f2 <= 1.0f - f4) {
                    float f5 = (f2 - f3) / ((1.0f - f3) - f4);
                    float f6 = ExplosionAnimator.END_VALUE * f5;
                    this.alpha = 1.0f - (f5 >= 0.7f ? (f5 - 0.7f) / 0.3f : 0.0f);
                    float f7 = this.bottom * f6;
                    this.cx = this.baseCx + f7;
                    double d = this.baseCy;
                    double d2 = this.neg;
                    double dPow = Math.pow(f7, 2.0d);
                    Double.isNaN(d2);
                    Double.isNaN(d);
                    this.cy = ((float) (d - (d2 * dPow))) - (f7 * this.mag);
                    this.radius = ExplosionAnimator.V + ((this.baseRadius - ExplosionAnimator.V) * f6);
                    return;
                }
            }
            this.alpha = 0.0f;
        }
    }

    public ExplosionAnimator(View view, Bitmap bitmap, Rect rect) {
        this.mBound = new Rect(rect);
        Random random = new Random(System.currentTimeMillis());
        int width = bitmap.getWidth() / 17;
        int height = bitmap.getHeight() / 17;
        for (int i = 0; i < 15; i++) {
            int i2 = 0;
            while (i2 < 15) {
                int i3 = (i * 15) + i2;
                i2++;
                this.mParticles[i3] = generateParticle(bitmap.getPixel(i2 * width, (i + 1) * height), random);
            }
        }
        this.mContainer = view;
        setFloatValues(0.0f, END_VALUE);
        setInterpolator(DEFAULT_INTERPOLATOR);
        setDuration(DEFAULT_DURATION);
    }

    private Particle generateParticle(int i, Random random) {
        Particle particle = new Particle();
        particle.color = i;
        float f = V;
        particle.radius = f;
        if (random.nextFloat() < 0.2f) {
            particle.baseRadius = f + ((X - f) * random.nextFloat());
        } else {
            float f2 = W;
            particle.baseRadius = f2 + ((f - f2) * random.nextFloat());
        }
        float fNextFloat = random.nextFloat();
        float fHeight = this.mBound.height() * ((random.nextFloat() * 0.18f) + 0.2f);
        particle.top = fHeight;
        if (fNextFloat >= 0.2f) {
            fHeight += fHeight * 0.2f * random.nextFloat();
        }
        particle.top = fHeight;
        float fHeight2 = this.mBound.height() * (random.nextFloat() - 0.5f) * 1.8f;
        particle.bottom = fHeight2;
        if (fNextFloat >= 0.2f) {
            fHeight2 *= fNextFloat < 0.8f ? 0.6f : 0.3f;
        }
        particle.bottom = fHeight2;
        float f3 = (particle.top * 4.0f) / fHeight2;
        particle.mag = f3;
        particle.neg = (-f3) / fHeight2;
        float fCenterX = this.mBound.centerX();
        float f4 = Y;
        float fNextFloat2 = fCenterX + ((random.nextFloat() - 0.5f) * f4);
        particle.baseCx = fNextFloat2;
        particle.cx = fNextFloat2;
        float fCenterY = this.mBound.centerY() + (f4 * (random.nextFloat() - 0.5f));
        particle.baseCy = fCenterY;
        particle.cy = fCenterY;
        particle.life = random.nextFloat() * 0.14f;
        particle.overflow = random.nextFloat() * 0.4f;
        particle.alpha = 1.0f;
        return particle;
    }

    public boolean draw(Canvas canvas) {
        if (!isStarted()) {
            return false;
        }
        for (Particle particle : this.mParticles) {
            particle.advance(((Float) getAnimatedValue()).floatValue());
            if (particle.alpha > 0.0f) {
                this.mPaint.setColor(particle.color);
                this.mPaint.setAlpha((int) (Color.alpha(particle.color) * particle.alpha));
                canvas.drawCircle(particle.cx, particle.cy, particle.radius, this.mPaint);
            }
        }
        this.mContainer.invalidate();
        return true;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        super.start();
        this.mContainer.invalidate(this.mBound);
    }
}
