package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.c62;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TextDrawableHelper {

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private com.google.android.material.resources.Cdo f12119case;

    /* renamed from: for, reason: not valid java name */
    private float f12121for;

    /* renamed from: do, reason: not valid java name */
    private final TextPaint f12120do = new TextPaint(1);

    /* renamed from: if, reason: not valid java name */
    private final c62 f12122if = new Cdo();

    /* renamed from: new, reason: not valid java name */
    private boolean f12123new = true;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private WeakReference<TextDrawableDelegate> f12124try = new WeakReference<>(null);

    public interface TextDrawableDelegate {
        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);

        void onTextSizeChange();
    }

    /* renamed from: com.google.android.material.internal.TextDrawableHelper$do, reason: invalid class name */
    public class Cdo extends c62 {
        public Cdo() {
        }

        @Override // android.support.v4.c62
        /* renamed from: do */
        public void mo757do(int i) {
            TextDrawableHelper.this.f12123new = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.f12124try.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }

        @Override // android.support.v4.c62
        /* renamed from: if */
        public void mo758if(@NonNull Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            TextDrawableHelper.this.f12123new = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.f12124try.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.onTextSizeChange();
            }
        }
    }

    public TextDrawableHelper(@Nullable TextDrawableDelegate textDrawableDelegate) {
        m13606goto(textDrawableDelegate);
    }

    /* renamed from: for, reason: not valid java name */
    private float m13600for(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f12120do.measureText(charSequence, 0, charSequence.length());
    }

    /* renamed from: break, reason: not valid java name */
    public void m13602break(boolean z) {
        this.f12123new = z;
    }

    /* renamed from: case, reason: not valid java name */
    public float m13603case(String str) {
        if (!this.f12123new) {
            return this.f12121for;
        }
        float fM13600for = m13600for(str);
        this.f12121for = fM13600for;
        this.f12123new = false;
        return fM13600for;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m13604catch(Context context) {
        this.f12119case.m13899break(context, this.f12120do, this.f12122if);
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m13605else() {
        return this.f12123new;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m13606goto(@Nullable TextDrawableDelegate textDrawableDelegate) {
        this.f12124try = new WeakReference<>(textDrawableDelegate);
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public com.google.android.material.resources.Cdo m13607new() {
        return this.f12119case;
    }

    /* renamed from: this, reason: not valid java name */
    public void m13608this(@Nullable com.google.android.material.resources.Cdo cdo, Context context) {
        if (this.f12119case != cdo) {
            this.f12119case = cdo;
            if (cdo != null) {
                cdo.m13901catch(context, this.f12120do, this.f12122if);
                TextDrawableDelegate textDrawableDelegate = this.f12124try.get();
                if (textDrawableDelegate != null) {
                    this.f12120do.drawableState = textDrawableDelegate.getState();
                }
                cdo.m13899break(context, this.f12120do, this.f12122if);
                this.f12123new = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = this.f12124try.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.onTextSizeChange();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public TextPaint m13609try() {
        return this.f12120do;
    }
}
