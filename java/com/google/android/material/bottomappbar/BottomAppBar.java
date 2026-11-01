package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.ec;
import android.support.v4.k62;
import android.support.v4.sx0;
import android.support.v4.tx0;
import android.support.v4.vx0;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Dimension;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.AttachedBehavior {

    /* renamed from: default, reason: not valid java name */
    public static final int f11355default = 1;

    /* renamed from: extends, reason: not valid java name */
    public static final int f11356extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f11357finally = 1;

    /* renamed from: package, reason: not valid java name */
    private static final int f11358package = 0;

    /* renamed from: static, reason: not valid java name */
    private static final int f11359static = R.style.Widget_MaterialComponents_BottomAppBar;

    /* renamed from: switch, reason: not valid java name */
    private static final long f11360switch = 300;

    /* renamed from: throws, reason: not valid java name */
    public static final int f11361throws = 0;

    /* renamed from: break, reason: not valid java name */
    private final boolean f11362break;

    /* renamed from: case, reason: not valid java name */
    private int f11363case;

    /* renamed from: catch, reason: not valid java name */
    private int f11364catch;

    /* renamed from: class, reason: not valid java name */
    private ArrayList<AnimationListener> f11365class;

    /* renamed from: const, reason: not valid java name */
    @MenuRes
    private int f11366const;

    /* renamed from: do, reason: not valid java name */
    private final int f11367do;

    /* renamed from: else, reason: not valid java name */
    private boolean f11368else;

    /* renamed from: final, reason: not valid java name */
    private boolean f11369final;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private Animator f11370for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f11371goto;

    /* renamed from: if, reason: not valid java name */
    private final MaterialShapeDrawable f11372if;

    /* renamed from: import, reason: not valid java name */
    private int f11373import;

    /* renamed from: native, reason: not valid java name */
    private int f11374native;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private Animator f11375new;

    /* renamed from: public, reason: not valid java name */
    @NonNull
    public AnimatorListenerAdapter f11376public;

    /* renamed from: return, reason: not valid java name */
    @NonNull
    public TransformationCallback<FloatingActionButton> f11377return;

    /* renamed from: super, reason: not valid java name */
    private boolean f11378super;

    /* renamed from: this, reason: not valid java name */
    private final boolean f11379this;

    /* renamed from: throw, reason: not valid java name */
    private Behavior f11380throw;

    /* renamed from: try, reason: not valid java name */
    private int f11381try;

    /* renamed from: while, reason: not valid java name */
    private int f11382while;

    public interface AnimationListener {
        void onAnimationEnd(BottomAppBar bottomAppBar);

        void onAnimationStart(BottomAppBar bottomAppBar);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public int f11388do;

        /* renamed from: if, reason: not valid java name */
        public boolean f11389if;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$SavedState$do, reason: invalid class name */
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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11388do);
            parcel.writeInt(this.f11389if ? 1 : 0);
        }

        public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f11388do = parcel.readInt();
            this.f11389if = parcel.readInt() != 0;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$break, reason: invalid class name */
    public @interface Cbreak {
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$case, reason: invalid class name */
    public class Ccase extends AnimatorListenerAdapter {
        public Ccase() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.a();
            BottomAppBar.this.f11369final = false;
            BottomAppBar.this.f11375new = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.b();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$catch, reason: invalid class name */
    public @interface Ccatch {
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {
        public Cdo() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (BottomAppBar.this.f11369final) {
                return;
            }
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.h(bottomAppBar.f11381try, BottomAppBar.this.f11378super);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$else, reason: invalid class name */
    public class Celse extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public boolean f11392do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f11393for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ ActionMenuView f11394if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f11395new;

        public Celse(ActionMenuView actionMenuView, int i, boolean z) {
            this.f11394if = actionMenuView;
            this.f11393for = i;
            this.f11395new = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f11392do = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f11392do) {
                return;
            }
            boolean z = BottomAppBar.this.f11366const != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.m(bottomAppBar.f11366const);
            BottomAppBar.this.s(this.f11394if, this.f11393for, this.f11395new, z);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$for, reason: invalid class name */
    public class Cfor implements ViewUtils.OnApplyWindowInsetsListener {
        public Cfor() {
        }

        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull ViewUtils.Ctry ctry) {
            boolean z;
            if (BottomAppBar.this.f11371goto) {
                BottomAppBar.this.f11382while = windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean z2 = false;
            if (BottomAppBar.this.f11379this) {
                z = BottomAppBar.this.f11374native != windowInsetsCompat.getSystemWindowInsetLeft();
                BottomAppBar.this.f11374native = windowInsetsCompat.getSystemWindowInsetLeft();
            } else {
                z = false;
            }
            if (BottomAppBar.this.f11362break) {
                boolean z3 = BottomAppBar.this.f11373import != windowInsetsCompat.getSystemWindowInsetRight();
                BottomAppBar.this.f11373import = windowInsetsCompat.getSystemWindowInsetRight();
                z2 = z3;
            }
            if (z || z2) {
                BottomAppBar.this.m12829transient();
                BottomAppBar.this.o();
                BottomAppBar.this.n();
            }
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$goto, reason: invalid class name */
    public class Cgoto implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ActionMenuView f11398do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f11399for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f11400if;

        public Cgoto(ActionMenuView actionMenuView, int i, boolean z) {
            this.f11398do = actionMenuView;
            this.f11400if = i;
            this.f11399for = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11398do.setTranslationX(BottomAppBar.this.e(r0, this.f11400if, this.f11399for));
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$if, reason: invalid class name */
    public class Cif implements TransformationCallback<FloatingActionButton> {
        public Cif() {
        }

        @Override // com.google.android.material.animation.TransformationCallback
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onScaleChanged(@NonNull FloatingActionButton floatingActionButton) {
            BottomAppBar.this.f11372if.A(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }

        @Override // com.google.android.material.animation.TransformationCallback
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onTranslationChanged(@NonNull FloatingActionButton floatingActionButton) {
            float translationX = floatingActionButton.getTranslationX();
            if (BottomAppBar.this.getTopEdgeTreatment().m1780this() != translationX) {
                BottomAppBar.this.getTopEdgeTreatment().m1779super(translationX);
                BottomAppBar.this.f11372if.invalidateSelf();
            }
            float fMax = Math.max(0.0f, -floatingActionButton.getTranslationY());
            if (BottomAppBar.this.getTopEdgeTreatment().m1778new() != fMax) {
                BottomAppBar.this.getTopEdgeTreatment().m1770break(fMax);
                BottomAppBar.this.f11372if.invalidateSelf();
            }
            BottomAppBar.this.f11372if.A(floatingActionButton.getVisibility() == 0 ? floatingActionButton.getScaleY() : 0.0f);
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$new, reason: invalid class name */
    public class Cnew extends AnimatorListenerAdapter {
        public Cnew() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.a();
            BottomAppBar.this.f11370for = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.b();
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$this, reason: invalid class name */
    public class Cthis extends AnimatorListenerAdapter {
        public Cthis() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f11376public.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonC = BottomAppBar.this.c();
            if (floatingActionButtonC != null) {
                floatingActionButtonC.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$try, reason: invalid class name */
    public class Ctry extends FloatingActionButton.Cif {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f11405do;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$try$do, reason: invalid class name */
        public class Cdo extends FloatingActionButton.Cif {
            public Cdo() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.Cif
            /* renamed from: if, reason: not valid java name */
            public void mo12846if(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.a();
            }
        }

        public Ctry(int i) {
            this.f11405do = i;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.Cif
        /* renamed from: do, reason: not valid java name */
        public void mo12845do(@NonNull FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.f(this.f11405do));
            floatingActionButton.show(new Cdo());
        }
    }

    public BottomAppBar(@NonNull Context context) {
        this(context, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ArrayList<AnimationListener> arrayList;
        int i = this.f11364catch - 1;
        this.f11364catch = i;
        if (i != 0 || (arrayList = this.f11365class) == null) {
            return;
        }
        Iterator<AnimationListener> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onAnimationEnd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ArrayList<AnimationListener> arrayList;
        int i = this.f11364catch;
        this.f11364catch = i + 1;
        if (i != 0 || (arrayList = this.f11365class) == null) {
            return;
        }
        Iterator<AnimationListener> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().onAnimationStart(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FloatingActionButton c() {
        View viewD = d();
        if (viewD instanceof FloatingActionButton) {
            return (FloatingActionButton) viewD;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public View d() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).getDependents(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float f(int i) {
        boolean zM13610break = ViewUtils.m13610break(this);
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - (this.f11367do + (zM13610break ? this.f11374native : this.f11373import))) * (zM13610break ? -1 : 1);
        }
        return 0.0f;
    }

    private boolean g() {
        FloatingActionButton floatingActionButtonC = c();
        return floatingActionButtonC != null && floatingActionButtonC.m13454super();
    }

    @Nullable
    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f11382while;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return f(this.f11381try);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().m1778new();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f11374native;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f11373import;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public ec getTopEdgeTreatment() {
        return (ec) this.f11372if.getShapeAppearanceModel().m13986throw();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(int i, boolean z) {
        if (!ViewCompat.isLaidOut(this)) {
            this.f11369final = false;
            m(this.f11366const);
            return;
        }
        Animator animator = this.f11375new;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!g()) {
            i = 0;
            z = false;
        }
        m12825synchronized(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f11375new = animatorSet;
        animatorSet.addListener(new Ccase());
        this.f11375new.start();
    }

    private void i(int i) {
        if (this.f11381try == i || !ViewCompat.isLaidOut(this)) {
            return;
        }
        Animator animator = this.f11370for;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f11363case == 1) {
            m12813instanceof(i, arrayList);
        } else {
            m12833implements(i, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f11370for = animatorSet;
        animatorSet.addListener(new Cnew());
        this.f11370for.start();
    }

    /* renamed from: instanceof, reason: not valid java name */
    private void m12813instanceof(int i, @NonNull List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(c(), "translationX", f(i));
        objectAnimatorOfFloat.setDuration(f11360switch);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f11375new != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (g()) {
            r(actionMenuView, this.f11381try, this.f11378super);
        } else {
            r(actionMenuView, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        getTopEdgeTreatment().m1779super(getFabTranslationX());
        View viewD = d();
        this.f11372if.A((this.f11378super && g()) ? 1.0f : 0.0f);
        if (viewD != null) {
            viewD.setTranslationY(getFabTranslationY());
            viewD.setTranslationX(getFabTranslationX());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public void m12818protected(@NonNull FloatingActionButton floatingActionButton) {
        floatingActionButton.m13451new(this.f11376public);
        floatingActionButton.m13458try(new Cthis());
        floatingActionButton.m13444case(this.f11377return);
    }

    private void r(@NonNull ActionMenuView actionMenuView, int i, boolean z) {
        s(actionMenuView, i, z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(@NonNull ActionMenuView actionMenuView, int i, boolean z, boolean z2) {
        Cgoto cgoto = new Cgoto(actionMenuView, i, z);
        if (z2) {
            actionMenuView.post(cgoto);
        } else {
            cgoto.run();
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m12825synchronized(int i, boolean z, @NonNull List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - e(actionMenuView, i, z)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(animatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat.addListener(new Celse(actionMenuView, i, z));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public void m12829transient() {
        Animator animator = this.f11375new;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f11370for;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    public int e(@NonNull ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean zM13610break = ViewUtils.m13610break(this);
        int measuredWidth = zM13610break ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).gravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 8388611) {
                measuredWidth = zM13610break ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zM13610break ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zM13610break ? this.f11373import : -this.f11374native));
    }

    @Nullable
    public ColorStateList getBackgroundTint() {
        return this.f11372if.c();
    }

    @Dimension
    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().m1778new();
    }

    public int getFabAlignmentMode() {
        return this.f11381try;
    }

    public int getFabAnimationMode() {
        return this.f11363case;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().m1771case();
    }

    @Dimension
    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().m1775else();
    }

    public boolean getHideOnScroll() {
        return this.f11368else;
    }

    /* renamed from: implements, reason: not valid java name */
    public void m12833implements(int i, List<Animator> list) {
        FloatingActionButton floatingActionButtonC = c();
        if (floatingActionButtonC == null || floatingActionButtonC.m13448final()) {
            return;
        }
        b();
        floatingActionButtonC.hide(new Ctry(i));
    }

    /* renamed from: interface, reason: not valid java name */
    public void m12834interface(@NonNull AnimationListener animationListener) {
        if (this.f11365class == null) {
            this.f11365class = new ArrayList<>();
        }
        this.f11365class.add(animationListener);
    }

    public void j() {
        getBehavior().m12780new(this);
    }

    public void k() {
        getBehavior().m12781try(this);
    }

    public void l(@NonNull AnimationListener animationListener) {
        ArrayList<AnimationListener> arrayList = this.f11365class;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animationListener);
    }

    public void m(@MenuRes int i) {
        if (i != 0) {
            this.f11366const = 0;
            getMenu().clear();
            inflateMenu(i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        tx0.m8140case(this, this.f11372if);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws NoSuchFieldException {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m12829transient();
            o();
        }
        n();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f11381try = savedState.f11388do;
        this.f11378super = savedState.f11389if;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11388do = this.f11381try;
        savedState.f11389if = this.f11378super;
        return savedState;
    }

    public void p(int i, @MenuRes int i2) {
        this.f11366const = i2;
        this.f11369final = true;
        h(i, this.f11378super);
        i(i);
        this.f11381try = i;
    }

    public boolean q(@Px int i) {
        float f = i;
        if (f == getTopEdgeTreatment().m1777goto()) {
            return false;
        }
        getTopEdgeTreatment().m1776final(f);
        this.f11372if.invalidateSelf();
        return true;
    }

    public void setBackgroundTint(@Nullable ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.f11372if, colorStateList);
    }

    public void setCradleVerticalOffset(@Dimension float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().m1770break(f);
            this.f11372if.invalidateSelf();
            o();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.f11372if.y(f);
        getBehavior().m12779for(this, this.f11372if.m13955protected() - this.f11372if.m13951interface());
    }

    public void setFabAlignmentMode(int i) {
        p(i, 0);
    }

    public void setFabAnimationMode(int i) {
        this.f11363case = i;
    }

    public void setFabCornerSize(@Dimension float f) {
        if (f != getTopEdgeTreatment().m1781try()) {
            getTopEdgeTreatment().m1772catch(f);
            this.f11372if.invalidateSelf();
        }
    }

    public void setFabCradleMargin(@Dimension float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().m1773class(f);
            this.f11372if.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(@Dimension float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m1774const(f);
            this.f11372if.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.f11368else = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomAppBarStyle);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public Behavior getBehavior() {
        if (this.f11380throw == null) {
            this.f11380throw = new Behavior();
        }
        return this.f11380throw;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* renamed from: break, reason: not valid java name */
        private WeakReference<BottomAppBar> f11383break;

        /* renamed from: catch, reason: not valid java name */
        private int f11384catch;

        /* renamed from: class, reason: not valid java name */
        private final View.OnLayoutChangeListener f11385class;

        /* renamed from: this, reason: not valid java name */
        @NonNull
        private final Rect f11386this;

        /* renamed from: com.google.android.material.bottomappbar.BottomAppBar$Behavior$do, reason: invalid class name */
        public class Cdo implements View.OnLayoutChangeListener {
            public Cdo() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f11383break.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.m13443break(Behavior.this.f11386this);
                int iHeight = Behavior.this.f11386this.height();
                bottomAppBar.q(iHeight);
                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().m13978import().getCornerSize(new RectF(Behavior.this.f11386this)));
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
                if (Behavior.this.f11384catch == 0) {
                    ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = bottomAppBar.getRightInset();
                    if (ViewUtils.m13610break(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin += bottomAppBar.f11367do;
                    } else {
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin += bottomAppBar.f11367do;
                    }
                }
            }
        }

        public Behavior() {
            this.f11385class = new Cdo();
            this.f11386this = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: break, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, @NonNull View view, @NonNull View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.onStartNestedScroll(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        /* renamed from: this, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull BottomAppBar bottomAppBar, int i) {
            this.f11383break = new WeakReference<>(bottomAppBar);
            View viewD = bottomAppBar.d();
            if (viewD != null && !ViewCompat.isLaidOut(viewD)) {
                CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) viewD.getLayoutParams();
                layoutParams.anchorGravity = 49;
                this.f11384catch = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                if (viewD instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewD;
                    floatingActionButton.addOnLayoutChangeListener(this.f11385class);
                    bottomAppBar.m12818protected(floatingActionButton);
                }
                bottomAppBar.o();
            }
            coordinatorLayout.onLayoutChild(bottomAppBar, i);
            return super.onLayoutChild(coordinatorLayout, bottomAppBar, i);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11385class = new Cdo();
            this.f11386this = new Rect();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public BottomAppBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2 = f11359static;
        super(vx0.m8993for(context, attributeSet, i, i2), attributeSet, i);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        this.f11372if = materialShapeDrawable;
        this.f11364catch = 0;
        this.f11366const = 0;
        this.f11369final = false;
        this.f11378super = true;
        this.f11376public = new Cdo();
        this.f11377return = new Cif();
        Context context2 = getContext();
        TypedArray typedArrayM4267break = k62.m4267break(context2, attributeSet, R.styleable.BottomAppBar, i, i2, new int[0]);
        ColorStateList colorStateListM7649do = sx0.m7649do(context2, typedArrayM4267break, R.styleable.BottomAppBar_backgroundTint);
        int dimensionPixelSize = typedArrayM4267break.getDimensionPixelSize(R.styleable.BottomAppBar_elevation, 0);
        float dimensionPixelOffset = typedArrayM4267break.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleMargin, 0);
        float dimensionPixelOffset2 = typedArrayM4267break.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleRoundedCornerRadius, 0);
        float dimensionPixelOffset3 = typedArrayM4267break.getDimensionPixelOffset(R.styleable.BottomAppBar_fabCradleVerticalOffset, 0);
        this.f11381try = typedArrayM4267break.getInt(R.styleable.BottomAppBar_fabAlignmentMode, 0);
        this.f11363case = typedArrayM4267break.getInt(R.styleable.BottomAppBar_fabAnimationMode, 0);
        this.f11368else = typedArrayM4267break.getBoolean(R.styleable.BottomAppBar_hideOnScroll, false);
        this.f11371goto = typedArrayM4267break.getBoolean(R.styleable.BottomAppBar_paddingBottomSystemWindowInsets, false);
        this.f11379this = typedArrayM4267break.getBoolean(R.styleable.BottomAppBar_paddingLeftSystemWindowInsets, false);
        this.f11362break = typedArrayM4267break.getBoolean(R.styleable.BottomAppBar_paddingRightSystemWindowInsets, false);
        typedArrayM4267break.recycle();
        this.f11367do = getResources().getDimensionPixelOffset(R.dimen.mtrl_bottomappbar_fabOffsetEndMode);
        materialShapeDrawable.setShapeAppearanceModel(ShapeAppearanceModel.m13966do().m14026volatile(new ec(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3)).m14003const());
        materialShapeDrawable.I(2);
        materialShapeDrawable.C(Paint.Style.FILL);
        materialShapeDrawable.k(context2);
        setElevation(dimensionPixelSize);
        DrawableCompat.setTintList(materialShapeDrawable, colorStateListM7649do);
        ViewCompat.setBackground(this, materialShapeDrawable);
        ViewUtils.m13618for(this, attributeSet, i, i2, new Cfor());
    }
}
