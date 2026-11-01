package android.support.v4;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.expandable.ExpandableWidget;

/* loaded from: classes.dex */
public final class b90 {

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final View f382do;

    /* renamed from: if, reason: not valid java name */
    private boolean f384if = false;

    /* renamed from: for, reason: not valid java name */
    @IdRes
    private int f383for = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public b90(ExpandableWidget expandableWidget) {
        this.f382do = (View) expandableWidget;
    }

    /* renamed from: do, reason: not valid java name */
    private void m479do() {
        ViewParent parent = this.f382do.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f382do);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m480case(boolean z) {
        if (this.f384if == z) {
            return false;
        }
        this.f384if = z;
        m479do();
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public void m481else(@IdRes int i) {
        this.f383for = i;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m482for() {
        return this.f384if;
    }

    @IdRes
    /* renamed from: if, reason: not valid java name */
    public int m483if() {
        return this.f383for;
    }

    /* renamed from: new, reason: not valid java name */
    public void m484new(@NonNull Bundle bundle) {
        this.f384if = bundle.getBoolean("expanded", false);
        this.f383for = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f384if) {
            m479do();
        }
    }

    @NonNull
    /* renamed from: try, reason: not valid java name */
    public Bundle m485try() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f384if);
        bundle.putInt("expandedComponentIdHint", this.f383for);
        return bundle;
    }
}
