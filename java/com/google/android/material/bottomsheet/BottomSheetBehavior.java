package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.sx0;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.common.collect.LinkedHashMultimap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final float A = 0.5f;
    private static final float B = 0.1f;
    private static final int C = 500;
    private static final int D = -1;
    private static final int E = R.style.Widget_Design_BottomSheet_Modal;
    public static final int l = 1;
    public static final int m = 2;
    public static final int n = 3;
    public static final int o = 4;
    public static final int p = 5;
    public static final int q = 6;
    public static final int r = -1;
    public static final int s = 1;
    public static final int t = 2;
    public static final int u = 4;
    public static final int v = 8;
    public static final int w = -1;
    public static final int x = 0;
    private static final String y = "BottomSheetBehavior";
    private static final int z = 500;
    public int a;

    /* renamed from: abstract, reason: not valid java name */
    public boolean f11416abstract;

    @Nullable
    public WeakReference<V> b;

    /* renamed from: break, reason: not valid java name */
    private MaterialShapeDrawable f11417break;

    @Nullable
    public WeakReference<View> c;

    /* renamed from: case, reason: not valid java name */
    private boolean f11418case;

    /* renamed from: catch, reason: not valid java name */
    private int f11419catch;

    /* renamed from: class, reason: not valid java name */
    private int f11420class;

    /* renamed from: const, reason: not valid java name */
    private boolean f11421const;

    /* renamed from: continue, reason: not valid java name */
    private boolean f11422continue;

    @NonNull
    private final ArrayList<Celse> d;

    /* renamed from: default, reason: not valid java name */
    public int f11423default;

    /* renamed from: do, reason: not valid java name */
    private int f11424do;

    @Nullable
    private VelocityTracker e;

    /* renamed from: else, reason: not valid java name */
    private int f11425else;

    /* renamed from: extends, reason: not valid java name */
    public int f11426extends;
    public int f;

    /* renamed from: final, reason: not valid java name */
    private boolean f11427final;

    /* renamed from: finally, reason: not valid java name */
    public float f11428finally;

    /* renamed from: for, reason: not valid java name */
    private boolean f11429for;
    private int g;

    /* renamed from: goto, reason: not valid java name */
    private int f11430goto;
    public boolean h;

    @Nullable
    private Map<View, Integer> i;

    /* renamed from: if, reason: not valid java name */
    private boolean f11431if;

    /* renamed from: implements, reason: not valid java name */
    private boolean f11432implements;

    /* renamed from: import, reason: not valid java name */
    private int f11433import;

    /* renamed from: instanceof, reason: not valid java name */
    private int f11434instanceof;

    /* renamed from: interface, reason: not valid java name */
    @Nullable
    public ViewDragHelper f11435interface;
    private int j;
    private final ViewDragHelper.Callback k;

    /* renamed from: native, reason: not valid java name */
    private int f11436native;

    /* renamed from: new, reason: not valid java name */
    private float f11437new;

    /* renamed from: package, reason: not valid java name */
    public int f11438package;

    /* renamed from: private, reason: not valid java name */
    public float f11439private;

    /* renamed from: protected, reason: not valid java name */
    private boolean f11440protected;

    /* renamed from: public, reason: not valid java name */
    private ShapeAppearanceModel f11441public;

    /* renamed from: return, reason: not valid java name */
    private boolean f11442return;

    /* renamed from: static, reason: not valid java name */
    private BottomSheetBehavior<V>.Cthis f11443static;

    /* renamed from: strictfp, reason: not valid java name */
    private boolean f11444strictfp;

    /* renamed from: super, reason: not valid java name */
    private boolean f11445super;

    /* renamed from: switch, reason: not valid java name */
    @Nullable
    private ValueAnimator f11446switch;

    /* renamed from: synchronized, reason: not valid java name */
    public int f11447synchronized;

    /* renamed from: this, reason: not valid java name */
    private boolean f11448this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f11449throw;

    /* renamed from: throws, reason: not valid java name */
    public int f11450throws;

    /* renamed from: transient, reason: not valid java name */
    private int f11451transient;

    /* renamed from: try, reason: not valid java name */
    private int f11452try;

    /* renamed from: volatile, reason: not valid java name */
    public int f11453volatile;

    /* renamed from: while, reason: not valid java name */
    private boolean f11454while;

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public final int f11455do;

        /* renamed from: for, reason: not valid java name */
        public boolean f11456for;

        /* renamed from: if, reason: not valid java name */
        public int f11457if;

        /* renamed from: new, reason: not valid java name */
        public boolean f11458new;

        /* renamed from: try, reason: not valid java name */
        public boolean f11459try;

        /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
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

        public SavedState(@NonNull Parcel parcel) {
            this(parcel, (ClassLoader) null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11455do);
            parcel.writeInt(this.f11457if);
            parcel.writeInt(this.f11456for ? 1 : 0);
            parcel.writeInt(this.f11458new ? 1 : 0);
            parcel.writeInt(this.f11459try ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11455do = parcel.readInt();
            this.f11457if = parcel.readInt();
            this.f11456for = parcel.readInt() == 1;
            this.f11458new = parcel.readInt() == 1;
            this.f11459try = parcel.readInt() == 1;
        }

        public SavedState(Parcelable parcelable, @NonNull BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f11455do = bottomSheetBehavior.f11453volatile;
            this.f11457if = ((BottomSheetBehavior) bottomSheetBehavior).f11452try;
            this.f11456for = ((BottomSheetBehavior) bottomSheetBehavior).f11431if;
            this.f11458new = bottomSheetBehavior.f11416abstract;
            this.f11459try = ((BottomSheetBehavior) bottomSheetBehavior).f11422continue;
        }

        @Deprecated
        public SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f11455do = i;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$break, reason: invalid class name */
    public @interface Cbreak {
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$case, reason: invalid class name */
    public class Ccase implements AccessibilityViewCommand {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f11460do;

        public Ccase(int i) {
            this.f11460do = i;
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            BottomSheetBehavior.this.r(this.f11460do);
            return true;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f11462do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ViewGroup.LayoutParams f11464if;

        public Cdo(View view, ViewGroup.LayoutParams layoutParams) {
            this.f11462do = view;
            this.f11464if = layoutParams;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11462do.setLayoutParams(this.f11464if);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$else, reason: invalid class name */
    public static abstract class Celse {
        /* renamed from: do, reason: not valid java name */
        public abstract void mo12895do(@NonNull View view, float f);

        /* renamed from: if, reason: not valid java name */
        public abstract void mo12896if(@NonNull View view, int i);
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$for, reason: invalid class name */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f11417break != null) {
                BottomSheetBehavior.this.f11417break.A(fFloatValue);
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$goto, reason: invalid class name */
    public @interface Cgoto {
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f11466do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f11468if;

        public Cif(View view, int i) {
            this.f11466do = view;
            this.f11468if = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.v(this.f11466do, this.f11468if);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$new, reason: invalid class name */
    public class Cnew implements ViewUtils.OnApplyWindowInsetsListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f11469do;

        public Cnew(boolean z) {
            this.f11469do = z;
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.Ctry ctry) {
            BottomSheetBehavior.this.f11436native = windowInsetsCompat.getSystemWindowInsetTop();
            boolean zM13610break = ViewUtils.m13610break(view);
            int paddingBottom = view.getPaddingBottom();
            int paddingLeft = view.getPaddingLeft();
            int paddingRight = view.getPaddingRight();
            if (BottomSheetBehavior.this.f11427final) {
                BottomSheetBehavior.this.f11433import = windowInsetsCompat.getSystemWindowInsetBottom();
                paddingBottom = ctry.f12139new + BottomSheetBehavior.this.f11433import;
            }
            if (BottomSheetBehavior.this.f11445super) {
                paddingLeft = (zM13610break ? ctry.f12137for : ctry.f12136do) + windowInsetsCompat.getSystemWindowInsetLeft();
            }
            if (BottomSheetBehavior.this.f11449throw) {
                paddingRight = (zM13610break ? ctry.f12136do : ctry.f12137for) + windowInsetsCompat.getSystemWindowInsetRight();
            }
            view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
            if (this.f11469do) {
                BottomSheetBehavior.this.f11420class = windowInsetsCompat.getMandatorySystemGestureInsets().bottom;
            }
            if (BottomSheetBehavior.this.f11427final || this.f11469do) {
                BottomSheetBehavior.this.C(false);
            }
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$this, reason: invalid class name */
    public class Cthis implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private final View f11471do;

        /* renamed from: for, reason: not valid java name */
        public int f11472for;

        /* renamed from: if, reason: not valid java name */
        private boolean f11473if;

        public Cthis(View view, int i) {
            this.f11471do = view;
            this.f11472for = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper viewDragHelper = BottomSheetBehavior.this.f11435interface;
            if (viewDragHelper == null || !viewDragHelper.continueSettling(true)) {
                BottomSheetBehavior.this.s(this.f11472for);
            } else {
                ViewCompat.postOnAnimation(this.f11471do, this);
            }
            this.f11473if = false;
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetBehavior$try, reason: invalid class name */
    public class Ctry extends ViewDragHelper.Callback {
        public Ctry() {
        }

        /* renamed from: do, reason: not valid java name */
        private boolean m12899do(@NonNull View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.a + bottomSheetBehavior.m12879finally()) / 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            int iM12879finally = BottomSheetBehavior.this.m12879finally();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return MathUtils.clamp(i, iM12879finally, bottomSheetBehavior.f11416abstract ? bottomSheetBehavior.a : bottomSheetBehavior.f11438package);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewVerticalDragRange(@NonNull View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f11416abstract ? bottomSheetBehavior.a : bottomSheetBehavior.f11438package;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (i == 1 && BottomSheetBehavior.this.f11444strictfp) {
                BottomSheetBehavior.this.s(1);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.m12890throws(i2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f, float f2) {
            int iM12879finally;
            int i = 4;
            if (f2 < 0.0f) {
                if (BottomSheetBehavior.this.f11431if) {
                    iM12879finally = BottomSheetBehavior.this.f11423default;
                } else {
                    int top = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    int i2 = bottomSheetBehavior.f11426extends;
                    if (top > i2) {
                        iM12879finally = i2;
                        i = 6;
                    } else {
                        iM12879finally = bottomSheetBehavior.m12879finally();
                    }
                }
                i = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                if (bottomSheetBehavior2.f11416abstract && bottomSheetBehavior2.x(view, f2)) {
                    if ((Math.abs(f) >= Math.abs(f2) || f2 <= 500.0f) && !m12899do(view)) {
                        if (BottomSheetBehavior.this.f11431if) {
                            iM12879finally = BottomSheetBehavior.this.f11423default;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.m12879finally()) < Math.abs(view.getTop() - BottomSheetBehavior.this.f11426extends)) {
                            iM12879finally = BottomSheetBehavior.this.m12879finally();
                        } else {
                            iM12879finally = BottomSheetBehavior.this.f11426extends;
                            i = 6;
                        }
                        i = 3;
                    } else {
                        iM12879finally = BottomSheetBehavior.this.a;
                        i = 5;
                    }
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top2 = view.getTop();
                    if (!BottomSheetBehavior.this.f11431if) {
                        BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                        int i3 = bottomSheetBehavior3.f11426extends;
                        if (top2 < i3) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior3.f11438package)) {
                                iM12879finally = BottomSheetBehavior.this.m12879finally();
                                i = 3;
                            } else {
                                iM12879finally = BottomSheetBehavior.this.f11426extends;
                            }
                        } else if (Math.abs(top2 - i3) < Math.abs(top2 - BottomSheetBehavior.this.f11438package)) {
                            iM12879finally = BottomSheetBehavior.this.f11426extends;
                        } else {
                            iM12879finally = BottomSheetBehavior.this.f11438package;
                        }
                        i = 6;
                    } else if (Math.abs(top2 - BottomSheetBehavior.this.f11423default) < Math.abs(top2 - BottomSheetBehavior.this.f11438package)) {
                        iM12879finally = BottomSheetBehavior.this.f11423default;
                        i = 3;
                    } else {
                        iM12879finally = BottomSheetBehavior.this.f11438package;
                    }
                } else if (BottomSheetBehavior.this.f11431if) {
                    iM12879finally = BottomSheetBehavior.this.f11438package;
                } else {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - BottomSheetBehavior.this.f11426extends) < Math.abs(top3 - BottomSheetBehavior.this.f11438package)) {
                        iM12879finally = BottomSheetBehavior.this.f11426extends;
                        i = 6;
                    } else {
                        iM12879finally = BottomSheetBehavior.this.f11438package;
                    }
                }
            }
            BottomSheetBehavior.this.y(view, i, iM12879finally, true);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NonNull View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.f11453volatile;
            if (i2 == 1 || bottomSheetBehavior.h) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.f == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.c;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.b;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    public BottomSheetBehavior() {
        this.f11424do = 0;
        this.f11431if = true;
        this.f11429for = false;
        this.f11419catch = -1;
        this.f11443static = null;
        this.f11428finally = 0.5f;
        this.f11439private = -1.0f;
        this.f11444strictfp = true;
        this.f11453volatile = 4;
        this.d = new ArrayList<>();
        this.j = -1;
        this.k = new Ctry();
    }

    private void A(int i) {
        ValueAnimator valueAnimator;
        if (i == 2) {
            return;
        }
        boolean z2 = i == 3;
        if (this.f11442return != z2) {
            this.f11442return = z2;
            if (this.f11417break == null || (valueAnimator = this.f11446switch) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.f11446switch.reverse();
                return;
            }
            float f = z2 ? 0.0f : 1.0f;
            this.f11446switch.setFloatValues(1.0f - f, f);
            this.f11446switch.start();
        }
    }

    private void B(boolean z2) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.b;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z2) {
                if (this.i != null) {
                    return;
                } else {
                    this.i = new HashMap(childCount);
                }
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt != this.b.get()) {
                    if (z2) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.f11429for) {
                            ViewCompat.setImportantForAccessibility(childAt, 4);
                        }
                    } else if (this.f11429for && (map = this.i) != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.i.get(childAt).intValue());
                    }
                }
            }
            if (!z2) {
                this.i = null;
            } else if (this.f11429for) {
                this.b.get().sendAccessibilityEvent(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(boolean z2) {
        V v2;
        if (this.b != null) {
            m12872throw();
            if (this.f11453volatile != 4 || (v2 = this.b.get()) == null) {
                return;
            }
            if (z2) {
                w(this.f11453volatile);
            } else {
                v2.requestLayout();
            }
        }
    }

    private void c(V v2, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, int i) {
        ViewCompat.replaceAccessibilityAction(v2, accessibilityActionCompat, null, m12866native(i));
    }

    private void d() {
        this.f = -1;
        VelocityTracker velocityTracker = this.e;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.e = null;
        }
    }

    private void e(@NonNull SavedState savedState) {
        int i = this.f11424do;
        if (i == 0) {
            return;
        }
        if (i == -1 || (i & 1) == 1) {
            this.f11452try = savedState.f11457if;
        }
        if (i == -1 || (i & 2) == 2) {
            this.f11431if = savedState.f11456for;
        }
        if (i == -1 || (i & 4) == 4) {
            this.f11416abstract = savedState.f11458new;
        }
        if (i == -1 || (i & 8) == 8) {
            this.f11422continue = savedState.f11459try;
        }
    }

    @NonNull
    /* renamed from: extends, reason: not valid java name */
    public static <V extends View> BottomSheetBehavior<V> m12860extends(@NonNull V v2) {
        ViewGroup.LayoutParams layoutParams = v2.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (behavior instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) behavior;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    /* renamed from: final, reason: not valid java name */
    private int m12861final(V v2, @StringRes int i, int i2) {
        return ViewCompat.addAccessibilityAction(v2, v2.getResources().getString(i), m12866native(i2));
    }

    /* renamed from: import, reason: not valid java name */
    private int m12865import() {
        int i;
        return this.f11418case ? Math.min(Math.max(this.f11425else, this.a - ((this.f11447synchronized * 9) / 16)), this.f11434instanceof) + this.f11433import : (this.f11421const || this.f11427final || (i = this.f11420class) <= 0) ? this.f11452try + this.f11433import : Math.max(this.f11452try, i + this.f11430goto);
    }

    /* renamed from: native, reason: not valid java name */
    private AccessibilityViewCommand m12866native(int i) {
        return new Ccase(i);
    }

    /* renamed from: public, reason: not valid java name */
    private void m12868public(@NonNull Context context, AttributeSet attributeSet, boolean z2) {
        m12869return(context, attributeSet, z2, null);
    }

    /* renamed from: return, reason: not valid java name */
    private void m12869return(@NonNull Context context, AttributeSet attributeSet, boolean z2, @Nullable ColorStateList colorStateList) {
        if (this.f11448this) {
            this.f11441public = ShapeAppearanceModel.m13971try(context, attributeSet, R.attr.bottomSheetStyle, E).m14003const();
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f11441public);
            this.f11417break = materialShapeDrawable;
            materialShapeDrawable.k(context);
            if (z2 && colorStateList != null) {
                this.f11417break.z(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
            this.f11417break.setTint(typedValue.data);
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m12870static() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f11446switch = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f11446switch.addUpdateListener(new Cfor());
    }

    /* renamed from: throw, reason: not valid java name */
    private void m12872throw() {
        int iM12865import = m12865import();
        if (this.f11431if) {
            this.f11438package = Math.max(this.a - iM12865import, this.f11423default);
        } else {
            this.f11438package = this.a - iM12865import;
        }
    }

    /* renamed from: transient, reason: not valid java name */
    private float m12873transient() {
        VelocityTracker velocityTracker = this.e;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f11437new);
        return this.e.getYVelocity(this.f);
    }

    private void u(@NonNull View view) {
        boolean z2 = (Build.VERSION.SDK_INT < 29 || m12889synchronized() || this.f11418case) ? false : true;
        if (this.f11427final || this.f11445super || this.f11449throw || z2) {
            ViewUtils.m13621new(view, new Cnew(z2));
        }
    }

    private void w(int i) {
        V v2 = this.b.get();
        if (v2 == null) {
            return;
        }
        ViewParent parent = v2.getParent();
        if (parent != null && parent.isLayoutRequested() && ViewCompat.isAttachedToWindow(v2)) {
            v2.post(new Cif(v2, i));
        } else {
            v(v2, i);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m12875while() {
        this.f11426extends = (int) (this.a * (1.0f - this.f11428finally));
    }

    private void z() {
        V v2;
        WeakReference<V> weakReference = this.b;
        if (weakReference == null || (v2 = weakReference.get()) == null) {
            return;
        }
        ViewCompat.removeAccessibilityAction(v2, 524288);
        ViewCompat.removeAccessibilityAction(v2, 262144);
        ViewCompat.removeAccessibilityAction(v2, 1048576);
        int i = this.j;
        if (i != -1) {
            ViewCompat.removeAccessibilityAction(v2, i);
        }
        if (!this.f11431if && this.f11453volatile != 6) {
            this.j = m12861final(v2, R.string.bottomsheet_action_expand_halfway, 6);
        }
        if (this.f11416abstract && this.f11453volatile != 5) {
            c(v2, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, 5);
        }
        int i2 = this.f11453volatile;
        if (i2 == 3) {
            c(v2, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, this.f11431if ? 4 : 6);
            return;
        }
        if (i2 == 4) {
            c(v2, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, this.f11431if ? 3 : 6);
        } else {
            if (i2 != 6) {
                return;
            }
            c(v2, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_COLLAPSE, 4);
            c(v2, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_EXPAND, 3);
        }
    }

    public boolean a() {
        return this.f11416abstract;
    }

    @Px
    /* renamed from: abstract, reason: not valid java name */
    public int m12876abstract() {
        return this.f11419catch;
    }

    public void b(@NonNull Celse celse) {
        this.d.remove(celse);
    }

    /* renamed from: continue, reason: not valid java name */
    public int m12877continue() {
        if (this.f11418case) {
            return -1;
        }
        return this.f11452try;
    }

    @Nullable
    @VisibleForTesting
    /* renamed from: default, reason: not valid java name */
    public View m12878default(View view) {
        if (ViewCompat.isNestedScrollingEnabled(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewM12878default = m12878default(viewGroup.getChildAt(i));
            if (viewM12878default != null) {
                return viewM12878default;
            }
        }
        return null;
    }

    @Deprecated
    public void f(Celse celse) {
        this.d.clear();
        if (celse != null) {
            this.d.add(celse);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public int m12879finally() {
        if (this.f11431if) {
            return this.f11423default;
        }
        return Math.max(this.f11450throws, this.f11454while ? 0 : this.f11436native);
    }

    public void g(boolean z2) {
        this.f11444strictfp = z2;
    }

    public void h(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.f11450throws = i;
    }

    public void i(boolean z2) {
        if (this.f11431if == z2) {
            return;
        }
        this.f11431if = z2;
        if (this.b != null) {
            m12872throw();
        }
        s((this.f11431if && this.f11453volatile == 6) ? 3 : this.f11453volatile);
        z();
    }

    /* renamed from: implements, reason: not valid java name */
    public boolean m12880implements() {
        return this.f11444strictfp;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public boolean m12881instanceof() {
        return this.f11431if;
    }

    /* renamed from: interface, reason: not valid java name */
    public boolean m12882interface() {
        return this.f11422continue;
    }

    public void j(boolean z2) {
        this.f11421const = z2;
    }

    public void k(@FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        if (f <= 0.0f || f >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f11428finally = f;
        if (this.b != null) {
            m12875while();
        }
    }

    public void l(boolean z2) {
        if (this.f11416abstract != z2) {
            this.f11416abstract = z2;
            if (!z2 && this.f11453volatile == 5) {
                r(4);
            }
            z();
        }
    }

    public void m(@Px int i) {
        this.f11419catch = i;
    }

    public void n(int i) {
        o(i, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o(int i, boolean z2) {
        boolean z3 = true;
        if (i == -1) {
            if (this.f11418case) {
                z3 = false;
            } else {
                this.f11418case = true;
            }
        } else if (this.f11418case || this.f11452try != i) {
            this.f11418case = false;
            this.f11452try = Math.max(0, i);
        }
        if (z3) {
            C(z2);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        super.onAttachedToLayoutParams(layoutParams);
        this.b = null;
        this.f11435interface = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDetachedFromLayoutParams() {
        super.onDetachedFromLayoutParams();
        this.b = null;
        this.f11435interface = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper;
        if (!v2.isShown() || !this.f11444strictfp) {
            this.f11440protected = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            d();
        }
        if (this.e == null) {
            this.e = VelocityTracker.obtain();
        }
        this.e.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x2 = (int) motionEvent.getX();
            this.g = (int) motionEvent.getY();
            if (this.f11453volatile != 2) {
                WeakReference<View> weakReference = this.c;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.isPointInChildBounds(view, x2, this.g)) {
                    this.f = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.h = true;
                }
            }
            this.f11440protected = this.f == -1 && !coordinatorLayout.isPointInChildBounds(v2, x2, this.g);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.h = false;
            this.f = -1;
            if (this.f11440protected) {
                this.f11440protected = false;
                return false;
            }
        }
        if (!this.f11440protected && (viewDragHelper = this.f11435interface) != null && viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.c;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.f11440protected || this.f11453volatile == 1 || coordinatorLayout.isPointInChildBounds(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.f11435interface == null || Math.abs(((float) this.g) - motionEvent.getY()) <= ((float) this.f11435interface.getTouchSlop())) ? false : true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, int i) {
        MaterialShapeDrawable materialShapeDrawable;
        if (ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(v2)) {
            v2.setFitsSystemWindows(true);
        }
        if (this.b == null) {
            this.f11425else = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            u(v2);
            this.b = new WeakReference<>(v2);
            if (this.f11448this && (materialShapeDrawable = this.f11417break) != null) {
                ViewCompat.setBackground(v2, materialShapeDrawable);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.f11417break;
            if (materialShapeDrawable2 != null) {
                float elevation = this.f11439private;
                if (elevation == -1.0f) {
                    elevation = ViewCompat.getElevation(v2);
                }
                materialShapeDrawable2.y(elevation);
                boolean z2 = this.f11453volatile == 3;
                this.f11442return = z2;
                this.f11417break.A(z2 ? 0.0f : 1.0f);
            }
            z();
            if (ViewCompat.getImportantForAccessibility(v2) == 0) {
                ViewCompat.setImportantForAccessibility(v2, 1);
            }
            int measuredWidth = v2.getMeasuredWidth();
            int i2 = this.f11419catch;
            if (measuredWidth > i2 && i2 != -1) {
                ViewGroup.LayoutParams layoutParams = v2.getLayoutParams();
                layoutParams.width = this.f11419catch;
                v2.post(new Cdo(v2, layoutParams));
            }
        }
        if (this.f11435interface == null) {
            this.f11435interface = ViewDragHelper.create(coordinatorLayout, this.k);
        }
        int top = v2.getTop();
        coordinatorLayout.onLayoutChild(v2, i);
        this.f11447synchronized = coordinatorLayout.getWidth();
        this.a = coordinatorLayout.getHeight();
        int height = v2.getHeight();
        this.f11434instanceof = height;
        int i3 = this.a;
        int i4 = i3 - height;
        int i5 = this.f11436native;
        if (i4 < i5) {
            if (this.f11454while) {
                this.f11434instanceof = i3;
            } else {
                this.f11434instanceof = i3 - i5;
            }
        }
        this.f11423default = Math.max(0, i3 - this.f11434instanceof);
        m12875while();
        m12872throw();
        int i6 = this.f11453volatile;
        if (i6 == 3) {
            ViewCompat.offsetTopAndBottom(v2, m12879finally());
        } else if (i6 == 6) {
            ViewCompat.offsetTopAndBottom(v2, this.f11426extends);
        } else if (this.f11416abstract && i6 == 5) {
            ViewCompat.offsetTopAndBottom(v2, this.a);
        } else if (i6 == 4) {
            ViewCompat.offsetTopAndBottom(v2, this.f11438package);
        } else if (i6 == 1 || i6 == 2) {
            ViewCompat.offsetTopAndBottom(v2, top - v2.getTop());
        }
        this.c = new WeakReference<>(m12878default(v2));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull View view, float f, float f2) {
        WeakReference<View> weakReference = this.c;
        if (weakReference == null || view != weakReference.get()) {
            return false;
        }
        return this.f11453volatile != 3 || super.onNestedPreFling(coordinatorLayout, v2, view, f, f2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
        if (i3 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.c;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v2.getTop();
        int i4 = top - i2;
        if (i2 > 0) {
            if (i4 < m12879finally()) {
                iArr[1] = top - m12879finally();
                ViewCompat.offsetTopAndBottom(v2, -iArr[1]);
                s(3);
            } else {
                if (!this.f11444strictfp) {
                    return;
                }
                iArr[1] = i2;
                ViewCompat.offsetTopAndBottom(v2, -i2);
                s(1);
            }
        } else if (i2 < 0 && !view.canScrollVertically(-1)) {
            int i5 = this.f11438package;
            if (i4 > i5 && !this.f11416abstract) {
                iArr[1] = top - i5;
                ViewCompat.offsetTopAndBottom(v2, -iArr[1]);
                s(4);
            } else {
                if (!this.f11444strictfp) {
                    return;
                }
                iArr[1] = i2;
                ViewCompat.offsetTopAndBottom(v2, -i2);
                s(1);
            }
        }
        m12890throws(v2.getTop());
        this.f11451transient = i2;
        this.f11432implements = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(coordinatorLayout, v2, savedState.getSuperState());
        e(savedState);
        int i = savedState.f11455do;
        if (i == 1 || i == 2) {
            this.f11453volatile = 4;
        } else {
            this.f11453volatile = i;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @NonNull
    public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2) {
        return new SavedState(super.onSaveInstanceState(coordinatorLayout, v2), (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull View view, @NonNull View view2, int i, int i2) {
        this.f11451transient = 0;
        this.f11432implements = false;
        return (i & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull View view, int i) {
        int iM12879finally;
        int i2 = 3;
        if (v2.getTop() == m12879finally()) {
            s(3);
            return;
        }
        WeakReference<View> weakReference = this.c;
        if (weakReference != null && view == weakReference.get() && this.f11432implements) {
            if (this.f11451transient > 0) {
                if (this.f11431if) {
                    iM12879finally = this.f11423default;
                } else {
                    int top = v2.getTop();
                    int i3 = this.f11426extends;
                    if (top > i3) {
                        iM12879finally = i3;
                        i2 = 6;
                    } else {
                        iM12879finally = m12879finally();
                    }
                }
            } else if (this.f11416abstract && x(v2, m12873transient())) {
                iM12879finally = this.a;
                i2 = 5;
            } else if (this.f11451transient == 0) {
                int top2 = v2.getTop();
                if (!this.f11431if) {
                    int i4 = this.f11426extends;
                    if (top2 < i4) {
                        if (top2 < Math.abs(top2 - this.f11438package)) {
                            iM12879finally = m12879finally();
                        } else {
                            iM12879finally = this.f11426extends;
                        }
                    } else if (Math.abs(top2 - i4) < Math.abs(top2 - this.f11438package)) {
                        iM12879finally = this.f11426extends;
                    } else {
                        iM12879finally = this.f11438package;
                        i2 = 4;
                    }
                    i2 = 6;
                } else if (Math.abs(top2 - this.f11423default) < Math.abs(top2 - this.f11438package)) {
                    iM12879finally = this.f11423default;
                } else {
                    iM12879finally = this.f11438package;
                    i2 = 4;
                }
            } else {
                if (this.f11431if) {
                    iM12879finally = this.f11438package;
                } else {
                    int top3 = v2.getTop();
                    if (Math.abs(top3 - this.f11426extends) < Math.abs(top3 - this.f11438package)) {
                        iM12879finally = this.f11426extends;
                        i2 = 6;
                    } else {
                        iM12879finally = this.f11438package;
                    }
                }
                i2 = 4;
            }
            y(v2, i2, iM12879finally, false);
            this.f11432implements = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v2, @NonNull MotionEvent motionEvent) {
        if (!v2.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f11453volatile == 1 && actionMasked == 0) {
            return true;
        }
        ViewDragHelper viewDragHelper = this.f11435interface;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
        }
        if (actionMasked == 0) {
            d();
        }
        if (this.e == null) {
            this.e = VelocityTracker.obtain();
        }
        this.e.addMovement(motionEvent);
        if (this.f11435interface != null && actionMasked == 2 && !this.f11440protected && Math.abs(this.g - motionEvent.getY()) > this.f11435interface.getTouchSlop()) {
            this.f11435interface.captureChildView(v2, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.f11440protected;
    }

    public void p(int i) {
        this.f11424do = i;
    }

    @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR)
    /* renamed from: package, reason: not valid java name */
    public float m12883package() {
        return this.f11428finally;
    }

    /* renamed from: private, reason: not valid java name */
    public MaterialShapeDrawable m12884private() {
        return this.f11417break;
    }

    /* renamed from: protected, reason: not valid java name */
    public int m12885protected() {
        return this.f11453volatile;
    }

    public void q(boolean z2) {
        this.f11422continue = z2;
    }

    public void r(int i) {
        if (i == this.f11453volatile) {
            return;
        }
        if (this.b != null) {
            w(i);
            return;
        }
        if (i == 4 || i == 3 || i == 6 || (this.f11416abstract && i == 5)) {
            this.f11453volatile = i;
        }
    }

    public void s(int i) {
        V v2;
        if (this.f11453volatile == i) {
            return;
        }
        this.f11453volatile = i;
        WeakReference<V> weakReference = this.b;
        if (weakReference == null || (v2 = weakReference.get()) == null) {
            return;
        }
        if (i == 3) {
            B(true);
        } else if (i == 6 || i == 5 || i == 4) {
            B(false);
        }
        A(i);
        for (int i2 = 0; i2 < this.d.size(); i2++) {
            this.d.get(i2).mo12896if(v2, i);
        }
        z();
    }

    @VisibleForTesting
    /* renamed from: strictfp, reason: not valid java name */
    public int m12886strictfp() {
        return this.f11425else;
    }

    /* renamed from: super, reason: not valid java name */
    public void m12887super(@NonNull Celse celse) {
        if (this.d.contains(celse)) {
            return;
        }
        this.d.add(celse);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    /* renamed from: switch, reason: not valid java name */
    public void m12888switch() {
        this.f11446switch = null;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public boolean m12889synchronized() {
        return this.f11421const;
    }

    public void t(boolean z2) {
        this.f11429for = z2;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m12890throws(int i) {
        float f;
        float fM12879finally;
        V v2 = this.b.get();
        if (v2 == null || this.d.isEmpty()) {
            return;
        }
        int i2 = this.f11438package;
        if (i > i2 || i2 == m12879finally()) {
            int i3 = this.f11438package;
            f = i3 - i;
            fM12879finally = this.a - i3;
        } else {
            int i4 = this.f11438package;
            f = i4 - i;
            fM12879finally = i4 - m12879finally();
        }
        float f2 = f / fM12879finally;
        for (int i5 = 0; i5 < this.d.size(); i5++) {
            this.d.get(i5).mo12895do(v2, f2);
        }
    }

    public void v(@NonNull View view, int i) {
        int iM12879finally;
        int i2;
        if (i == 4) {
            iM12879finally = this.f11438package;
        } else if (i == 6) {
            int i3 = this.f11426extends;
            if (!this.f11431if || i3 > (i2 = this.f11423default)) {
                iM12879finally = i3;
            } else {
                iM12879finally = i2;
                i = 3;
            }
        } else if (i == 3) {
            iM12879finally = m12879finally();
        } else {
            if (!this.f11416abstract || i != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i);
            }
            iM12879finally = this.a;
        }
        y(view, i, iM12879finally, false);
    }

    /* renamed from: volatile, reason: not valid java name */
    public int m12891volatile() {
        return this.f11424do;
    }

    public boolean x(@NonNull View view, float f) {
        if (this.f11422continue) {
            return true;
        }
        if (view.getTop() < this.f11438package) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f * 0.1f)) - ((float) this.f11438package)) / ((float) m12865import()) > 0.5f;
    }

    public void y(View view, int i, int i2, boolean z2) {
        ViewDragHelper viewDragHelper = this.f11435interface;
        if (!(viewDragHelper != null && (!z2 ? !viewDragHelper.smoothSlideViewTo(view, view.getLeft(), i2) : !viewDragHelper.settleCapturedViewAt(view.getLeft(), i2)))) {
            s(i);
            return;
        }
        s(2);
        A(i);
        if (this.f11443static == null) {
            this.f11443static = new Cthis(view, i);
        }
        if (((Cthis) this.f11443static).f11473if) {
            this.f11443static.f11472for = i;
            return;
        }
        BottomSheetBehavior<V>.Cthis cthis = this.f11443static;
        cthis.f11472for = i;
        ViewCompat.postOnAnimation(view, cthis);
        ((Cthis) this.f11443static).f11473if = true;
    }

    public BottomSheetBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        int i;
        super(context, attributeSet);
        this.f11424do = 0;
        this.f11431if = true;
        this.f11429for = false;
        this.f11419catch = -1;
        this.f11443static = null;
        this.f11428finally = 0.5f;
        this.f11439private = -1.0f;
        this.f11444strictfp = true;
        this.f11453volatile = 4;
        this.d = new ArrayList<>();
        this.j = -1;
        this.k = new Ctry();
        this.f11430goto = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheetBehavior_Layout);
        this.f11448this = typedArrayObtainStyledAttributes.hasValue(R.styleable.BottomSheetBehavior_Layout_shapeAppearance);
        int i2 = R.styleable.BottomSheetBehavior_Layout_backgroundTint;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i2);
        if (zHasValue) {
            m12869return(context, attributeSet, zHasValue, sx0.m7649do(context, typedArrayObtainStyledAttributes, i2));
        } else {
            m12868public(context, attributeSet, zHasValue);
        }
        m12870static();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f11439private = typedArrayObtainStyledAttributes.getDimension(R.styleable.BottomSheetBehavior_Layout_android_elevation, -1.0f);
        }
        int i3 = R.styleable.BottomSheetBehavior_Layout_android_maxWidth;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            m(typedArrayObtainStyledAttributes.getDimensionPixelSize(i3, -1));
        }
        int i4 = R.styleable.BottomSheetBehavior_Layout_behavior_peekHeight;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i4);
        if (typedValuePeekValue != null && (i = typedValuePeekValue.data) == -1) {
            n(i);
        } else {
            n(typedArrayObtainStyledAttributes.getDimensionPixelSize(i4, -1));
        }
        l(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_hideable, false));
        j(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_gestureInsetBottomIgnored, false));
        i(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_fitToContents, true));
        q(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_skipCollapsed, false));
        g(typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_behavior_draggable, true));
        p(typedArrayObtainStyledAttributes.getInt(R.styleable.BottomSheetBehavior_Layout_behavior_saveFlags, 0));
        k(typedArrayObtainStyledAttributes.getFloat(R.styleable.BottomSheetBehavior_Layout_behavior_halfExpandedRatio, 0.5f));
        int i5 = R.styleable.BottomSheetBehavior_Layout_behavior_expandedOffset;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i5);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            h(typedValuePeekValue2.data);
        } else {
            h(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i5, 0));
        }
        this.f11427final = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingBottomSystemWindowInsets, false);
        this.f11445super = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingLeftSystemWindowInsets, false);
        this.f11449throw = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingRightSystemWindowInsets, false);
        this.f11454while = typedArrayObtainStyledAttributes.getBoolean(R.styleable.BottomSheetBehavior_Layout_paddingTopSystemWindowInsets, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f11437new = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
