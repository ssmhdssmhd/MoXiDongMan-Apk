package android.support.v4;

import android.view.View;
import androidx.annotation.NonNull;
import com.qmuiteam.qmui.R;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class ch1 {

    /* renamed from: case, reason: not valid java name */
    private float f784case;

    /* renamed from: do, reason: not valid java name */
    private WeakReference<View> f785do;

    /* renamed from: try, reason: not valid java name */
    private float f789try;

    /* renamed from: if, reason: not valid java name */
    private boolean f787if = true;

    /* renamed from: for, reason: not valid java name */
    private boolean f786for = true;

    /* renamed from: new, reason: not valid java name */
    private float f788new = 1.0f;

    public ch1(@NonNull View view) {
        this.f789try = 0.5f;
        this.f784case = 0.5f;
        this.f785do = new WeakReference<>(view);
        this.f789try = sh1.m7402else(view.getContext(), R.attr.qmui_alpha_pressed);
        this.f784case = sh1.m7402else(view.getContext(), R.attr.qmui_alpha_disabled);
    }

    /* renamed from: do, reason: not valid java name */
    public void m927do(View view, boolean z) {
        View view2 = this.f785do.get();
        if (view2 == null) {
            return;
        }
        float f = (!this.f786for || z) ? this.f788new : this.f784case;
        if (view != view2 && view2.isEnabled() != z) {
            view2.setEnabled(z);
        }
        view2.setAlpha(f);
    }

    /* renamed from: for, reason: not valid java name */
    public void m928for(boolean z) {
        this.f786for = z;
        View view = this.f785do.get();
        if (view != null) {
            m927do(view, view.isEnabled());
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m929if(View view, boolean z) {
        View view2 = this.f785do.get();
        if (view2 == null) {
            return;
        }
        if (view.isEnabled()) {
            view2.setAlpha((this.f787if && z && view.isClickable()) ? this.f789try : this.f788new);
        } else if (this.f786for) {
            view2.setAlpha(this.f784case);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m930new(boolean z) {
        this.f787if = z;
    }

    public ch1(@NonNull View view, float f, float f2) {
        this.f789try = 0.5f;
        this.f784case = 0.5f;
        this.f785do = new WeakReference<>(view);
        this.f789try = f;
        this.f784case = f2;
    }
}
