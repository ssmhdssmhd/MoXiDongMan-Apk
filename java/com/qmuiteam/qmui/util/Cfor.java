package com.qmuiteam.qmui.util;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.ListView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.widget.pullRefreshLayout.QMUIPullRefreshLayout;
import com.scwang.smartrefresh.header.TaurusHeader;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.qmuiteam.qmui.util.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final AtomicInteger f19301do = new AtomicInteger(1);

    /* renamed from: if, reason: not valid java name */
    private static final int[] f19302if = {R.attr.colorPrimary};

    /* renamed from: com.qmuiteam.qmui.util.for$case, reason: invalid class name */
    public static class Ccase implements Animation.AnimationListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Animation.AnimationListener f19303do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f19304if;

        public Ccase(Animation.AnimationListener animationListener, View view) {
            this.f19303do = animationListener;
            this.f19304if = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f19304if.setVisibility(8);
            Animation.AnimationListener animationListener = this.f19303do;
            if (animationListener != null) {
                animationListener.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            Animation.AnimationListener animationListener = this.f19303do;
            if (animationListener != null) {
                animationListener.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Animation.AnimationListener animationListener = this.f19303do;
            if (animationListener != null) {
                animationListener.onAnimationStart(animation);
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.for$do, reason: invalid class name */
    public static class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f19305do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ View f19306for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f19307if;

        public Cdo(View view, int i, View view2) {
            this.f19305do = view;
            this.f19307if = i;
            this.f19306for = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Rect rect = new Rect();
            this.f19305do.getHitRect(rect);
            int i = rect.left;
            int i2 = this.f19307if;
            rect.left = i - i2;
            rect.top -= i2;
            rect.right += i2;
            rect.bottom += i2;
            this.f19306for.setTouchDelegate(new TouchDelegate(rect, this.f19305do));
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.for$else, reason: invalid class name */
    public static /* synthetic */ class Celse {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f19308do;

        static {
            int[] iArr = new int[com.qmuiteam.qmui.util.Cdo.values().length];
            f19308do = iArr;
            try {
                iArr[com.qmuiteam.qmui.util.Cdo.LEFT_TO_RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19308do[com.qmuiteam.qmui.util.Cdo.TOP_TO_BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19308do[com.qmuiteam.qmui.util.Cdo.RIGHT_TO_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19308do[com.qmuiteam.qmui.util.Cdo.BOTTOM_TO_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0186for implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f19309do;

        public C0186for(View view) {
            this.f19309do = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Cfor.m23653switch(this.f19309do, ((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.for$goto, reason: invalid class name */
    public static class Cgoto {

        /* renamed from: do, reason: not valid java name */
        private static final ThreadLocal<Matrix> f19310do = new ThreadLocal<>();

        /* renamed from: if, reason: not valid java name */
        private static final ThreadLocal<RectF> f19311if = new ThreadLocal<>();

        private Cgoto() {
        }

        /* renamed from: do, reason: not valid java name */
        public static void m23659do(ViewParent viewParent, View view, Matrix matrix) {
            Object parent = view.getParent();
            if ((parent instanceof View) && parent != viewParent) {
                m23659do(viewParent, (View) parent, matrix);
                matrix.preTranslate(-r0.getScrollX(), -r0.getScrollY());
            }
            matrix.preTranslate(view.getLeft(), view.getTop());
            if (view.getMatrix().isIdentity()) {
                return;
            }
            matrix.preConcat(view.getMatrix());
        }

        /* renamed from: if, reason: not valid java name */
        public static void m23660if(ViewGroup viewGroup, View view, Rect rect) {
            ThreadLocal<Matrix> threadLocal = f19310do;
            Matrix matrix = threadLocal.get();
            if (matrix == null) {
                matrix = new Matrix();
                threadLocal.set(matrix);
            } else {
                matrix.reset();
            }
            m23659do(viewGroup, view, matrix);
            ThreadLocal<RectF> threadLocal2 = f19311if;
            RectF rectF = threadLocal2.get();
            if (rectF == null) {
                rectF = new RectF();
                threadLocal2.set(rectF);
            }
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.for$if, reason: invalid class name */
    public static class Cif implements Animator.AnimatorListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f19312do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Runnable f19313for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Drawable f19314if;

        public Cif(View view, Drawable drawable, Runnable runnable) {
            this.f19312do = view;
            this.f19314if = drawable;
            this.f19313for = runnable;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Cfor.m23634default(this.f19312do, this.f19314if);
            Runnable runnable = this.f19313for;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.for$new, reason: invalid class name */
    public static class Cnew implements Animator.AnimatorListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f19315do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Runnable f19316for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Drawable f19317if;

        public Cnew(View view, Drawable drawable, Runnable runnable) {
            this.f19315do = view;
            this.f19317if = drawable;
            this.f19316for = runnable;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Cfor.m23634default(this.f19315do, this.f19317if);
            Runnable runnable = this.f19316for;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.qmuiteam.qmui.util.for$try, reason: invalid class name */
    public static class Ctry implements Animation.AnimationListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Animation.AnimationListener f19318do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f19319if;

        public Ctry(Animation.AnimationListener animationListener, View view) {
            this.f19318do = animationListener;
            this.f19319if = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f19319if.setVisibility(8);
            Animation.AnimationListener animationListener = this.f19318do;
            if (animationListener != null) {
                animationListener.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
            Animation.AnimationListener animationListener = this.f19318do;
            if (animationListener != null) {
                animationListener.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            Animation.AnimationListener animationListener = this.f19318do;
            if (animationListener != null) {
                animationListener.onAnimationStart(animation);
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m23627abstract(View view, int i) {
        if (i != view.getPaddingTop()) {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static View m23628break(Activity activity) {
        return ((ViewGroup) activity.findViewById(android.R.id.content)).getChildAt(0);
    }

    /* renamed from: case, reason: not valid java name */
    public static AlphaAnimation m23629case(View view, int i, Animation.AnimationListener animationListener, boolean z) {
        if (view == null) {
            return null;
        }
        if (!z) {
            view.setVisibility(8);
            return null;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setInterpolator(new DecelerateInterpolator());
        alphaAnimation.setDuration(i);
        alphaAnimation.setAnimationListener(new Ctry(animationListener, view));
        view.startAnimation(alphaAnimation);
        return alphaAnimation;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m23630catch(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        Cgoto.m23660if(viewGroup, view, rect);
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m23631class() {
        return Build.VERSION.SDK_INT < 21;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m23632const(ListView listView) {
        View childAt;
        return (listView.getAdapter() == null || listView.getHeight() == 0 || listView.getLastVisiblePosition() != listView.getAdapter().getCount() - 1 || (childAt = listView.getChildAt(listView.getChildCount() - 1)) == null || childAt.getBottom() != listView.getHeight()) ? false : true;
    }

    @Nullable
    /* renamed from: continue, reason: not valid java name */
    public static TranslateAnimation m23633continue(View view, int i, Animation.AnimationListener animationListener, boolean z, com.qmuiteam.qmui.util.Cdo cdo) {
        TranslateAnimation translateAnimation = null;
        if (view == null) {
            return null;
        }
        if (!z) {
            view.clearAnimation();
            view.setVisibility(0);
            return null;
        }
        int i2 = Celse.f19308do[cdo.ordinal()];
        if (i2 == 1) {
            translateAnimation = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        } else if (i2 == 2) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
        } else if (i2 == 3) {
            translateAnimation = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 0.0f, 1, 0.0f);
        } else if (i2 == 4) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
        }
        translateAnimation.setInterpolator(new DecelerateInterpolator());
        translateAnimation.setDuration(i);
        translateAnimation.setFillAfter(true);
        if (animationListener != null) {
            translateAnimation.setAnimationListener(animationListener);
        }
        view.setVisibility(0);
        view.startAnimation(translateAnimation);
        return translateAnimation;
    }

    /* renamed from: default, reason: not valid java name */
    public static void m23634default(View view, Drawable drawable) {
        int[] iArr = {view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom()};
        m23650static(view, drawable);
        view.setPadding(iArr[0], iArr[1], iArr[2], iArr[3]);
    }

    /* renamed from: do, reason: not valid java name */
    public static Rect m23635do(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    /* renamed from: else, reason: not valid java name */
    public static View m23636else(View view, int i, int i2) {
        if (view == null) {
            return null;
        }
        View viewFindViewById = view.findViewById(i2);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        ViewStub viewStub = (ViewStub) view.findViewById(i);
        if (viewStub == null) {
            return null;
        }
        View viewInflate = viewStub.inflate();
        return viewInflate != null ? viewInflate.findViewById(i2) : viewInflate;
    }

    /* renamed from: extends, reason: not valid java name */
    public static ColorFilter m23637extends(ImageView imageView, @ColorInt int i) {
        LightingColorFilter lightingColorFilter = new LightingColorFilter(Color.argb(255, 0, 0, 0), i);
        imageView.setColorFilter(lightingColorFilter);
        return lightingColorFilter;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m23638final(View view, @ColorInt int i) {
        if (view == null) {
            return;
        }
        m23643import(view, i, new int[]{0, 255, 0}, TaurusHeader.a);
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m23639finally(View view, int i) {
        if (i != view.getPaddingBottom()) {
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m23640for(Animator animator) {
        if (animator != null) {
            animator.removeAllListeners();
            if (animator instanceof ValueAnimator) {
                ((ValueAnimator) animator).removeAllUpdateListeners();
            }
            if (Build.VERSION.SDK_INT >= 19) {
                animator.pause();
            }
            animator.cancel();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static View m23641goto(View view, int i, int i2, int i3) {
        if (view == null) {
            return null;
        }
        View viewFindViewById = view.findViewById(i2);
        if (viewFindViewById != null) {
            return viewFindViewById;
        }
        ViewStub viewStub = (ViewStub) view.findViewById(i);
        if (viewStub == null) {
            return null;
        }
        if (viewStub.getLayoutResource() < 1 && i3 > 0) {
            viewStub.setLayoutResource(i3);
        }
        View viewInflate = viewStub.inflate();
        return viewInflate != null ? viewInflate.findViewById(i2) : viewInflate;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m23642if(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f19302if);
        boolean z = !typedArrayObtainStyledAttributes.hasValue(0);
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m23643import(View view, @ColorInt int i, int[] iArr, int i2) {
        m23652super(view, i, iArr, i2, null);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m23644native(Window window) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19 && i < 21) {
            window.getDecorView().requestFitSystemWindows();
        } else if (i >= 21) {
            window.getDecorView().requestApplyInsets();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m23645new(View view, int i) {
        if (view != null) {
            View view2 = (View) view.getParent();
            view2.post(new Cdo(view, i, view2));
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static void m23646package(View view, int i) {
        if (i != view.getPaddingLeft()) {
            view.setPadding(i, view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static void m23647private(View view, int i) {
        if (i != view.getPaddingRight()) {
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), i, view.getPaddingBottom());
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m23648public(@NonNull View view, boolean z) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            for (ViewParent parent2 = parent; parent2 != null; parent2 = parent2.getParent()) {
                if (parent2 instanceof QMUIPullRefreshLayout) {
                    ((QMUIPullRefreshLayout) parent2).m24142extends();
                }
            }
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static void m23649return(ImageView imageView, boolean z) {
        Drawable drawable = imageView.getDrawable();
        if (drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        imageView.setSelected(z);
        if (drawable.getIntrinsicWidth() == intrinsicWidth && drawable.getIntrinsicHeight() == intrinsicHeight) {
            return;
        }
        imageView.requestLayout();
    }

    @TargetApi(16)
    /* renamed from: static, reason: not valid java name */
    public static void m23650static(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    @Nullable
    /* renamed from: strictfp, reason: not valid java name */
    public static TranslateAnimation m23651strictfp(View view, int i, Animation.AnimationListener animationListener, boolean z, com.qmuiteam.qmui.util.Cdo cdo) {
        TranslateAnimation translateAnimation = null;
        if (view == null) {
            return null;
        }
        if (!z) {
            view.clearAnimation();
            view.setVisibility(8);
            return null;
        }
        int i2 = Celse.f19308do[cdo.ordinal()];
        if (i2 == 1) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 1.0f, 1, 0.0f, 1, 0.0f);
        } else if (i2 == 2) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, 1.0f);
        } else if (i2 == 3) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
        } else if (i2 == 4) {
            translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
        }
        translateAnimation.setInterpolator(new DecelerateInterpolator());
        translateAnimation.setDuration(i);
        translateAnimation.setAnimationListener(new Ccase(animationListener, view));
        view.startAnimation(translateAnimation);
        return translateAnimation;
    }

    /* renamed from: super, reason: not valid java name */
    public static Animator m23652super(View view, @ColorInt int i, int[] iArr, int i2, Runnable runnable) {
        int length = iArr.length - 1;
        ColorDrawable colorDrawable = new ColorDrawable(i);
        Drawable background = view.getBackground();
        m23634default(view, colorDrawable);
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < length) {
            i3++;
            arrayList.add(ObjectAnimator.ofInt(view.getBackground(), "alpha", iArr[i3], iArr[i3]));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(i2);
        animatorSet.addListener(new Cif(view, background, runnable));
        animatorSet.playSequentially(arrayList);
        animatorSet.start();
        return animatorSet;
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m23653switch(View view, @ColorInt int i) {
        int[] iArr = {view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom()};
        view.setBackgroundColor(i);
        view.setPadding(iArr[0], iArr[1], iArr[2], iArr[3]);
    }

    /* renamed from: this, reason: not valid java name */
    public static int m23654this() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f19301do;
            i = atomicInteger.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m23655throw(View view, int i, int i2, long j) {
        m23658while(view, i, i2, j, 0, 0, null);
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m23656throws(View view, int i) {
        m23634default(view, ContextCompat.getDrawable(view.getContext(), i));
    }

    /* renamed from: try, reason: not valid java name */
    public static AlphaAnimation m23657try(View view, int i, Animation.AnimationListener animationListener, boolean z) {
        if (view == null) {
            return null;
        }
        if (!z) {
            view.setAlpha(1.0f);
            view.setVisibility(0);
            return null;
        }
        view.setVisibility(0);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setInterpolator(new DecelerateInterpolator());
        alphaAnimation.setDuration(i);
        alphaAnimation.setFillAfter(true);
        if (animationListener != null) {
            alphaAnimation.setAnimationListener(animationListener);
        }
        view.startAnimation(alphaAnimation);
        return alphaAnimation;
    }

    /* renamed from: while, reason: not valid java name */
    public static void m23658while(View view, @ColorInt int i, @ColorInt int i2, long j, int i3, int i4, Runnable runnable) {
        Drawable background = view.getBackground();
        m23653switch(view, i);
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(i, i2);
        valueAnimator.setDuration(j / (i3 + 1));
        valueAnimator.setRepeatCount(i3);
        valueAnimator.setRepeatMode(2);
        valueAnimator.setEvaluator(new ArgbEvaluator());
        valueAnimator.addUpdateListener(new C0186for(view));
        if (i4 != 0) {
            view.setTag(i4, valueAnimator);
        }
        valueAnimator.addListener(new Cnew(view, background, runnable));
        valueAnimator.start();
    }
}
