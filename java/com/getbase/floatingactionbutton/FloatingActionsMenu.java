package com.getbase.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.b82;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.constraintlayout.motion.widget.Key;

/* loaded from: classes.dex */
public class FloatingActionsMenu extends ViewGroup {

    /* renamed from: abstract, reason: not valid java name */
    private static final float f10990abstract = 135.0f;

    /* renamed from: default, reason: not valid java name */
    public static final int f10992default = 3;

    /* renamed from: extends, reason: not valid java name */
    public static final int f10993extends = 0;

    /* renamed from: finally, reason: not valid java name */
    public static final int f10994finally = 1;

    /* renamed from: package, reason: not valid java name */
    private static final int f10995package = 300;

    /* renamed from: private, reason: not valid java name */
    private static final float f10996private = 0.0f;

    /* renamed from: static, reason: not valid java name */
    public static final int f10997static = 0;

    /* renamed from: switch, reason: not valid java name */
    public static final int f10999switch = 1;

    /* renamed from: throws, reason: not valid java name */
    public static final int f11000throws = 2;

    /* renamed from: break, reason: not valid java name */
    private boolean f11002break;

    /* renamed from: case, reason: not valid java name */
    private int f11003case;

    /* renamed from: catch, reason: not valid java name */
    private AnimatorSet f11004catch;

    /* renamed from: class, reason: not valid java name */
    private AnimatorSet f11005class;

    /* renamed from: const, reason: not valid java name */
    private AddFloatingActionButton f11006const;

    /* renamed from: do, reason: not valid java name */
    private int f11007do;

    /* renamed from: else, reason: not valid java name */
    private int f11008else;

    /* renamed from: final, reason: not valid java name */
    private Cnew f11009final;

    /* renamed from: for, reason: not valid java name */
    private int f11010for;

    /* renamed from: goto, reason: not valid java name */
    private int f11011goto;

    /* renamed from: if, reason: not valid java name */
    private int f11012if;

    /* renamed from: import, reason: not valid java name */
    private int f11013import;

    /* renamed from: native, reason: not valid java name */
    private int f11014native;

    /* renamed from: new, reason: not valid java name */
    private int f11015new;

    /* renamed from: public, reason: not valid java name */
    private b82 f11016public;

    /* renamed from: return, reason: not valid java name */
    private OnFloatingActionsMenuUpdateListener f11017return;

    /* renamed from: super, reason: not valid java name */
    private int f11018super;

    /* renamed from: this, reason: not valid java name */
    private int f11019this;

    /* renamed from: throw, reason: not valid java name */
    private int f11020throw;

    /* renamed from: try, reason: not valid java name */
    private boolean f11021try;

    /* renamed from: while, reason: not valid java name */
    private int f11022while;

    /* renamed from: continue, reason: not valid java name */
    private static Interpolator f10991continue = new OvershootInterpolator();

    /* renamed from: strictfp, reason: not valid java name */
    private static Interpolator f10998strictfp = new DecelerateInterpolator(3.0f);

    /* renamed from: volatile, reason: not valid java name */
    private static Interpolator f11001volatile = new DecelerateInterpolator();

    public interface OnFloatingActionsMenuUpdateListener {
        void onMenuCollapsed();

        void onMenuExpanded();
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Cdo();

        /* renamed from: do, reason: not valid java name */
        public boolean f11023do;

        /* renamed from: com.getbase.floatingactionbutton.FloatingActionsMenu$SavedState$do, reason: invalid class name */
        public static class Cdo implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public /* synthetic */ SavedState(Parcel parcel, Cdo cdo) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11023do ? 1 : 0);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f11023do = parcel.readInt() == 1;
        }
    }

    /* renamed from: com.getbase.floatingactionbutton.FloatingActionsMenu$do, reason: invalid class name */
    public class Cdo extends AddFloatingActionButton {
        public Cdo(Context context) {
            super(context);
        }

        @Override // com.getbase.floatingactionbutton.AddFloatingActionButton, com.getbase.floatingactionbutton.FloatingActionButton
        public Drawable getIconDrawable() {
            Cnew cnew = new Cnew(super.getIconDrawable());
            FloatingActionsMenu.this.f11009final = cnew;
            OvershootInterpolator overshootInterpolator = new OvershootInterpolator();
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(cnew, Key.ROTATION, FloatingActionsMenu.f10990abstract, 0.0f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(cnew, Key.ROTATION, 0.0f, FloatingActionsMenu.f10990abstract);
            objectAnimatorOfFloat.setInterpolator(overshootInterpolator);
            objectAnimatorOfFloat2.setInterpolator(overshootInterpolator);
            FloatingActionsMenu.this.f11004catch.play(objectAnimatorOfFloat2);
            FloatingActionsMenu.this.f11005class.play(objectAnimatorOfFloat);
            return cnew;
        }

        @Override // com.getbase.floatingactionbutton.FloatingActionButton
        /* renamed from: super */
        public void mo12396super() {
            this.f10963super = FloatingActionsMenu.this.f11007do;
            this.f10975do = FloatingActionsMenu.this.f11012if;
            this.f10979if = FloatingActionsMenu.this.f11010for;
            this.f10974class = FloatingActionsMenu.this.f11021try;
            super.mo12396super();
        }
    }

    /* renamed from: com.getbase.floatingactionbutton.FloatingActionsMenu$for, reason: invalid class name */
    public class Cfor extends ViewGroup.LayoutParams {

        /* renamed from: do, reason: not valid java name */
        private ObjectAnimator f11026do;

        /* renamed from: for, reason: not valid java name */
        private ObjectAnimator f11027for;

        /* renamed from: if, reason: not valid java name */
        private ObjectAnimator f11028if;

        /* renamed from: new, reason: not valid java name */
        private ObjectAnimator f11029new;

        /* renamed from: try, reason: not valid java name */
        private boolean f11030try;

        /* renamed from: com.getbase.floatingactionbutton.FloatingActionsMenu$for$do, reason: invalid class name */
        public class Cdo extends AnimatorListenerAdapter {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ View f11031do;

            public Cdo(View view) {
                this.f11031do = view;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                this.f11031do.setLayerType(0, null);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.f11031do.setLayerType(2, null);
            }
        }

        public Cfor(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11026do = new ObjectAnimator();
            this.f11028if = new ObjectAnimator();
            this.f11027for = new ObjectAnimator();
            this.f11029new = new ObjectAnimator();
            this.f11026do.setInterpolator(FloatingActionsMenu.f10991continue);
            this.f11028if.setInterpolator(FloatingActionsMenu.f11001volatile);
            this.f11027for.setInterpolator(FloatingActionsMenu.f10998strictfp);
            this.f11029new.setInterpolator(FloatingActionsMenu.f10998strictfp);
            this.f11029new.setProperty(View.ALPHA);
            this.f11029new.setFloatValues(1.0f, 0.0f);
            this.f11028if.setProperty(View.ALPHA);
            this.f11028if.setFloatValues(0.0f, 1.0f);
            int i = FloatingActionsMenu.this.f11003case;
            if (i == 0 || i == 1) {
                this.f11027for.setProperty(View.TRANSLATION_Y);
                this.f11026do.setProperty(View.TRANSLATION_Y);
            } else if (i == 2 || i == 3) {
                this.f11027for.setProperty(View.TRANSLATION_X);
                this.f11026do.setProperty(View.TRANSLATION_X);
            }
        }

        /* renamed from: for, reason: not valid java name */
        private void m12425for(Animator animator, View view) {
            animator.addListener(new Cdo(view));
        }

        /* renamed from: new, reason: not valid java name */
        public void m12427new(View view) {
            this.f11029new.setTarget(view);
            this.f11027for.setTarget(view);
            this.f11028if.setTarget(view);
            this.f11026do.setTarget(view);
            if (this.f11030try) {
                return;
            }
            m12425for(this.f11026do, view);
            m12425for(this.f11027for, view);
            FloatingActionsMenu.this.f11005class.play(this.f11029new);
            FloatingActionsMenu.this.f11005class.play(this.f11027for);
            FloatingActionsMenu.this.f11004catch.play(this.f11028if);
            FloatingActionsMenu.this.f11004catch.play(this.f11026do);
            this.f11030try = true;
        }
    }

    /* renamed from: com.getbase.floatingactionbutton.FloatingActionsMenu$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FloatingActionsMenu.this.m12416default();
        }
    }

    /* renamed from: com.getbase.floatingactionbutton.FloatingActionsMenu$new, reason: invalid class name */
    public static class Cnew extends LayerDrawable {

        /* renamed from: do, reason: not valid java name */
        private float f11034do;

        public Cnew(Drawable drawable) {
            super(new Drawable[]{drawable});
        }

        @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.save();
            canvas.rotate(this.f11034do, getBounds().centerX(), getBounds().centerY());
            super.draw(canvas);
            canvas.restore();
        }

        public float getRotation() {
            return this.f11034do;
        }

        public void setRotation(float f) {
            this.f11034do = f;
            invalidateSelf();
        }
    }

    public FloatingActionsMenu(Context context) {
        this(context, null);
    }

    /* renamed from: const, reason: not valid java name */
    private int m12400const(int i) {
        return (i * 12) / 10;
    }

    /* renamed from: import, reason: not valid java name */
    private void m12406import() {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f11022while);
        for (int i = 0; i < this.f11014native; i++) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) getChildAt(i);
            String title = floatingActionButton.getTitle();
            if (floatingActionButton != this.f11006const && title != null) {
                int i2 = R.id.fab_label;
                if (floatingActionButton.getTag(i2) == null) {
                    TextView textView = new TextView(contextThemeWrapper);
                    textView.setTextAppearance(getContext(), this.f11022while);
                    textView.setText(floatingActionButton.getTitle());
                    addView(textView);
                    floatingActionButton.setTag(i2, textView);
                }
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    private boolean m12408public() {
        int i = this.f11003case;
        return i == 2 || i == 3;
    }

    /* renamed from: return, reason: not valid java name */
    private int m12409return(@ColorRes int i) {
        return getResources().getColor(i);
    }

    /* renamed from: static, reason: not valid java name */
    private void m12410static(Context context, AttributeSet attributeSet) {
        float dimension = getResources().getDimension(R.dimen.fab_actions_spacing) - getResources().getDimension(R.dimen.fab_shadow_radius);
        Resources resources = getResources();
        int i = R.dimen.fab_shadow_offset;
        this.f11008else = (int) (dimension - resources.getDimension(i));
        this.f11011goto = getResources().getDimensionPixelSize(R.dimen.fab_labels_margin);
        this.f11019this = getResources().getDimensionPixelSize(i);
        b82 b82Var = new b82(this);
        this.f11016public = b82Var;
        setTouchDelegate(b82Var);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FloatingActionsMenu, 0, 0);
        this.f11007do = typedArrayObtainStyledAttributes.getColor(R.styleable.FloatingActionsMenu_fab_addButtonPlusIconColor, m12409return(android.R.color.white));
        this.f11012if = typedArrayObtainStyledAttributes.getColor(R.styleable.FloatingActionsMenu_fab_addButtonColorNormal, m12409return(android.R.color.holo_blue_dark));
        this.f11010for = typedArrayObtainStyledAttributes.getColor(R.styleable.FloatingActionsMenu_fab_addButtonColorPressed, m12409return(android.R.color.holo_blue_light));
        this.f11015new = typedArrayObtainStyledAttributes.getInt(R.styleable.FloatingActionsMenu_fab_addButtonSize, 0);
        this.f11021try = typedArrayObtainStyledAttributes.getBoolean(R.styleable.FloatingActionsMenu_fab_addButtonStrokeVisible, true);
        this.f11003case = typedArrayObtainStyledAttributes.getInt(R.styleable.FloatingActionsMenu_fab_expandDirection, 0);
        this.f11022while = typedArrayObtainStyledAttributes.getResourceId(R.styleable.FloatingActionsMenu_fab_labelStyle, 0);
        this.f11013import = typedArrayObtainStyledAttributes.getInt(R.styleable.FloatingActionsMenu_fab_labelsPosition, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (this.f11022while != 0 && m12408public()) {
            throw new IllegalStateException("Action labels in horizontal expand orientation is not supported.");
        }
        m12414while(context);
    }

    /* renamed from: super, reason: not valid java name */
    private void m12411super(boolean z) {
        if (this.f11002break) {
            this.f11002break = false;
            this.f11016public.m475new(false);
            this.f11005class.setDuration(z ? 0L : 300L);
            this.f11005class.start();
            this.f11004catch.cancel();
            OnFloatingActionsMenuUpdateListener onFloatingActionsMenuUpdateListener = this.f11017return;
            if (onFloatingActionsMenuUpdateListener != null) {
                onFloatingActionsMenuUpdateListener.onMenuCollapsed();
            }
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m12414while(Context context) {
        Cdo cdo = new Cdo(context);
        this.f11006const = cdo;
        cdo.setId(R.id.fab_expand_menu_button);
        this.f11006const.setSize(this.f11015new);
        this.f11006const.setOnClickListener(new Cif());
        addView(this.f11006const, super.generateDefaultLayoutParams());
        this.f11014native++;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams);
    }

    /* renamed from: class, reason: not valid java name */
    public void m12415class(FloatingActionButton floatingActionButton) {
        addView(floatingActionButton, this.f11014native - 1);
        this.f11014native++;
        if (this.f11022while != 0) {
            m12406import();
        }
    }

    /* renamed from: default, reason: not valid java name */
    public void m12416default() {
        if (this.f11002break) {
            m12417final();
        } else {
            m12418native();
        }
    }

    /* renamed from: final, reason: not valid java name */
    public void m12417final() {
        m12411super(false);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new Cfor(super.generateDefaultLayoutParams());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cfor(super.generateLayoutParams(attributeSet));
    }

    /* renamed from: native, reason: not valid java name */
    public void m12418native() {
        if (this.f11002break) {
            return;
        }
        this.f11002break = true;
        this.f11016public.m475new(true);
        this.f11005class.cancel();
        this.f11004catch.start();
        OnFloatingActionsMenuUpdateListener onFloatingActionsMenuUpdateListener = this.f11017return;
        if (onFloatingActionsMenuUpdateListener != null) {
            onFloatingActionsMenuUpdateListener.onMenuExpanded();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f11006const);
        this.f11014native = getChildCount();
        if (this.f11022while != 0) {
            m12406import();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6 = this.f11003case;
        int i7 = 8;
        float f = 0.0f;
        char c = 0;
        char c2 = 1;
        if (i6 != 0 && i6 != 1) {
            if (i6 == 2 || i6 == 3) {
                boolean z2 = i6 == 2;
                int measuredWidth = z2 ? (i3 - i) - this.f11006const.getMeasuredWidth() : 0;
                int i8 = this.f11020throw;
                int measuredHeight = ((i4 - i2) - i8) + ((i8 - this.f11006const.getMeasuredHeight()) / 2);
                AddFloatingActionButton addFloatingActionButton = this.f11006const;
                addFloatingActionButton.layout(measuredWidth, measuredHeight, addFloatingActionButton.getMeasuredWidth() + measuredWidth, this.f11006const.getMeasuredHeight() + measuredHeight);
                int measuredWidth2 = z2 ? measuredWidth - this.f11008else : this.f11006const.getMeasuredWidth() + measuredWidth + this.f11008else;
                for (int i9 = this.f11014native - 1; i9 >= 0; i9--) {
                    View childAt = getChildAt(i9);
                    if (childAt != this.f11006const && childAt.getVisibility() != 8) {
                        if (z2) {
                            measuredWidth2 -= childAt.getMeasuredWidth();
                        }
                        int measuredHeight2 = ((this.f11006const.getMeasuredHeight() - childAt.getMeasuredHeight()) / 2) + measuredHeight;
                        childAt.layout(measuredWidth2, measuredHeight2, childAt.getMeasuredWidth() + measuredWidth2, childAt.getMeasuredHeight() + measuredHeight2);
                        float f2 = measuredWidth - measuredWidth2;
                        childAt.setTranslationX(this.f11002break ? 0.0f : f2);
                        childAt.setAlpha(this.f11002break ? 1.0f : 0.0f);
                        Cfor cfor = (Cfor) childAt.getLayoutParams();
                        cfor.f11027for.setFloatValues(0.0f, f2);
                        cfor.f11026do.setFloatValues(f2, 0.0f);
                        cfor.m12427new(childAt);
                        measuredWidth2 = z2 ? measuredWidth2 - this.f11008else : measuredWidth2 + childAt.getMeasuredWidth() + this.f11008else;
                    }
                }
                return;
            }
            return;
        }
        boolean z3 = i6 == 0;
        if (z) {
            this.f11016public.m474if();
        }
        int measuredHeight3 = z3 ? (i4 - i2) - this.f11006const.getMeasuredHeight() : 0;
        int i10 = this.f11013import == 0 ? (i3 - i) - (this.f11018super / 2) : this.f11018super / 2;
        int measuredWidth3 = i10 - (this.f11006const.getMeasuredWidth() / 2);
        AddFloatingActionButton addFloatingActionButton2 = this.f11006const;
        addFloatingActionButton2.layout(measuredWidth3, measuredHeight3, addFloatingActionButton2.getMeasuredWidth() + measuredWidth3, this.f11006const.getMeasuredHeight() + measuredHeight3);
        int i11 = (this.f11018super / 2) + this.f11011goto;
        int i12 = this.f11013import == 0 ? i10 - i11 : i11 + i10;
        int measuredHeight4 = z3 ? measuredHeight3 - this.f11008else : this.f11006const.getMeasuredHeight() + measuredHeight3 + this.f11008else;
        int i13 = this.f11014native - 1;
        while (i13 >= 0) {
            View childAt2 = getChildAt(i13);
            if (childAt2 == this.f11006const || childAt2.getVisibility() == i7) {
                i5 = measuredHeight3;
            } else {
                int measuredWidth4 = i10 - (childAt2.getMeasuredWidth() / 2);
                if (z3) {
                    measuredHeight4 -= childAt2.getMeasuredHeight();
                }
                childAt2.layout(measuredWidth4, measuredHeight4, childAt2.getMeasuredWidth() + measuredWidth4, childAt2.getMeasuredHeight() + measuredHeight4);
                float f3 = measuredHeight3 - measuredHeight4;
                childAt2.setTranslationY(this.f11002break ? 0.0f : f3);
                childAt2.setAlpha(this.f11002break ? 1.0f : 0.0f);
                Cfor cfor2 = (Cfor) childAt2.getLayoutParams();
                ObjectAnimator objectAnimator = cfor2.f11027for;
                i5 = measuredHeight3;
                float[] fArr = new float[2];
                fArr[c] = f;
                fArr[c2] = f3;
                objectAnimator.setFloatValues(fArr);
                ObjectAnimator objectAnimator2 = cfor2.f11026do;
                float[] fArr2 = new float[2];
                fArr2[c] = f3;
                fArr2[c2] = f;
                objectAnimator2.setFloatValues(fArr2);
                cfor2.m12427new(childAt2);
                View view = (View) childAt2.getTag(R.id.fab_label);
                if (view != null) {
                    int measuredWidth5 = this.f11013import == 0 ? i12 - view.getMeasuredWidth() : view.getMeasuredWidth() + i12;
                    int i14 = this.f11013import;
                    int i15 = i14 == 0 ? measuredWidth5 : i12;
                    if (i14 == 0) {
                        measuredWidth5 = i12;
                    }
                    int measuredHeight5 = (measuredHeight4 - this.f11019this) + ((childAt2.getMeasuredHeight() - view.getMeasuredHeight()) / 2);
                    view.layout(i15, measuredHeight5, measuredWidth5, measuredHeight5 + view.getMeasuredHeight());
                    this.f11016public.m472do(new TouchDelegate(new Rect(Math.min(measuredWidth4, i15), measuredHeight4 - (this.f11008else / 2), Math.max(measuredWidth4 + childAt2.getMeasuredWidth(), measuredWidth5), childAt2.getMeasuredHeight() + measuredHeight4 + (this.f11008else / 2)), childAt2));
                    view.setTranslationY(this.f11002break ? 0.0f : f3);
                    view.setAlpha(this.f11002break ? 1.0f : 0.0f);
                    Cfor cfor3 = (Cfor) view.getLayoutParams();
                    cfor3.f11027for.setFloatValues(0.0f, f3);
                    cfor3.f11026do.setFloatValues(f3, 0.0f);
                    cfor3.m12427new(view);
                }
                measuredHeight4 = z3 ? measuredHeight4 - this.f11008else : measuredHeight4 + childAt2.getMeasuredHeight() + this.f11008else;
            }
            i13--;
            measuredHeight3 = i5;
            i7 = 8;
            f = 0.0f;
            c = 0;
            c2 = 1;
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        TextView textView;
        measureChildren(i, i2);
        this.f11018super = 0;
        this.f11020throw = 0;
        int iMax = 0;
        int iM12400const = 0;
        int iM12400const2 = 0;
        for (int i3 = 0; i3 < this.f11014native; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                int i4 = this.f11003case;
                if (i4 == 0 || i4 == 1) {
                    this.f11018super = Math.max(this.f11018super, childAt.getMeasuredWidth());
                    iM12400const += childAt.getMeasuredHeight();
                } else if (i4 == 2 || i4 == 3) {
                    iM12400const2 += childAt.getMeasuredWidth();
                    this.f11020throw = Math.max(this.f11020throw, childAt.getMeasuredHeight());
                }
                if (!m12408public() && (textView = (TextView) childAt.getTag(R.id.fab_label)) != null) {
                    iMax = Math.max(iMax, textView.getMeasuredWidth());
                }
            }
        }
        if (m12408public()) {
            iM12400const = this.f11020throw;
        } else {
            iM12400const2 = this.f11018super + (iMax > 0 ? this.f11011goto + iMax : 0);
        }
        int i5 = this.f11003case;
        if (i5 == 0 || i5 == 1) {
            iM12400const = m12400const(iM12400const + (this.f11008else * (this.f11014native - 1)));
        } else if (i5 == 2 || i5 == 3) {
            iM12400const2 = m12400const(iM12400const2 + (this.f11008else * (this.f11014native - 1)));
        }
        setMeasuredDimension(iM12400const2, iM12400const);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        boolean z = savedState.f11023do;
        this.f11002break = z;
        this.f11016public.m475new(z);
        Cnew cnew = this.f11009final;
        if (cnew != null) {
            cnew.setRotation(this.f11002break ? f10990abstract : 0.0f);
        }
        super.onRestoreInstanceState(savedState.getSuperState());
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11023do = this.f11002break;
        return savedState;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f11006const.setEnabled(z);
    }

    public void setOnFloatingActionsMenuUpdateListener(OnFloatingActionsMenuUpdateListener onFloatingActionsMenuUpdateListener) {
        this.f11017return = onFloatingActionsMenuUpdateListener;
    }

    /* renamed from: switch, reason: not valid java name */
    public boolean m12419switch() {
        return this.f11002break;
    }

    /* renamed from: throw, reason: not valid java name */
    public void m12420throw() {
        m12411super(true);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m12421throws(FloatingActionButton floatingActionButton) {
        removeView(floatingActionButton.getLabelView());
        removeView(floatingActionButton);
        floatingActionButton.setTag(R.id.fab_label, null);
        this.f11014native--;
    }

    public FloatingActionsMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11004catch = new AnimatorSet().setDuration(300L);
        this.f11005class = new AnimatorSet().setDuration(300L);
        m12410static(context, attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Cfor(super.generateLayoutParams(layoutParams));
    }

    public FloatingActionsMenu(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11004catch = new AnimatorSet().setDuration(300L);
        this.f11005class = new AnimatorSet().setDuration(300L);
        m12410static(context, attributeSet);
    }
}
