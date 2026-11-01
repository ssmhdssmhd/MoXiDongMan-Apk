package com.luck.picture.lib.dialog;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.luck.picture.lib.R;

/* loaded from: classes2.dex */
public class PictureSpinView extends ImageView implements PictureIndeterminate {

    /* renamed from: do, reason: not valid java name */
    private float f18722do;

    /* renamed from: for, reason: not valid java name */
    private boolean f18723for;

    /* renamed from: if, reason: not valid java name */
    private int f18724if;

    /* renamed from: new, reason: not valid java name */
    private Runnable f18725new;

    /* renamed from: com.luck.picture.lib.dialog.PictureSpinView$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PictureSpinView.this.f18722do += 30.0f;
            PictureSpinView pictureSpinView = PictureSpinView.this;
            pictureSpinView.f18722do = pictureSpinView.f18722do < 360.0f ? PictureSpinView.this.f18722do : PictureSpinView.this.f18722do - 360.0f;
            PictureSpinView.this.invalidate();
            if (PictureSpinView.this.f18723for) {
                PictureSpinView.this.postDelayed(this, r0.f18724if);
            }
        }
    }

    public PictureSpinView(Context context) {
        super(context);
        m23041try();
    }

    /* renamed from: try, reason: not valid java name */
    private void m23041try() {
        setImageResource(R.drawable.kprogresshud_spinner);
        this.f18724if = 83;
        this.f18725new = new Cdo();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f18723for = true;
        post(this.f18725new);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        this.f18723for = false;
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        canvas.rotate(this.f18722do, getWidth() / 2, getHeight() / 2);
        super.onDraw(canvas);
    }

    @Override // com.luck.picture.lib.dialog.PictureIndeterminate
    public void setAnimationSpeed(float f) {
        this.f18724if = (int) (83.0f / f);
    }

    public PictureSpinView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m23041try();
    }
}
