package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.k62;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.support.v4.w1;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: import, reason: not valid java name */
    public static final int f11156import = 0;

    /* renamed from: native, reason: not valid java name */
    public static final int f11157native = 1;

    /* renamed from: public, reason: not valid java name */
    public static final int f11158public = 2;

    /* renamed from: return, reason: not valid java name */
    public static final int f11159return = 4;

    /* renamed from: static, reason: not valid java name */
    public static final int f11160static = 8;

    /* renamed from: switch, reason: not valid java name */
    private static final int f11161switch = R.style.Widget_Design_AppBarLayout;

    /* renamed from: throws, reason: not valid java name */
    private static final int f11162throws = -1;

    /* renamed from: break, reason: not valid java name */
    private boolean f11163break;

    /* renamed from: case, reason: not valid java name */
    private int f11164case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f11165catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f11166class;

    /* renamed from: const, reason: not valid java name */
    @IdRes
    private int f11167const;

    /* renamed from: do, reason: not valid java name */
    private int f11168do;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private WindowInsetsCompat f11169else;

    /* renamed from: final, reason: not valid java name */
    @Nullable
    private WeakReference<View> f11170final;

    /* renamed from: for, reason: not valid java name */
    private int f11171for;

    /* renamed from: goto, reason: not valid java name */
    private List<BaseOnOffsetChangedListener> f11172goto;

    /* renamed from: if, reason: not valid java name */
    private int f11173if;

    /* renamed from: new, reason: not valid java name */
    private int f11174new;

    /* renamed from: super, reason: not valid java name */
    @Nullable
    private ValueAnimator f11175super;

    /* renamed from: this, reason: not valid java name */
    private boolean f11176this;

    /* renamed from: throw, reason: not valid java name */
    private int[] f11177throw;

    /* renamed from: try, reason: not valid java name */
    private boolean f11178try;

    /* renamed from: while, reason: not valid java name */
    @Nullable
    private Drawable f11179while;

    public static class BaseBehavior<T extends AppBarLayout> extends com.google.android.material.appbar.Cdo<T> {
        private static final int INVALID_POSITION = -1;
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;

        @Nullable
        private WeakReference<View> lastNestedScrollingChildRef;
        private int lastStartedType;
        private ValueAnimator offsetAnimator;
        private int offsetDelta;
        private int offsetToChildIndexOnLayout;
        private boolean offsetToChildIndexOnLayoutIsMinHeight;
        private float offsetToChildIndexOnLayoutPerc;
        private Cnew onDragCallback;

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$do, reason: invalid class name */
        public class Cdo implements ValueAnimator.AnimatorUpdateListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CoordinatorLayout f11183do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ AppBarLayout f11185if;

            public Cdo(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f11183do = coordinatorLayout;
                this.f11185if = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                BaseBehavior.this.setHeaderTopBottomOffset(this.f11183do, this.f11185if, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$for, reason: invalid class name */
        public class Cfor implements AccessibilityViewCommand {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ AppBarLayout f11186do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ boolean f11188if;

            public Cfor(AppBarLayout appBarLayout, boolean z) {
                this.f11186do = appBarLayout;
                this.f11188if = z;
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                this.f11186do.setExpanded(this.f11188if);
                return true;
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$if, reason: invalid class name */
        public class Cif implements AccessibilityViewCommand {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CoordinatorLayout f11189do;

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ View f11190for;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ AppBarLayout f11191if;

            /* renamed from: new, reason: not valid java name */
            public final /* synthetic */ int f11192new;

            public Cif(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
                this.f11189do = coordinatorLayout;
                this.f11191if = appBarLayout;
                this.f11190for = view;
                this.f11192new = i;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) throws Resources.NotFoundException {
                BaseBehavior.this.onNestedPreScroll(this.f11189do, (CoordinatorLayout) this.f11191if, this.f11190for, 0, this.f11192new, new int[]{0, 0}, 1);
                return true;
            }
        }

        /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$new, reason: invalid class name */
        public static abstract class Cnew<T extends AppBarLayout> {
            /* renamed from: do, reason: not valid java name */
            public abstract boolean m12623do(@NonNull T t);
        }

        public BaseBehavior() {
            this.offsetToChildIndexOnLayout = -1;
        }

        private void addAccessibilityScrollActions(CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view) {
            if (getTopBottomOffsetForScrollingSibling() != (-t.getTotalScrollRange()) && view.canScrollVertically(1)) {
                addActionToExpand(coordinatorLayout, t, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD, false);
            }
            if (getTopBottomOffsetForScrollingSibling() != 0) {
                if (!view.canScrollVertically(-1)) {
                    addActionToExpand(coordinatorLayout, t, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, true);
                    return;
                }
                int i = -t.getDownNestedPreScrollRange();
                if (i != 0) {
                    ViewCompat.replaceAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, null, new Cif(coordinatorLayout, t, view, i));
                }
            }
        }

        private void addActionToExpand(CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, boolean z) {
            ViewCompat.replaceAccessibilityAction(coordinatorLayout, accessibilityActionCompat, null, new Cfor(t, z));
        }

        private void animateOffsetTo(CoordinatorLayout coordinatorLayout, @NonNull T t, int i, float f) {
            int iAbs = Math.abs(getTopBottomOffsetForScrollingSibling() - i);
            float fAbs = Math.abs(f);
            animateOffsetWithDuration(coordinatorLayout, t, i, fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / t.getHeight()) + 1.0f) * 150.0f));
        }

        private void animateOffsetWithDuration(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i) {
                ValueAnimator valueAnimator = this.offsetAnimator;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.offsetAnimator.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.offsetAnimator;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.offsetAnimator = valueAnimator3;
                valueAnimator3.setInterpolator(w1.f7373try);
                this.offsetAnimator.addUpdateListener(new Cdo(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.offsetAnimator.setDuration(Math.min(i2, 600));
            this.offsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i);
            this.offsetAnimator.start();
        }

        private boolean canScrollChildren(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view) {
            return t.m12612goto() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        private static boolean checkFlag(int i, int i2) {
            return (i & i2) == i2;
        }

        @Nullable
        private View findFirstScrollingChild(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        private static View getAppBarChildOnOffset(@NonNull AppBarLayout appBarLayout, int i) {
            int iAbs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int getChildIndexOnOffset(@NonNull T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                Cfor cfor = (Cfor) childAt.getLayoutParams();
                if (checkFlag(cfor.m12631do(), 32)) {
                    top -= ((LinearLayout.LayoutParams) cfor).topMargin;
                    bottom += ((LinearLayout.LayoutParams) cfor).bottomMargin;
                }
                int i3 = -i;
                if (top <= i3 && bottom >= i3) {
                    return i2;
                }
            }
            return -1;
        }

        private int interpolateOffset(@NonNull T t, int i) {
            int iAbs = Math.abs(i);
            int childCount = t.getChildCount();
            int topInset = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i2);
                Cfor cfor = (Cfor) childAt.getLayoutParams();
                Interpolator interpolatorM12633if = cfor.m12633if();
                if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                    i2++;
                } else if (interpolatorM12633if != null) {
                    int iM12631do = cfor.m12631do();
                    if ((iM12631do & 1) != 0) {
                        topInset = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) cfor).topMargin + ((LinearLayout.LayoutParams) cfor).bottomMargin;
                        if ((iM12631do & 2) != 0) {
                            topInset -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        topInset -= t.getTopInset();
                    }
                    if (topInset > 0) {
                        float f = topInset;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * interpolatorM12633if.getInterpolation((iAbs - childAt.getTop()) / f)));
                    }
                }
            }
            return i;
        }

        private boolean shouldJumpElevationState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            List<View> dependents = coordinatorLayout.getDependents(t);
            int size = dependents.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) behavior).m12679new() != 0;
                }
            }
            return false;
        }

        private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, @NonNull T t) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int childIndexOnOffset = getChildIndexOnOffset(t, topBottomOffsetForScrollingSibling);
            if (childIndexOnOffset >= 0) {
                View childAt = t.getChildAt(childIndexOnOffset);
                Cfor cfor = (Cfor) childAt.getLayoutParams();
                int iM12631do = cfor.m12631do();
                if ((iM12631do & 17) == 17) {
                    int i = -childAt.getTop();
                    int minimumHeight = -childAt.getBottom();
                    if (childIndexOnOffset == t.getChildCount() - 1) {
                        minimumHeight += t.getTopInset();
                    }
                    if (checkFlag(iM12631do, 2)) {
                        minimumHeight += ViewCompat.getMinimumHeight(childAt);
                    } else if (checkFlag(iM12631do, 5)) {
                        int minimumHeight2 = ViewCompat.getMinimumHeight(childAt) + minimumHeight;
                        if (topBottomOffsetForScrollingSibling < minimumHeight2) {
                            i = minimumHeight2;
                        } else {
                            minimumHeight = minimumHeight2;
                        }
                    }
                    if (checkFlag(iM12631do, 32)) {
                        i += ((LinearLayout.LayoutParams) cfor).topMargin;
                        minimumHeight -= ((LinearLayout.LayoutParams) cfor).bottomMargin;
                    }
                    if (topBottomOffsetForScrollingSibling < (minimumHeight + i) / 2) {
                        i = minimumHeight;
                    }
                    animateOffsetTo(coordinatorLayout, t, MathUtils.clamp(i, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void updateAccessibilityActions(CoordinatorLayout coordinatorLayout, @NonNull T t) {
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
            View viewFindFirstScrollingChild = findFirstScrollingChild(coordinatorLayout);
            if (viewFindFirstScrollingChild == null || t.getTotalScrollRange() == 0 || !(((CoordinatorLayout.LayoutParams) viewFindFirstScrollingChild.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior)) {
                return;
            }
            addAccessibilityScrollActions(coordinatorLayout, t, viewFindFirstScrollingChild);
        }

        private void updateAppBarLayoutDrawableState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, boolean z) throws NoSuchFieldException, Resources.NotFoundException {
            View appBarChildOnOffset = getAppBarChildOnOffset(t, i);
            if (appBarChildOnOffset != null) {
                int iM12631do = ((Cfor) appBarChildOnOffset.getLayoutParams()).m12631do();
                boolean zM12616static = false;
                if ((iM12631do & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(appBarChildOnOffset);
                    if (i2 <= 0 || (iM12631do & 12) == 0 ? !((iM12631do & 2) == 0 || (-i) < (appBarChildOnOffset.getBottom() - minimumHeight) - t.getTopInset()) : (-i) >= (appBarChildOnOffset.getBottom() - minimumHeight) - t.getTopInset()) {
                        zM12616static = true;
                    }
                }
                if (t.m12605break()) {
                    zM12616static = t.m12616static(findFirstScrollingChild(coordinatorLayout));
                }
                boolean zM12615public = t.m12615public(zM12616static);
                if (z || (zM12615public && shouldJumpElevationState(coordinatorLayout, t))) {
                    t.jumpDrawablesToCurrentState();
                }
            }
        }

        @Override // com.google.android.material.appbar.Cdo
        public int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.offsetDelta;
        }

        @VisibleForTesting
        public boolean isOffsetAnimatorRunning() {
            ValueAnimator valueAnimator = this.offsetAnimator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        /* JADX WARN: Incorrect types in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Landroid/view/MotionEvent;)Z */
        /* JADX WARN: Unknown type variable: V in type: V */
        @Override // com.google.android.material.appbar.Cdo, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        /* JADX WARN: Incorrect types in method signature: (Landroidx/coordinatorlayout/widget/CoordinatorLayout;TV;Landroid/view/MotionEvent;)Z */
        /* JADX WARN: Unknown type variable: V in type: V */
        @Override // com.google.android.material.appbar.Cdo, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onTouchEvent(coordinatorLayout, view, motionEvent);
        }

        public void setDragCallback(@Nullable Cnew cnew) {
            this.onDragCallback = cnew;
        }

        @Override // com.google.android.material.appbar.Cdo
        public boolean canDragView(T t) {
            Cnew cnew = this.onDragCallback;
            if (cnew != null) {
                return cnew.m12623do(t);
            }
            WeakReference<View> weakReference = this.lastNestedScrollingChildRef;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        @Override // com.google.android.material.appbar.Cdo
        public int getMaxDragOffset(@NonNull T t) {
            return -t.getDownNestedScrollRange();
        }

        @Override // com.google.android.material.appbar.Cdo
        public int getScrollRangeForDragFling(@NonNull T t) {
            return t.getTotalScrollRange();
        }

        @Override // com.google.android.material.appbar.Cdo
        public void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) throws Resources.NotFoundException {
            snapToChildIfNeeded(coordinatorLayout, t);
            if (t.m12605break()) {
                t.m12615public(t.m12616static(findFirstScrollingChild(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.Cfor, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i) throws NoSuchFieldException, Resources.NotFoundException {
            boolean zOnLayoutChild = super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) t, i);
            int pendingAction = t.getPendingAction();
            int i2 = this.offsetToChildIndexOnLayout;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i2);
                setHeaderTopBottomOffset(coordinatorLayout, t, (-childAt.getBottom()) + (this.offsetToChildIndexOnLayoutIsMinHeight ? ViewCompat.getMinimumHeight(childAt) + t.getTopInset() : Math.round(childAt.getHeight() * this.offsetToChildIndexOnLayoutPerc)));
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        animateOffsetTo(coordinatorLayout, t, i3, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        animateOffsetTo(coordinatorLayout, t, 0, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m12610final();
            this.offsetToChildIndexOnLayout = -1;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t.getTotalScrollRange(), 0));
            updateAppBarLayoutDrawableState(coordinatorLayout, t, getTopAndBottomOffset(), 0, true);
            t.m12608class(getTopAndBottomOffset());
            updateAccessibilityActions(coordinatorLayout, t);
            return zOnLayoutChild;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t.getLayoutParams())).height != -2) {
                return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
            }
            coordinatorLayout.onMeasureChild(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i, int i2, int[] iArr, int i3) throws Resources.NotFoundException {
            int i4;
            int downNestedPreScrollRange;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i5 = -t.getTotalScrollRange();
                    i4 = i5;
                    downNestedPreScrollRange = t.getDownNestedPreScrollRange() + i5;
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i4 != downNestedPreScrollRange) {
                    iArr[1] = scroll(coordinatorLayout, t, i2, i4, downNestedPreScrollRange);
                }
            }
            if (t.m12605break()) {
                t.m12615public(t.m12616static(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = scroll(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                updateAccessibilityActions(coordinatorLayout, t);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, Parcelable parcelable) {
            if (!(parcelable instanceof SavedState)) {
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, parcelable);
                this.offsetToChildIndexOnLayout = -1;
                return;
            }
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, savedState.getSuperState());
            this.offsetToChildIndexOnLayout = savedState.f11180do;
            this.offsetToChildIndexOnLayoutPerc = savedState.f11182if;
            this.offsetToChildIndexOnLayoutIsMinHeight = savedState.f11181for;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t) {
            Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) t);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(parcelableOnSaveInstanceState);
                    savedState.f11180do = i;
                    savedState.f11181for = bottom == ViewCompat.getMinimumHeight(childAt) + t.getTopInset();
                    savedState.f11182if = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return parcelableOnSaveInstanceState;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, @NonNull View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.m12605break() || canScrollChildren(coordinatorLayout, t, view));
            if (z && (valueAnimator = this.offsetAnimator) != null) {
                valueAnimator.cancel();
            }
            this.lastNestedScrollingChildRef = null;
            this.lastStartedType = i2;
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t, View view, int i) throws Resources.NotFoundException {
            if (this.lastStartedType == 0 || i == 1) {
                snapToChildIfNeeded(coordinatorLayout, t);
                if (t.m12605break()) {
                    t.m12615public(t.m12616static(view));
                }
            }
            this.lastNestedScrollingChildRef = new WeakReference<>(view);
        }

        @Override // com.google.android.material.appbar.Cdo
        public int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t, int i, int i2, int i3) throws NoSuchFieldException, Resources.NotFoundException {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int i4 = 0;
            if (i2 == 0 || topBottomOffsetForScrollingSibling < i2 || topBottomOffsetForScrollingSibling > i3) {
                this.offsetDelta = 0;
            } else {
                int iClamp = MathUtils.clamp(i, i2, i3);
                if (topBottomOffsetForScrollingSibling != iClamp) {
                    int iInterpolateOffset = t.m12606case() ? interpolateOffset(t, iClamp) : iClamp;
                    boolean topAndBottomOffset = setTopAndBottomOffset(iInterpolateOffset);
                    i4 = topBottomOffsetForScrollingSibling - iClamp;
                    this.offsetDelta = iClamp - iInterpolateOffset;
                    if (!topAndBottomOffset && t.m12606case()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t);
                    }
                    t.m12608class(getTopAndBottomOffset());
                    updateAppBarLayoutDrawableState(coordinatorLayout, t, iClamp, iClamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
                }
            }
            updateAccessibilityActions(coordinatorLayout, t);
            return i4;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.offsetToChildIndexOnLayout = -1;
        }

        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

            /* renamed from: do, reason: not valid java name */
            public int f11180do;

            /* renamed from: for, reason: not valid java name */
            public boolean f11181for;

            /* renamed from: if, reason: not valid java name */
            public float f11182if;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$SavedState$do, reason: invalid class name */
            public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.Creator
                @Nullable
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public SavedState createFromParcel(@NonNull Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                @NonNull
                /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                @NonNull
                /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
                public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }
            }

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f11180do = parcel.readInt();
                this.f11182if = parcel.readFloat();
                this.f11181for = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f11180do);
                parcel.writeFloat(this.f11182if);
                parcel.writeByte(this.f11181for ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void onOffsetChanged(T t, int i);
    }

    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* renamed from: com.google.android.material.appbar.AppBarLayout$Behavior$do, reason: invalid class name */
        public static abstract class Cdo extends BaseBehavior.Cnew<AppBarLayout> {
        }

        public Behavior() {
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) throws Resources.NotFoundException {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i, int i2) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i) throws Resources.NotFoundException {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(@Nullable BaseBehavior.Cnew cnew) {
            super.setDragCallback(cnew);
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z) {
            super.setHorizontalOffsetEnabled(z);
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z) {
            super.setVerticalOffsetEnabled(z);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        void onOffsetChanged(AppBarLayout appBarLayout, int i);
    }

    public static class ScrollingViewBehavior extends com.google.android.material.appbar.Cif {
        public ScrollingViewBehavior() {
        }

        /* renamed from: catch, reason: not valid java name */
        private static int m12624catch(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        /* renamed from: class, reason: not valid java name */
        private void m12625class(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).offsetDelta) + m12676case()) - m12678if(view2));
            }
        }

        /* renamed from: const, reason: not valid java name */
        private void m12626const(View view, View view2) throws Resources.NotFoundException {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.m12605break()) {
                    appBarLayout.m12615public(appBarLayout.m12616static(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.Cif
        @Nullable
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public AppBarLayout mo12628do(@NonNull List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // com.google.android.material.appbar.Cif
        /* renamed from: for, reason: not valid java name */
        public float mo12629for(View view) throws NoSuchFieldException {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iM12624catch = m12624catch(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iM12624catch > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iM12624catch / i) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) throws Resources.NotFoundException {
            m12625class(view, view2);
            m12626const(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
            }
        }

        @Override // com.google.android.material.appbar.Cfor, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        @Override // com.google.android.material.appbar.Cif, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z) {
            AppBarLayout appBarLayoutMo12628do = mo12628do(coordinatorLayout.getDependencies(view));
            if (appBarLayoutMo12628do != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f11258do;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutMo12628do.m12617super(false, !z);
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z) {
            super.setHorizontalOffsetEnabled(z);
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }

        @Override // com.google.android.material.appbar.Cfor
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z) {
            super.setVerticalOffsetEnabled(z);
        }

        @Override // com.google.android.material.appbar.Cif
        /* renamed from: try, reason: not valid java name */
        public int mo12630try(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.mo12630try(view);
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            m12677goto(typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$do, reason: invalid class name */
    public class Cdo implements OnApplyWindowInsetsListener {
        public Cdo() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return AppBarLayout.this.m12609const(windowInsetsCompat);
        }
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ MaterialShapeDrawable f11207do;

        public Cif(MaterialShapeDrawable materialShapeDrawable) {
            this.f11207do = materialShapeDrawable;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            this.f11207do.y(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: default, reason: not valid java name */
    private void m12595default() {
        setWillNotDraw(!m12600return());
    }

    /* renamed from: do, reason: not valid java name */
    private void m12596do() {
        WeakReference<View> weakReference = this.f11170final;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f11170final = null;
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m12597else() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((Cfor) getChildAt(i).getLayoutParams()).m12632for()) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private View m12598if(@Nullable View view) {
        int i;
        if (this.f11170final == null && (i = this.f11167const) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f11167const);
            }
            if (viewFindViewById != null) {
                this.f11170final = new WeakReference<>(viewFindViewById);
            }
        }
        WeakReference<View> weakReference = this.f11170final;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: import, reason: not valid java name */
    private boolean m12599import(boolean z) {
        if (this.f11163break == z) {
            return false;
        }
        this.f11163break = z;
        refreshDrawableState();
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    private boolean m12600return() {
        return this.f11179while != null && getTopInset() > 0;
    }

    /* renamed from: switch, reason: not valid java name */
    private boolean m12601switch() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) ? false : true;
    }

    /* renamed from: this, reason: not valid java name */
    private void m12602this() {
        this.f11173if = -1;
        this.f11171for = -1;
        this.f11174new = -1;
    }

    /* renamed from: throw, reason: not valid java name */
    private void m12603throw(boolean z, boolean z2, boolean z3) {
        this.f11164case = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    /* renamed from: throws, reason: not valid java name */
    private void m12604throws(@NonNull MaterialShapeDrawable materialShapeDrawable, boolean z) throws Resources.NotFoundException {
        float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
        float f = z ? 0.0f : dimension;
        if (!z) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.f11175super;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, dimension);
        this.f11175super = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
        this.f11175super.setInterpolator(w1.f7369do);
        this.f11175super.addUpdateListener(new Cif(materialShapeDrawable));
        this.f11175super.start();
    }

    public void addOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.f11172goto == null) {
            this.f11172goto = new ArrayList();
        }
        if (baseOnOffsetChangedListener == null || this.f11172goto.contains(baseOnOffsetChangedListener)) {
            return;
        }
        this.f11172goto.add(baseOnOffsetChangedListener);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m12605break() {
        return this.f11166class;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m12606case() {
        return this.f11178try;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m12607catch() {
        return this.f11165catch;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof Cfor;
    }

    /* renamed from: class, reason: not valid java name */
    public void m12608class(int i) {
        this.f11168do = i;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List<BaseOnOffsetChangedListener> list = this.f11172goto;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = this.f11172goto.get(i2);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.onOffsetChanged(this, i);
                }
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public WindowInsetsCompat m12609const(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.f11169else, windowInsetsCompat2)) {
            this.f11169else = windowInsetsCompat2;
            m12595default();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (m12600return()) {
            int iSave = canvas.save();
            canvas.translate(0.0f, -this.f11168do);
            this.f11179while.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f11179while;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m12610final() {
        this.f11164case = 0;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfor generateDefaultLayoutParams() {
        return new Cfor(-1, -2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    public int getDownNestedPreScrollRange() throws NoSuchFieldException {
        int iMin;
        int minimumHeight;
        int i = this.f11171for;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            Cfor cfor = (Cfor) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = cfor.f11205do;
            if ((i3 & 5) != 5) {
                if (i2 > 0) {
                    break;
                }
            } else {
                int i4 = ((LinearLayout.LayoutParams) cfor).topMargin + ((LinearLayout.LayoutParams) cfor).bottomMargin;
                if ((i3 & 8) != 0) {
                    minimumHeight = ViewCompat.getMinimumHeight(childAt);
                } else if ((i3 & 2) != 0) {
                    minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                } else {
                    iMin = i4 + measuredHeight;
                    if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i2 += iMin;
                }
                iMin = i4 + minimumHeight;
                if (childCount == 0) {
                    iMin = Math.min(iMin, measuredHeight - getTopInset());
                }
                i2 += iMin;
            }
        }
        int iMax = Math.max(0, i2);
        this.f11171for = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i = this.f11174new;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            Cfor cfor = (Cfor) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) cfor).topMargin + ((LinearLayout.LayoutParams) cfor).bottomMargin;
            int i3 = cfor.f11205do;
            if ((i3 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight;
            if ((i3 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.f11174new = iMax;
        return iMax;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.f11167const;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() throws NoSuchFieldException {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f11164case;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.f11179while;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    public final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.f11169else;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.f11173if;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int minimumHeight = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            Cfor cfor = (Cfor) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = cfor.f11205do;
            if ((i3 & 1) == 0) {
                break;
            }
            minimumHeight += measuredHeight + ((LinearLayout.LayoutParams) cfor).topMargin + ((LinearLayout.LayoutParams) cfor).bottomMargin;
            if (i2 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                minimumHeight -= getTopInset();
            }
            if ((i3 & 2) != 0) {
                minimumHeight -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, minimumHeight);
        this.f11173if = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m12612goto() {
        return getTotalScrollRange() != 0;
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m12613native(boolean z) {
        return m12615public(z);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfor generateLayoutParams(AttributeSet attributeSet) {
        return new Cfor(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tx0.m8145try(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f11177throw == null) {
            this.f11177throw = new int[4];
        }
        int[] iArr = this.f11177throw;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        boolean z = this.f11163break;
        int i2 = R.attr.state_liftable;
        if (!z) {
            i2 = -i2;
        }
        iArr[0] = i2;
        iArr[1] = (z && this.f11165catch) ? R.attr.state_lifted : -R.attr.state_lifted;
        int i3 = R.attr.state_collapsible;
        if (!z) {
            i3 = -i3;
        }
        iArr[2] = i3;
        iArr[3] = (z && this.f11165catch) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m12596do();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (ViewCompat.getFitsSystemWindows(this) && m12601switch()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        m12602this();
        this.f11178try = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((Cfor) getChildAt(i5).getLayoutParams()).m12633if() != null) {
                this.f11178try = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.f11179while;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f11176this) {
            return;
        }
        if (!this.f11166class && !m12597else()) {
            z2 = false;
        }
        m12599import(z2);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && m12601switch()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = MathUtils.clamp(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m12602this();
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m12615public(boolean z) throws Resources.NotFoundException {
        if (this.f11165catch == z) {
            return false;
        }
        this.f11165catch = z;
        refreshDrawableState();
        if (!this.f11166class || !(getBackground() instanceof MaterialShapeDrawable)) {
            return true;
        }
        m12604throws((MaterialShapeDrawable) getBackground(), z);
        return true;
    }

    public void removeOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        List<BaseOnOffsetChangedListener> list = this.f11172goto;
        if (list == null || baseOnOffsetChangedListener == null) {
            return;
        }
        list.remove(baseOnOffsetChangedListener);
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        tx0.m8144new(this, f);
    }

    public void setExpanded(boolean z) {
        m12617super(z, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.f11166class = z;
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i) {
        this.f11167const = i;
        m12596do();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.f11179while;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f11179while = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f11179while.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f11179while, ViewCompat.getLayoutDirection(this));
                this.f11179while.setVisible(getVisibility() == 0, false);
                this.f11179while.setCallback(this);
            }
            m12595default();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 21) {
            Ctry.m12695if(this, f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f11179while;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public boolean m12616static(@Nullable View view) {
        View viewM12598if = m12598if(view);
        if (viewM12598if != null) {
            view = viewM12598if;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    /* renamed from: super, reason: not valid java name */
    public void m12617super(boolean z, boolean z2) {
        m12603throw(z, z2, true);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfor generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new Cfor((ViewGroup.MarginLayoutParams) layoutParams) : new Cfor(layoutParams) : new Cfor((LinearLayout.LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f11179while;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m12619while(boolean z) {
        this.f11176this = true;
        return m12599import(z);
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) throws IllegalAccessException, Resources.NotFoundException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i2 = f11161switch;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        this.f11173if = -1;
        this.f11171for = -1;
        this.f11174new = -1;
        this.f11164case = 0;
        Context context2 = getContext();
        setOrientation(1);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            Ctry.m12693do(this);
            Ctry.m12694for(this, attributeSet, i, i2);
        }
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.AppBarLayout, i, i2, new int[0]);
        ViewCompat.setBackground(this, typedArrayM4267break.getDrawable(R.styleable.AppBarLayout_android_background));
        if (getBackground() instanceof ColorDrawable) {
            ColorDrawable colorDrawable = (ColorDrawable) getBackground();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.z(ColorStateList.valueOf(colorDrawable.getColor()));
            materialShapeDrawable.k(context2);
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        int i4 = R.styleable.AppBarLayout_expanded;
        if (typedArrayM4267break.hasValue(i4)) {
            m12603throw(typedArrayM4267break.getBoolean(i4, false), false, false);
        }
        if (i3 >= 21) {
            if (typedArrayM4267break.hasValue(R.styleable.AppBarLayout_elevation)) {
                Ctry.m12695if(this, typedArrayM4267break.getDimensionPixelSize(r13, 0));
            }
        }
        if (i3 >= 26) {
            int i5 = R.styleable.AppBarLayout_android_keyboardNavigationCluster;
            if (typedArrayM4267break.hasValue(i5)) {
                setKeyboardNavigationCluster(typedArrayM4267break.getBoolean(i5, false));
            }
            int i6 = R.styleable.AppBarLayout_android_touchscreenBlocksFocus;
            if (typedArrayM4267break.hasValue(i6)) {
                setTouchscreenBlocksFocus(typedArrayM4267break.getBoolean(i6, false));
            }
        }
        this.f11166class = typedArrayM4267break.getBoolean(R.styleable.AppBarLayout_liftOnScroll, false);
        this.f11167const = typedArrayM4267break.getResourceId(R.styleable.AppBarLayout_liftOnScrollTargetViewId, -1);
        setStatusBarForeground(typedArrayM4267break.getDrawable(R.styleable.AppBarLayout_statusBarForeground));
        typedArrayM4267break.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new Cdo());
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        removeOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        addOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    /* renamed from: com.google.android.material.appbar.AppBarLayout$for, reason: invalid class name */
    public static class Cfor extends LinearLayout.LayoutParams {

        /* renamed from: break, reason: not valid java name */
        public static final int f11195break = 5;

        /* renamed from: case, reason: not valid java name */
        public static final int f11196case = 4;

        /* renamed from: catch, reason: not valid java name */
        public static final int f11197catch = 17;

        /* renamed from: class, reason: not valid java name */
        public static final int f11198class = 10;

        /* renamed from: else, reason: not valid java name */
        public static final int f11199else = 8;

        /* renamed from: for, reason: not valid java name */
        public static final int f11200for = 0;

        /* renamed from: goto, reason: not valid java name */
        public static final int f11201goto = 16;

        /* renamed from: new, reason: not valid java name */
        public static final int f11202new = 1;

        /* renamed from: this, reason: not valid java name */
        public static final int f11203this = 32;

        /* renamed from: try, reason: not valid java name */
        public static final int f11204try = 2;

        /* renamed from: do, reason: not valid java name */
        public int f11205do;

        /* renamed from: if, reason: not valid java name */
        public Interpolator f11206if;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* renamed from: com.google.android.material.appbar.AppBarLayout$for$do, reason: invalid class name */
        public @interface Cdo {
        }

        public Cfor(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11205do = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.f11205do = typedArrayObtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            int i = R.styleable.AppBarLayout_Layout_layout_scrollInterpolator;
            if (typedArrayObtainStyledAttributes.hasValue(i)) {
                this.f11206if = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        /* renamed from: do, reason: not valid java name */
        public int m12631do() {
            return this.f11205do;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m12632for() {
            int i = this.f11205do;
            return (i & 1) == 1 && (i & 10) != 0;
        }

        /* renamed from: if, reason: not valid java name */
        public Interpolator m12633if() {
            return this.f11206if;
        }

        /* renamed from: new, reason: not valid java name */
        public void m12634new(int i) {
            this.f11205do = i;
        }

        /* renamed from: try, reason: not valid java name */
        public void m12635try(Interpolator interpolator) {
            this.f11206if = interpolator;
        }

        public Cfor(int i, int i2) {
            super(i, i2);
            this.f11205do = 1;
        }

        public Cfor(int i, int i2, float f) {
            super(i, i2, f);
            this.f11205do = 1;
        }

        public Cfor(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11205do = 1;
        }

        public Cfor(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f11205do = 1;
        }

        @RequiresApi(19)
        public Cfor(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11205do = 1;
        }

        @RequiresApi(19)
        public Cfor(@NonNull Cfor cfor) {
            super((LinearLayout.LayoutParams) cfor);
            this.f11205do = 1;
            this.f11205do = cfor.f11205do;
            this.f11206if = cfor.f11206if;
        }
    }
}
