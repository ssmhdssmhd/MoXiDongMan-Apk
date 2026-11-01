package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.expandable.ExpandableWidget;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: for, reason: not valid java name */
    private static final int f13198for = 1;

    /* renamed from: if, reason: not valid java name */
    private static final int f13199if = 0;

    /* renamed from: new, reason: not valid java name */
    private static final int f13200new = 2;

    /* renamed from: do, reason: not valid java name */
    private int f13201do;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13202do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ExpandableWidget f13203for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f13204if;

        public Cdo(View view, int i, ExpandableWidget expandableWidget) {
            this.f13202do = view;
            this.f13204if = i;
            this.f13203for = expandableWidget;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f13202do.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f13201do == this.f13204if) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                ExpandableWidget expandableWidget = this.f13203for;
                expandableBehavior.mo14630try((View) expandableWidget, this.f13202do, expandableWidget.isExpanded(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f13201do = 0;
    }

    /* renamed from: if, reason: not valid java name */
    private boolean m14627if(boolean z) {
        if (!z) {
            return this.f13201do == 1;
        }
        int i = this.f13201do;
        return i == 0 || i == 2;
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    public static <T extends ExpandableBehavior> T m14628new(@NonNull View view, @NonNull Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof ExpandableBehavior) {
            return cls.cast(behavior);
        }
        throw new IllegalArgumentException("The view is not associated with ExpandableBehavior");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: for, reason: not valid java name */
    public ExpandableWidget m14629for(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i = 0; i < size; i++) {
            View view2 = dependencies.get(i);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (ExpandableWidget) view2;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ExpandableWidget expandableWidget = (ExpandableWidget) view2;
        if (!m14627if(expandableWidget.isExpanded())) {
            return false;
        }
        this.f13201do = expandableWidget.isExpanded() ? 1 : 2;
        return mo14630try((View) expandableWidget, view, expandableWidget.isExpanded(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
        ExpandableWidget expandableWidgetM14629for;
        if (ViewCompat.isLaidOut(view) || (expandableWidgetM14629for = m14629for(coordinatorLayout, view)) == null || !m14627if(expandableWidgetM14629for.isExpanded())) {
            return false;
        }
        int i2 = expandableWidgetM14629for.isExpanded() ? 1 : 2;
        this.f13201do = i2;
        view.getViewTreeObserver().addOnPreDrawListener(new Cdo(view, i2, expandableWidgetM14629for));
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    public abstract boolean mo14630try(View view, View view2, boolean z, boolean z2);

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13201do = 0;
    }
}
