package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.hc2;
import android.support.v4.he0;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.flyco.tablayout.listener.OnTabSelectListener;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SegmentTabLayout extends FrameLayout implements ValueAnimator.AnimatorUpdateListener {
    private static final int g = 0;
    private static final int h = 1;
    private static final int i = 2;
    private boolean a;

    /* renamed from: abstract, reason: not valid java name */
    private int f10805abstract;
    private Paint b;

    /* renamed from: break, reason: not valid java name */
    private Paint f10806break;
    private SparseArray<Boolean> c;

    /* renamed from: case, reason: not valid java name */
    private int f10807case;

    /* renamed from: catch, reason: not valid java name */
    private float f10808catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f10809class;

    /* renamed from: const, reason: not valid java name */
    private float f10810const;

    /* renamed from: continue, reason: not valid java name */
    private boolean f10811continue;
    private OnTabSelectListener d;

    /* renamed from: default, reason: not valid java name */
    private float f10812default;

    /* renamed from: do, reason: not valid java name */
    private Context f10813do;
    private Cif e;

    /* renamed from: else, reason: not valid java name */
    private Rect f10814else;

    /* renamed from: extends, reason: not valid java name */
    private float f10815extends;
    private Cif f;

    /* renamed from: final, reason: not valid java name */
    private int f10816final;

    /* renamed from: finally, reason: not valid java name */
    private float f10817finally;

    /* renamed from: for, reason: not valid java name */
    private LinearLayout f10818for;

    /* renamed from: goto, reason: not valid java name */
    private GradientDrawable f10819goto;

    /* renamed from: if, reason: not valid java name */
    private String[] f10820if;

    /* renamed from: implements, reason: not valid java name */
    private OvershootInterpolator f10821implements;

    /* renamed from: import, reason: not valid java name */
    private float f10822import;

    /* renamed from: instanceof, reason: not valid java name */
    private he0 f10823instanceof;

    /* renamed from: interface, reason: not valid java name */
    private float f10824interface;

    /* renamed from: native, reason: not valid java name */
    private float f10825native;

    /* renamed from: new, reason: not valid java name */
    private int f10826new;

    /* renamed from: package, reason: not valid java name */
    private int f10827package;

    /* renamed from: private, reason: not valid java name */
    private int f10828private;

    /* renamed from: protected, reason: not valid java name */
    private int f10829protected;

    /* renamed from: public, reason: not valid java name */
    private float f10830public;

    /* renamed from: return, reason: not valid java name */
    private long f10831return;

    /* renamed from: static, reason: not valid java name */
    private boolean f10832static;

    /* renamed from: strictfp, reason: not valid java name */
    private int f10833strictfp;

    /* renamed from: super, reason: not valid java name */
    private float f10834super;

    /* renamed from: switch, reason: not valid java name */
    private boolean f10835switch;

    /* renamed from: synchronized, reason: not valid java name */
    private float[] f10836synchronized;

    /* renamed from: this, reason: not valid java name */
    private GradientDrawable f10837this;

    /* renamed from: throw, reason: not valid java name */
    private float f10838throw;

    /* renamed from: throws, reason: not valid java name */
    private int f10839throws;

    /* renamed from: transient, reason: not valid java name */
    private ValueAnimator f10840transient;

    /* renamed from: try, reason: not valid java name */
    private int f10841try;

    /* renamed from: volatile, reason: not valid java name */
    private int f10842volatile;

    /* renamed from: while, reason: not valid java name */
    private float f10843while;

    /* renamed from: com.flyco.tablayout.SegmentTabLayout$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iIntValue = ((Integer) view.getTag()).intValue();
            if (SegmentTabLayout.this.f10826new == iIntValue) {
                if (SegmentTabLayout.this.d != null) {
                    SegmentTabLayout.this.d.onTabReselect(iIntValue);
                }
            } else {
                SegmentTabLayout.this.setCurrentTab(iIntValue);
                if (SegmentTabLayout.this.d != null) {
                    SegmentTabLayout.this.d.onTabSelect(iIntValue);
                }
            }
        }
    }

    /* renamed from: com.flyco.tablayout.SegmentTabLayout$for, reason: invalid class name */
    public class Cfor implements TypeEvaluator<Cif> {
        public Cfor() {
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif evaluate(float f, Cif cif, Cif cif2) {
            float f2 = cif.f10846do;
            float f3 = f2 + ((cif2.f10846do - f2) * f);
            float f4 = cif.f10848if;
            float f5 = f4 + (f * (cif2.f10848if - f4));
            Cif cif3 = SegmentTabLayout.this.new Cif();
            cif3.f10846do = f3;
            cif3.f10848if = f5;
            return cif3;
        }
    }

    /* renamed from: com.flyco.tablayout.SegmentTabLayout$if, reason: invalid class name */
    public class Cif {

        /* renamed from: do, reason: not valid java name */
        public float f10846do;

        /* renamed from: if, reason: not valid java name */
        public float f10848if;

        public Cif() {
        }
    }

    public SegmentTabLayout(Context context) {
        this(context, null, 0);
    }

    /* renamed from: for, reason: not valid java name */
    private void m12272for(int i2, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.f10820if[i2]);
        view.setOnClickListener(new Cdo());
        LinearLayout.LayoutParams layoutParams = this.f10809class ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f10810const > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f10810const, -1);
        }
        this.f10818for.addView(view, i2, layoutParams);
    }

    /* renamed from: new, reason: not valid java name */
    private void m12274new() {
        View childAt = this.f10818for.getChildAt(this.f10826new);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        Rect rect = this.f10814else;
        rect.left = (int) left;
        rect.right = (int) right;
        if (this.f10832static) {
            float[] fArr = this.f10836synchronized;
            float f = this.f10838throw;
            fArr[0] = f;
            fArr[1] = f;
            fArr[2] = f;
            fArr[3] = f;
            fArr[4] = f;
            fArr[5] = f;
            fArr[6] = f;
            fArr[7] = f;
            return;
        }
        int i2 = this.f10826new;
        if (i2 == 0) {
            float[] fArr2 = this.f10836synchronized;
            float f2 = this.f10838throw;
            fArr2[0] = f2;
            fArr2[1] = f2;
            fArr2[2] = 0.0f;
            fArr2[3] = 0.0f;
            fArr2[4] = 0.0f;
            fArr2[5] = 0.0f;
            fArr2[6] = f2;
            fArr2[7] = f2;
            return;
        }
        if (i2 != this.f10807case - 1) {
            float[] fArr3 = this.f10836synchronized;
            fArr3[0] = 0.0f;
            fArr3[1] = 0.0f;
            fArr3[2] = 0.0f;
            fArr3[3] = 0.0f;
            fArr3[4] = 0.0f;
            fArr3[5] = 0.0f;
            fArr3[6] = 0.0f;
            fArr3[7] = 0.0f;
            return;
        }
        float[] fArr4 = this.f10836synchronized;
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        float f3 = this.f10838throw;
        fArr4[2] = f3;
        fArr4[3] = f3;
        fArr4[4] = f3;
        fArr4[5] = f3;
        fArr4[6] = 0.0f;
        fArr4[7] = 0.0f;
    }

    /* renamed from: static, reason: not valid java name */
    private void m12275static(int i2) {
        int i3 = 0;
        while (i3 < this.f10807case) {
            View childAt = this.f10818for.getChildAt(i3);
            boolean z = i3 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z ? this.f10827package : this.f10828private);
            if (this.f10805abstract == 1) {
                textView.getPaint().setFakeBoldText(z);
            }
            i3++;
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m12276super(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SegmentTabLayout);
        this.f10816final = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_indicator_color, Color.parseColor("#222831"));
        this.f10834super = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_height, -1.0f);
        this.f10838throw = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_corner_radius, -1.0f);
        this.f10843while = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_left, m12280case(0.0f));
        this.f10822import = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_top, 0.0f);
        this.f10825native = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_right, m12280case(0.0f));
        this.f10830public = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_bottom, 0.0f);
        this.f10832static = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_anim_enable, false);
        this.f10835switch = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_bounce_enable, true);
        this.f10831return = typedArrayObtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_indicator_anim_duration, -1);
        this.f10839throws = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_divider_color, this.f10816final);
        this.f10812default = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_width, m12280case(1.0f));
        this.f10815extends = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_padding, 0.0f);
        this.f10817finally = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_textsize, m12290return(13.0f));
        this.f10827package = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.f10828private = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textUnselectColor, this.f10816final);
        this.f10805abstract = typedArrayObtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_textBold, 0);
        this.f10811continue = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_textAllCaps, false);
        this.f10809class = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_tab_space_equal, true);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_width, m12280case(-1.0f));
        this.f10810const = dimension;
        this.f10808catch = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_padding, (this.f10809class || dimension > 0.0f) ? m12280case(0.0f) : m12280case(10.0f));
        this.f10833strictfp = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_color, 0);
        this.f10842volatile = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_stroke_color, this.f10816final);
        this.f10824interface = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_bar_stroke_width, m12280case(1.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* renamed from: switch, reason: not valid java name */
    private void m12277switch() {
        int i2 = 0;
        while (i2 < this.f10807case) {
            View childAt = this.f10818for.getChildAt(i2);
            float f = this.f10808catch;
            childAt.setPadding((int) f, 0, (int) f, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i2 == this.f10826new ? this.f10827package : this.f10828private);
            textView.setTextSize(0, this.f10817finally);
            if (this.f10811continue) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i3 = this.f10805abstract;
            if (i3 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i3 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            i2++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m12278try() {
        View childAt = this.f10818for.getChildAt(this.f10826new);
        this.e.f10846do = childAt.getLeft();
        this.e.f10848if = childAt.getRight();
        View childAt2 = this.f10818for.getChildAt(this.f10841try);
        this.f.f10846do = childAt2.getLeft();
        this.f.f10848if = childAt2.getRight();
        Cif cif = this.f;
        float f = cif.f10846do;
        Cif cif2 = this.e;
        if (f == cif2.f10846do && cif.f10848if == cif2.f10848if) {
            invalidate();
            return;
        }
        this.f10840transient.setObjectValues(cif, cif2);
        if (this.f10835switch) {
            this.f10840transient.setInterpolator(this.f10821implements);
        }
        if (this.f10831return < 0) {
            this.f10831return = this.f10835switch ? 500L : 250L;
        }
        this.f10840transient.setDuration(this.f10831return);
        this.f10840transient.start();
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m12279break() {
        return this.f10832static;
    }

    /* renamed from: case, reason: not valid java name */
    public int m12280case(float f) {
        return (int) ((f * this.f10813do.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m12281catch() {
        return this.f10835switch;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m12282class() {
        return this.f10809class;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m12283const() {
        return this.f10811continue;
    }

    /* renamed from: else, reason: not valid java name */
    public MsgView m12284else(int i2) {
        int i3 = this.f10807case;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        return (MsgView) this.f10818for.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
    }

    /* renamed from: final, reason: not valid java name */
    public void m12285final() {
        this.f10818for.removeAllViews();
        this.f10807case = this.f10820if.length;
        for (int i2 = 0; i2 < this.f10807case; i2++) {
            View viewInflate = View.inflate(this.f10813do, R.layout.layout_tab_segment, null);
            viewInflate.setTag(Integer.valueOf(i2));
            m12272for(i2, viewInflate);
        }
        m12277switch();
    }

    public int getCurrentTab() {
        return this.f10826new;
    }

    public int getDividerColor() {
        return this.f10839throws;
    }

    public float getDividerPadding() {
        return this.f10815extends;
    }

    public float getDividerWidth() {
        return this.f10812default;
    }

    public long getIndicatorAnimDuration() {
        return this.f10831return;
    }

    public int getIndicatorColor() {
        return this.f10816final;
    }

    public float getIndicatorCornerRadius() {
        return this.f10838throw;
    }

    public float getIndicatorHeight() {
        return this.f10834super;
    }

    public float getIndicatorMarginBottom() {
        return this.f10830public;
    }

    public float getIndicatorMarginLeft() {
        return this.f10843while;
    }

    public float getIndicatorMarginRight() {
        return this.f10825native;
    }

    public float getIndicatorMarginTop() {
        return this.f10822import;
    }

    public int getTabCount() {
        return this.f10807case;
    }

    public float getTabPadding() {
        return this.f10808catch;
    }

    public float getTabWidth() {
        return this.f10810const;
    }

    public int getTextBold() {
        return this.f10805abstract;
    }

    public int getTextSelectColor() {
        return this.f10827package;
    }

    public int getTextUnselectColor() {
        return this.f10828private;
    }

    public float getTextsize() {
        return this.f10817finally;
    }

    /* renamed from: goto, reason: not valid java name */
    public TextView m12286goto(int i2) {
        return (TextView) this.f10818for.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    /* renamed from: import, reason: not valid java name */
    public void m12287import(String[] strArr, FragmentActivity fragmentActivity, int i2, ArrayList<Fragment> arrayList) {
        this.f10823instanceof = new he0(fragmentActivity.getSupportFragmentManager(), i2, arrayList);
        setTabData(strArr);
    }

    /* renamed from: native, reason: not valid java name */
    public void m12288native(int i2) {
        int i3 = this.f10807case;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        m12289public(i2, 0);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Cif cif = (Cif) valueAnimator.getAnimatedValue();
        Rect rect = this.f10814else;
        rect.left = (int) cif.f10846do;
        rect.right = (int) cif.f10848if;
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f10807case <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        if (this.f10834super < 0.0f) {
            this.f10834super = (height - this.f10822import) - this.f10830public;
        }
        float f = this.f10838throw;
        if (f < 0.0f || f > this.f10834super / 2.0f) {
            this.f10838throw = this.f10834super / 2.0f;
        }
        this.f10837this.setColor(this.f10833strictfp);
        this.f10837this.setStroke((int) this.f10824interface, this.f10842volatile);
        this.f10837this.setCornerRadius(this.f10838throw);
        this.f10837this.setBounds(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.f10837this.draw(canvas);
        if (!this.f10832static) {
            float f2 = this.f10812default;
            if (f2 > 0.0f) {
                this.f10806break.setStrokeWidth(f2);
                this.f10806break.setColor(this.f10839throws);
                for (int i2 = 0; i2 < this.f10807case - 1; i2++) {
                    View childAt = this.f10818for.getChildAt(i2);
                    canvas.drawLine(childAt.getRight() + paddingLeft, this.f10815extends, childAt.getRight() + paddingLeft, height - this.f10815extends, this.f10806break);
                }
            }
        }
        if (!this.f10832static) {
            m12274new();
        } else if (this.a) {
            this.a = false;
            m12274new();
        }
        this.f10819goto.setColor(this.f10816final);
        GradientDrawable gradientDrawable = this.f10819goto;
        int i3 = ((int) this.f10843while) + paddingLeft + this.f10814else.left;
        float f3 = this.f10822import;
        gradientDrawable.setBounds(i3, (int) f3, (int) ((paddingLeft + r3.right) - this.f10825native), (int) (f3 + this.f10834super));
        this.f10819goto.setCornerRadii(this.f10836synchronized);
        this.f10819goto.draw(canvas);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f10826new = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f10826new != 0 && this.f10818for.getChildCount() > 0) {
                m12275static(this.f10826new);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f10826new);
        return bundle;
    }

    /* renamed from: public, reason: not valid java name */
    public void m12289public(int i2, int i3) {
        int i4 = this.f10807case;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.f10818for.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            hc2.m2985if(msgView, i3);
            if (this.c.get(i2) == null || !this.c.get(i2).booleanValue()) {
                m12293while(i2, 2.0f, 2.0f);
                this.c.put(i2, Boolean.TRUE);
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    public int m12290return(float f) {
        return (int) ((f * this.f10813do.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setCurrentTab(int i2) {
        this.f10841try = this.f10826new;
        this.f10826new = i2;
        m12275static(i2);
        he0 he0Var = this.f10823instanceof;
        if (he0Var != null) {
            he0Var.m3001new(i2);
        }
        if (this.f10832static) {
            m12278try();
        } else {
            invalidate();
        }
    }

    public void setDividerColor(int i2) {
        this.f10839throws = i2;
        invalidate();
    }

    public void setDividerPadding(float f) {
        this.f10815extends = m12280case(f);
        invalidate();
    }

    public void setDividerWidth(float f) {
        this.f10812default = m12280case(f);
        invalidate();
    }

    public void setIndicatorAnimDuration(long j) {
        this.f10831return = j;
    }

    public void setIndicatorAnimEnable(boolean z) {
        this.f10832static = z;
    }

    public void setIndicatorBounceEnable(boolean z) {
        this.f10835switch = z;
    }

    public void setIndicatorColor(int i2) {
        this.f10816final = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f) {
        this.f10838throw = m12280case(f);
        invalidate();
    }

    public void setIndicatorHeight(float f) {
        this.f10834super = m12280case(f);
        invalidate();
    }

    public void setOnTabSelectListener(OnTabSelectListener onTabSelectListener) {
        this.d = onTabSelectListener;
    }

    public void setTabData(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalStateException("Titles can not be NULL or EMPTY !");
        }
        this.f10820if = strArr;
        m12285final();
    }

    public void setTabPadding(float f) {
        this.f10808catch = m12280case(f);
        m12277switch();
    }

    public void setTabSpaceEqual(boolean z) {
        this.f10809class = z;
        m12277switch();
    }

    public void setTabWidth(float f) {
        this.f10810const = m12280case(f);
        m12277switch();
    }

    public void setTextAllCaps(boolean z) {
        this.f10811continue = z;
        m12277switch();
    }

    public void setTextBold(int i2) {
        this.f10805abstract = i2;
        m12277switch();
    }

    public void setTextSelectColor(int i2) {
        this.f10827package = i2;
        m12277switch();
    }

    public void setTextUnselectColor(int i2) {
        this.f10828private = i2;
        m12277switch();
    }

    public void setTextsize(float f) {
        this.f10817finally = m12290return(f);
        m12277switch();
    }

    /* renamed from: this, reason: not valid java name */
    public void m12291this(int i2) {
        int i3 = this.f10807case;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        MsgView msgView = (MsgView) this.f10818for.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public void m12292throw(float f, float f2, float f3, float f4) {
        this.f10843while = m12280case(f);
        this.f10822import = m12280case(f2);
        this.f10825native = m12280case(f3);
        this.f10830public = m12280case(f4);
        invalidate();
    }

    /* renamed from: while, reason: not valid java name */
    public void m12293while(int i2, float f, float f2) {
        int i3 = this.f10807case;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        View childAt = this.f10818for.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.b.setTextSize(this.f10817finally);
            this.b.measureText(textView.getText().toString());
            float fDescent = this.b.descent() - this.b.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            marginLayoutParams.leftMargin = m12280case(f);
            int i4 = this.f10829protected;
            marginLayoutParams.topMargin = i4 > 0 ? (((int) (i4 - fDescent)) / 2) - m12280case(f2) : m12280case(f2);
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f10814else = new Rect();
        this.f10819goto = new GradientDrawable();
        this.f10837this = new GradientDrawable();
        this.f10806break = new Paint(1);
        this.f10821implements = new OvershootInterpolator(0.8f);
        this.f10836synchronized = new float[8];
        this.a = true;
        this.b = new Paint(1);
        this.c = new SparseArray<>();
        this.e = new Cif();
        this.f = new Cif();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f10813do = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f10818for = linearLayout;
        addView(linearLayout);
        m12276super(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals("-1") && !attributeValue.equals("-2")) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.layout_height});
            this.f10829protected = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
            typedArrayObtainStyledAttributes.recycle();
        }
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new Cfor(), this.f, this.e);
        this.f10840transient = valueAnimatorOfObject;
        valueAnimatorOfObject.addUpdateListener(this);
    }
}
