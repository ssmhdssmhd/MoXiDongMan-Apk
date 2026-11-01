package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.h3;
import android.support.v4.ol;
import android.support.v4.q01;
import android.support.v4.r01;
import android.support.v4.ue1;
import android.support.v4.w1;
import android.support.v4.z1;
import android.support.v4.z20;
import android.support.v4.zx0;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: break, reason: not valid java name */
    private float f13208break;

    /* renamed from: case, reason: not valid java name */
    private final Rect f13209case;

    /* renamed from: catch, reason: not valid java name */
    private float f13210catch;

    /* renamed from: else, reason: not valid java name */
    private final RectF f13211else;

    /* renamed from: goto, reason: not valid java name */
    private final RectF f13212goto;

    /* renamed from: this, reason: not valid java name */
    private final int[] f13213this;

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$do, reason: invalid class name */
    public class Cdo extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f13214do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ View f13215for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ View f13216if;

        public Cdo(boolean z, View view, View view2) {
            this.f13214do = z;
            this.f13216if = view;
            this.f13215for = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f13214do) {
                return;
            }
            this.f13216if.setVisibility(4);
            this.f13215for.setAlpha(1.0f);
            this.f13215for.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f13214do) {
                this.f13216if.setVisibility(0);
                this.f13215for.setAlpha(0.0f);
                this.f13215for.setVisibility(4);
            }
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$for, reason: invalid class name */
    public class Cfor extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CircularRevealWidget f13218do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Drawable f13220if;

        public Cfor(CircularRevealWidget circularRevealWidget, Drawable drawable) {
            this.f13218do = circularRevealWidget;
            this.f13220if = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f13218do.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f13218do.setCircularRevealOverlayDrawable(this.f13220if);
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$if, reason: invalid class name */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ View f13221do;

        public Cif(View view) {
            this.f13221do = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13221do.invalidate();
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$new, reason: invalid class name */
    public class Cnew extends AnimatorListenerAdapter {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ CircularRevealWidget f13223do;

        public Cnew(CircularRevealWidget circularRevealWidget) {
            this.f13223do = circularRevealWidget;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CircularRevealWidget.Ctry revealInfo = this.f13223do.getRevealInfo();
            revealInfo.f11670for = Float.MAX_VALUE;
            this.f13223do.setRevealInfo(revealInfo);
        }
    }

    /* renamed from: com.google.android.material.transformation.FabTransformationBehavior$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        @Nullable
        public q01 f13225do;

        /* renamed from: if, reason: not valid java name */
        public ue1 f13226if;
    }

    public FabTransformationBehavior() {
        this.f13209case = new Rect();
        this.f13211else = new RectF();
        this.f13212goto = new RectF();
        this.f13213this = new int[2];
    }

    /* renamed from: break, reason: not valid java name */
    private void m14633break(@NonNull View view, @NonNull RectF rectF) {
        m14653while(view, rectF);
        rectF.offset(this.f13208break, this.f13210catch);
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    private Pair<r01, r01> m14634catch(float f, float f2, boolean z, @NonNull Ctry ctry) {
        r01 r01VarM6303goto;
        r01 r01VarM6303goto2;
        if (f == 0.0f || f2 == 0.0f) {
            r01VarM6303goto = ctry.f13225do.m6303goto("translationXLinear");
            r01VarM6303goto2 = ctry.f13225do.m6303goto("translationYLinear");
        } else if ((!z || f2 >= 0.0f) && (z || f2 <= 0.0f)) {
            r01VarM6303goto = ctry.f13225do.m6303goto("translationXCurveDownwards");
            r01VarM6303goto2 = ctry.f13225do.m6303goto("translationYCurveDownwards");
        } else {
            r01VarM6303goto = ctry.f13225do.m6303goto("translationXCurveUpwards");
            r01VarM6303goto2 = ctry.f13225do.m6303goto("translationYCurveUpwards");
        }
        return new Pair<>(r01VarM6303goto, r01VarM6303goto2);
    }

    /* renamed from: class, reason: not valid java name */
    private float m14635class(@NonNull View view, @NonNull View view2, @NonNull ue1 ue1Var) {
        RectF rectF = this.f13211else;
        RectF rectF2 = this.f13212goto;
        m14633break(view, rectF);
        m14653while(view2, rectF2);
        rectF2.offset(-m14639final(view, view2, ue1Var), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    /* renamed from: const, reason: not valid java name */
    private float m14636const(@NonNull View view, @NonNull View view2, @NonNull ue1 ue1Var) {
        RectF rectF = this.f13211else;
        RectF rectF2 = this.f13212goto;
        m14633break(view, rectF);
        m14653while(view2, rectF2);
        rectF2.offset(0.0f, -m14648super(view, view2, ue1Var));
        return rectF.centerY() - rectF2.top;
    }

    /* renamed from: default, reason: not valid java name */
    private void m14637default(View view, long j, int i, int i2, float f, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT < 21 || j <= 0) {
            return;
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
        animatorCreateCircularReveal.setStartDelay(0L);
        animatorCreateCircularReveal.setDuration(j);
        list.add(animatorCreateCircularReveal);
    }

    /* renamed from: extends, reason: not valid java name */
    private void m14638extends(@NonNull View view, @NonNull View view2, boolean z, boolean z2, @NonNull Ctry ctry, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fM14639final = m14639final(view, view2, ctry.f13226if);
        float fM14648super = m14648super(view, view2, ctry.f13226if);
        Pair<r01, r01> pairM14634catch = m14634catch(fM14639final, fM14648super, z, ctry);
        r01 r01Var = (r01) pairM14634catch.first;
        r01 r01Var2 = (r01) pairM14634catch.second;
        if (z) {
            if (!z2) {
                view2.setTranslationX(-fM14639final);
                view2.setTranslationY(-fM14648super);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            m14650this(view2, ctry, r01Var, r01Var2, -fM14639final, -fM14648super, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fM14639final);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fM14648super);
        }
        r01Var.m6721do(objectAnimatorOfFloat);
        r01Var2.m6721do(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    /* renamed from: final, reason: not valid java name */
    private float m14639final(@NonNull View view, @NonNull View view2, @NonNull ue1 ue1Var) {
        float fCenterX;
        float fCenterX2;
        float f;
        RectF rectF = this.f13211else;
        RectF rectF2 = this.f13212goto;
        m14633break(view, rectF);
        m14653while(view2, rectF2);
        int i = ue1Var.f6857do & 7;
        if (i == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else if (i == 3) {
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        } else {
            if (i != 5) {
                f = 0.0f;
                return f + ue1Var.f6859if;
            }
            fCenterX = rectF2.right;
            fCenterX2 = rectF.right;
        }
        f = fCenterX - fCenterX2;
        return f + ue1Var.f6859if;
    }

    /* renamed from: finally, reason: not valid java name */
    private int m14640finally(@NonNull View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    @Nullable
    /* renamed from: goto, reason: not valid java name */
    private ViewGroup m14641goto(@NonNull View view) {
        View viewFindViewById = view.findViewById(R.id.mtrl_child_content_container);
        return viewFindViewById != null ? m14644private(viewFindViewById) : ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? m14644private(((ViewGroup) view).getChildAt(0)) : m14644private(view);
    }

    /* renamed from: import, reason: not valid java name */
    private void m14642import(View view, View view2, boolean z, boolean z2, @NonNull Ctry ctry, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupM14641goto;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof CircularRevealWidget) && CircularRevealHelper.f11651super == 0) || (viewGroupM14641goto = m14641goto(view2)) == null) {
                return;
            }
            if (z) {
                if (!z2) {
                    ol.f4667do.set(viewGroupM14641goto, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupM14641goto, ol.f4667do, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupM14641goto, ol.f4667do, 0.0f);
            }
            ctry.f13225do.m6303goto("contentFade").m6721do(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: native, reason: not valid java name */
    private void m14643native(@NonNull View view, View view2, boolean z, boolean z2, @NonNull Ctry ctry, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof CircularRevealWidget) {
            CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            int iM14640finally = m14640finally(view);
            int i = 16777215 & iM14640finally;
            if (z) {
                if (!z2) {
                    circularRevealWidget.setCircularRevealScrimColor(iM14640finally);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(circularRevealWidget, CircularRevealWidget.Cnew.f11667do, i);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(circularRevealWidget, CircularRevealWidget.Cnew.f11667do, iM14640finally);
            }
            objectAnimatorOfInt.setEvaluator(h3.m2919if());
            ctry.f13225do.m6303goto(TypedValues.Custom.S_COLOR).m6721do(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    @Nullable
    /* renamed from: private, reason: not valid java name */
    private ViewGroup m14644private(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* renamed from: public, reason: not valid java name */
    private void m14645public(@NonNull View view, @NonNull View view2, boolean z, @NonNull Ctry ctry, @NonNull List<Animator> list) {
        float fM14639final = m14639final(view, view2, ctry.f13226if);
        float fM14648super = m14648super(view, view2, ctry.f13226if);
        Pair<r01, r01> pairM14634catch = m14634catch(fM14639final, fM14648super, z, ctry);
        r01 r01Var = (r01) pairM14634catch.first;
        r01 r01Var2 = (r01) pairM14634catch.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z) {
            fM14639final = this.f13208break;
        }
        fArr[0] = fM14639final;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z) {
            fM14648super = this.f13210catch;
        }
        fArr2[0] = fM14648super;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        r01Var.m6721do(objectAnimatorOfFloat);
        r01Var2.m6721do(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @TargetApi(21)
    /* renamed from: return, reason: not valid java name */
    private void m14646return(View view, @NonNull View view2, boolean z, boolean z2, @NonNull Ctry ctry, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        ctry.f13225do.m6303goto("elevation").m6721do(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: static, reason: not valid java name */
    private void m14647static(@NonNull View view, View view2, boolean z, boolean z2, @NonNull Ctry ctry, float f, float f2, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animatorM13109do;
        if (view2 instanceof CircularRevealWidget) {
            CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            float fM14635class = m14635class(view, view2, ctry.f13226if);
            float fM14636const = m14636const(view, view2, ctry.f13226if);
            ((FloatingActionButton) view).m13456this(this.f13209case);
            float fWidth = this.f13209case.width() / 2.0f;
            r01 r01VarM6303goto = ctry.f13225do.m6303goto("expansion");
            if (z) {
                if (!z2) {
                    circularRevealWidget.setRevealInfo(new CircularRevealWidget.Ctry(fM14635class, fM14636const, fWidth));
                }
                if (z2) {
                    fWidth = circularRevealWidget.getRevealInfo().f11670for;
                }
                animatorM13109do = com.google.android.material.circularreveal.Cdo.m13109do(circularRevealWidget, fM14635class, fM14636const, zx0.m10318if(fM14635class, fM14636const, 0.0f, 0.0f, f, f2));
                animatorM13109do.addListener(new Cnew(circularRevealWidget));
                m14637default(view2, r01VarM6303goto.m6723for(), (int) fM14635class, (int) fM14636const, fWidth, list);
            } else {
                float f3 = circularRevealWidget.getRevealInfo().f11670for;
                Animator animatorM13109do2 = com.google.android.material.circularreveal.Cdo.m13109do(circularRevealWidget, fM14635class, fM14636const, fWidth);
                int i = (int) fM14635class;
                int i2 = (int) fM14636const;
                m14637default(view2, r01VarM6303goto.m6723for(), i, i2, f3, list);
                m14652throws(view2, r01VarM6303goto.m6723for(), r01VarM6303goto.m6725new(), ctry.f13225do.m6304this(), i, i2, fWidth, list);
                animatorM13109do = animatorM13109do2;
            }
            r01VarM6303goto.m6721do(animatorM13109do);
            list.add(animatorM13109do);
            list2.add(com.google.android.material.circularreveal.Cdo.m13110for(circularRevealWidget));
        }
    }

    /* renamed from: super, reason: not valid java name */
    private float m14648super(@NonNull View view, @NonNull View view2, @NonNull ue1 ue1Var) {
        float fCenterY;
        float fCenterY2;
        float f;
        RectF rectF = this.f13211else;
        RectF rectF2 = this.f13212goto;
        m14633break(view, rectF);
        m14653while(view2, rectF2);
        int i = ue1Var.f6857do & 112;
        if (i == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else if (i == 48) {
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        } else {
            if (i != 80) {
                f = 0.0f;
                return f + ue1Var.f6858for;
            }
            fCenterY = rectF2.bottom;
            fCenterY2 = rectF.bottom;
        }
        f = fCenterY - fCenterY2;
        return f + ue1Var.f6858for;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: switch, reason: not valid java name */
    private void m14649switch(View view, View view2, boolean z, boolean z2, @NonNull Ctry ctry, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof CircularRevealWidget) && (view instanceof ImageView)) {
            CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z) {
                if (!z2) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, z20.f8424if, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, z20.f8424if, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new Cif(view2));
            ctry.f13225do.m6303goto("iconFade").m6721do(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new Cfor(circularRevealWidget, drawable));
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m14650this(@NonNull View view, @NonNull Ctry ctry, @NonNull r01 r01Var, @NonNull r01 r01Var2, float f, float f2, float f3, float f4, @NonNull RectF rectF) {
        float fM14651throw = m14651throw(ctry, r01Var, f, f3);
        float fM14651throw2 = m14651throw(ctry, r01Var2, f2, f4);
        Rect rect = this.f13209case;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f13211else;
        rectF2.set(rect);
        RectF rectF3 = this.f13212goto;
        m14653while(view, rectF3);
        rectF3.offset(fM14651throw, fM14651throw2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    /* renamed from: throw, reason: not valid java name */
    private float m14651throw(@NonNull Ctry ctry, @NonNull r01 r01Var, float f, float f2) {
        long jM6723for = r01Var.m6723for();
        long jM6725new = r01Var.m6725new();
        r01 r01VarM6303goto = ctry.f13225do.m6303goto("expansion");
        return w1.m9011do(f, f2, r01Var.m6726try().getInterpolation((((r01VarM6303goto.m6723for() + r01VarM6303goto.m6725new()) + 17) - jM6723for) / jM6725new));
    }

    /* renamed from: throws, reason: not valid java name */
    private void m14652throws(View view, long j, long j2, long j3, int i, int i2, float f, @NonNull List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21) {
            long j4 = j + j2;
            if (j4 < j3) {
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f, f);
                animatorCreateCircularReveal.setStartDelay(j4);
                animatorCreateCircularReveal.setDuration(j3 - j4);
                list.add(animatorCreateCircularReveal);
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m14653while(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getLocationInWindow(this.f13213this);
        rectF.offsetTo(r0[0], r0[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    /* renamed from: else */
    public AnimatorSet mo14632else(@NonNull View view, @NonNull View view2, boolean z, boolean z2) {
        Ctry ctryMo14654package = mo14654package(view2.getContext(), z);
        if (z) {
            this.f13208break = view.getTranslationX();
            this.f13210catch = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            m14646return(view, view2, z, z2, ctryMo14654package, arrayList, arrayList2);
        }
        RectF rectF = this.f13211else;
        m14638extends(view, view2, z, z2, ctryMo14654package, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        m14645public(view, view2, z, ctryMo14654package, arrayList);
        m14649switch(view, view2, z, z2, ctryMo14654package, arrayList, arrayList2);
        m14647static(view, view2, z, z2, ctryMo14654package, fWidth, fHeight, arrayList, arrayList2);
        m14643native(view, view2, z, z2, ctryMo14654package, arrayList, arrayList2);
        m14642import(view, view2, z, z2, ctryMo14654package, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        z1.m10010do(animatorSet, arrayList);
        animatorSet.addListener(new Cdo(z, view2, view));
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            animatorSet.addListener(arrayList2.get(i));
        }
        return animatorSet;
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    /* renamed from: package, reason: not valid java name */
    public abstract Ctry mo14654package(Context context, boolean z);

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13209case = new Rect();
        this.f13211else = new RectF();
        this.f13212goto = new RectF();
        this.f13213this = new int[2];
    }
}
