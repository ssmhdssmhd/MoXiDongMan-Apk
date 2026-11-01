package org.adw.library.widgets.discreteseekbar.internal.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.os.SystemClock;
import android.support.v4.o12;
import androidx.annotation.NonNull;

/* renamed from: org.adw.library.widgets.discreteseekbar.internal.drawable.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends o12 implements Animatable {

    /* renamed from: this, reason: not valid java name */
    public static final int f28421this = 12;

    /* renamed from: case, reason: not valid java name */
    private boolean f28422case;

    /* renamed from: else, reason: not valid java name */
    private boolean f28423else;

    /* renamed from: goto, reason: not valid java name */
    private Runnable f28424goto;

    /* renamed from: try, reason: not valid java name */
    private final int f28425try;

    /* renamed from: org.adw.library.widgets.discreteseekbar.internal.drawable.if$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Cif.this.f28422case = true;
            Cif.this.invalidateSelf();
            Cif.this.f28423else = false;
        }
    }

    public Cif(@NonNull ColorStateList colorStateList, int i) {
        super(colorStateList);
        this.f28424goto = new Cdo();
        this.f28425try = i;
    }

    @Override // android.support.v4.o12
    /* renamed from: do */
    public void mo1690do(Canvas canvas, Paint paint) {
        if (this.f28422case) {
            return;
        }
        Rect bounds = getBounds();
        canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.f28425try / 2, paint);
    }

    /* renamed from: else, reason: not valid java name */
    public void m31832else() {
        this.f28422case = false;
        this.f28423else = false;
        unscheduleSelf(this.f28424goto);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f28425try;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f28425try;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m31833goto() {
        scheduleSelf(this.f28424goto, SystemClock.uptimeMillis() + 100);
        this.f28423else = true;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f28423else;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        m31832else();
    }
}
