package android.support.v4;

import android.R;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

/* loaded from: classes.dex */
public abstract class m12 extends StateListDrawable {
    /* renamed from: do, reason: not valid java name */
    public void m4821do(Drawable drawable) {
        m4822if(new ColorDrawable(0), drawable);
    }

    /* renamed from: if, reason: not valid java name */
    public void m4822if(Drawable drawable, Drawable drawable2) {
        addState(new int[]{R.attr.state_pressed, R.attr.state_enabled}, drawable2);
        addState(new int[]{R.attr.state_enabled, R.attr.state_focused}, drawable2);
        addState(new int[]{R.attr.state_enabled}, drawable);
        addState(new int[]{R.attr.state_focused}, drawable2);
        addState(new int[]{R.attr.state_window_focused}, drawable);
        addState(new int[0], drawable);
    }
}
