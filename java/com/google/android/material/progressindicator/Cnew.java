package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.n7;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import com.google.common.collect.LinkedHashMultimap;

/* renamed from: com.google.android.material.progressindicator.new, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Cnew<S extends n7> {

    /* renamed from: do, reason: not valid java name */
    public S f12428do;

    /* renamed from: if, reason: not valid java name */
    public Cfor f12429if;

    public Cnew(S s) {
        this.f12428do = s;
    }

    /* renamed from: case, reason: not valid java name */
    public void m13887case(@NonNull Cfor cfor) {
        this.f12429if = cfor;
    }

    /* renamed from: do */
    public abstract void mo13810do(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f);

    /* renamed from: else, reason: not valid java name */
    public void m13888else(@NonNull Canvas canvas, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        this.f12428do.mo2406try();
        mo13810do(canvas, f);
    }

    /* renamed from: for */
    public abstract void mo13811for(@NonNull Canvas canvas, @NonNull Paint paint);

    /* renamed from: if */
    public abstract void mo13812if(@NonNull Canvas canvas, @NonNull Paint paint, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f2, @ColorInt int i);

    /* renamed from: new */
    public abstract int mo13813new();

    /* renamed from: try */
    public abstract int mo13814try();
}
