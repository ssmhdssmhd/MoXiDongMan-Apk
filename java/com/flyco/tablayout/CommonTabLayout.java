package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.flyco.tablayout.listener.CustomTabEntity;
import com.flyco.tablayout.listener.OnTabSelectListener;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CommonTabLayout extends FrameLayout implements ValueAnimator.AnimatorUpdateListener {
    private static final int q = 0;
    private static final int r = 1;
    private static final int s = 2;
    private static final int t = 0;
    private static final int u = 1;
    private static final int v = 2;
    private boolean a;

    /* renamed from: abstract, reason: not valid java name */
    private float f10761abstract;
    private int b;

    /* renamed from: break, reason: not valid java name */
    private Paint f10762break;
    private float c;

    /* renamed from: case, reason: not valid java name */
    private int f10763case;

    /* renamed from: catch, reason: not valid java name */
    private Paint f10764catch;

    /* renamed from: class, reason: not valid java name */
    private Path f10765class;

    /* renamed from: const, reason: not valid java name */
    private int f10766const;

    /* renamed from: continue, reason: not valid java name */
    private int f10767continue;
    private float d;

    /* renamed from: default, reason: not valid java name */
    private long f10768default;

    /* renamed from: do, reason: not valid java name */
    private Context f10769do;
    private float e;

    /* renamed from: else, reason: not valid java name */
    private Rect f10770else;

    /* renamed from: extends, reason: not valid java name */
    private boolean f10771extends;
    private int f;

    /* renamed from: final, reason: not valid java name */
    private float f10772final;

    /* renamed from: finally, reason: not valid java name */
    private boolean f10773finally;

    /* renamed from: for, reason: not valid java name */
    private LinearLayout f10774for;
    private ValueAnimator g;

    /* renamed from: goto, reason: not valid java name */
    private GradientDrawable f10775goto;
    private OvershootInterpolator h;
    private he0 i;

    /* renamed from: if, reason: not valid java name */
    private ArrayList<CustomTabEntity> f10776if;

    /* renamed from: implements, reason: not valid java name */
    private int f10777implements;

    /* renamed from: import, reason: not valid java name */
    private float f10778import;

    /* renamed from: instanceof, reason: not valid java name */
    private int f10779instanceof;

    /* renamed from: interface, reason: not valid java name */
    private float f10780interface;
    private int j;
    private boolean k;
    private Paint l;
    private SparseArray<Boolean> m;
    private OnTabSelectListener n;

    /* renamed from: native, reason: not valid java name */
    private float f10781native;

    /* renamed from: new, reason: not valid java name */
    private int f10782new;
    private Cif o;
    private Cif p;

    /* renamed from: package, reason: not valid java name */
    private int f10783package;

    /* renamed from: private, reason: not valid java name */
    private int f10784private;

    /* renamed from: protected, reason: not valid java name */
    private float f10785protected;

    /* renamed from: public, reason: not valid java name */
    private float f10786public;

    /* renamed from: return, reason: not valid java name */
    private float f10787return;

    /* renamed from: static, reason: not valid java name */
    private float f10788static;

    /* renamed from: strictfp, reason: not valid java name */
    private int f10789strictfp;

    /* renamed from: super, reason: not valid java name */
    private boolean f10790super;

    /* renamed from: switch, reason: not valid java name */
    private float f10791switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f10792synchronized;

    /* renamed from: this, reason: not valid java name */
    private Paint f10793this;

    /* renamed from: throw, reason: not valid java name */
    private float f10794throw;

    /* renamed from: throws, reason: not valid java name */
    private float f10795throws;

    /* renamed from: transient, reason: not valid java name */
    private int f10796transient;

    /* renamed from: try, reason: not valid java name */
    private int f10797try;

    /* renamed from: volatile, reason: not valid java name */
    private float f10798volatile;

    /* renamed from: while, reason: not valid java name */
    private int f10799while;

    /* renamed from: com.flyco.tablayout.CommonTabLayout$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iIntValue = ((Integer) view.getTag()).intValue();
            if (CommonTabLayout.this.f10782new == iIntValue) {
                if (CommonTabLayout.this.n != null) {
                    CommonTabLayout.this.n.onTabReselect(iIntValue);
                }
            } else {
                CommonTabLayout.this.setCurrentTab(iIntValue);
                if (CommonTabLayout.this.n != null) {
                    CommonTabLayout.this.n.onTabSelect(iIntValue);
                }
            }
        }
    }

    /* renamed from: com.flyco.tablayout.CommonTabLayout$for, reason: invalid class name */
    public class Cfor implements TypeEvaluator<Cif> {
        public Cfor() {
        }

        @Override // android.animation.TypeEvaluator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cif evaluate(float f, Cif cif, Cif cif2) {
            float f2 = cif.f10802do;
            float f3 = f2 + ((cif2.f10802do - f2) * f);
            float f4 = cif.f10804if;
            float f5 = f4 + (f * (cif2.f10804if - f4));
            Cif cif3 = CommonTabLayout.this.new Cif();
            cif3.f10802do = f3;
            cif3.f10804if = f5;
            return cif3;
        }
    }

    /* renamed from: com.flyco.tablayout.CommonTabLayout$if, reason: invalid class name */
    public class Cif {

        /* renamed from: do, reason: not valid java name */
        public float f10802do;

        /* renamed from: if, reason: not valid java name */
        public float f10804if;

        public Cif() {
        }
    }

    public CommonTabLayout(Context context) {
        this(context, null, 0);
    }

    /* renamed from: default, reason: not valid java name */
    private void m12245default() {
        for (int i = 0; i < this.f10763case; i++) {
            View childAt = this.f10774for.getChildAt(i);
            float f = this.f10772final;
            childAt.setPadding((int) f, 0, (int) f, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (i != this.f10782new) {
                textView.setTextColor(this.f10777implements);
            } else if (this.j != 0) {
                textView.setTextColor(getResources().getColor(this.j));
            } else {
                textView.setTextColor(this.f10796transient);
            }
            textView.setTextSize(0, this.f10785protected);
            if (this.f10792synchronized) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i2 = this.f10779instanceof;
            if (i2 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i2 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            if (this.a) {
                imageView.setVisibility(0);
                CustomTabEntity customTabEntity = this.f10776if.get(i);
                if (i != this.f10782new) {
                    imageView.setImageResource(customTabEntity.getTabUnselectedIcon());
                } else if (this.j != 0) {
                    Drawable drawable = ContextCompat.getDrawable(getContext(), customTabEntity.getTabSelectedIcon());
                    int color = ContextCompat.getColor(getContext(), this.j);
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        drawable = constantState.newDrawable();
                    }
                    Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                    drawableMutate.setBounds(0, 0, drawableMutate.getIntrinsicWidth(), drawableMutate.getIntrinsicHeight());
                    DrawableCompat.setTint(drawableMutate, color);
                    imageView.setImageDrawable(drawableMutate);
                } else {
                    imageView.setImageResource(customTabEntity.getTabSelectedIcon());
                }
                float f2 = this.c;
                int i3 = f2 <= 0.0f ? -2 : (int) f2;
                float f3 = this.d;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, f3 > 0.0f ? (int) f3 : -2);
                int i4 = this.b;
                if (i4 == 3) {
                    layoutParams.rightMargin = (int) this.e;
                } else if (i4 == 5) {
                    layoutParams.leftMargin = (int) this.e;
                } else if (i4 == 80) {
                    layoutParams.topMargin = (int) this.e;
                } else {
                    layoutParams.bottomMargin = (int) this.e;
                }
                imageView.setLayoutParams(layoutParams);
            } else {
                imageView.setVisibility(8);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m12247for(int i, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.f10776if.get(i).getTabTitle());
        ((ImageView) view.findViewById(R.id.iv_tab_icon)).setImageResource(this.f10776if.get(i).getTabUnselectedIcon());
        view.setOnClickListener(new Cdo());
        LinearLayout.LayoutParams layoutParams = this.f10790super ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f10794throw > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f10794throw, -1);
        }
        this.f10774for.addView(view, i, layoutParams);
    }

    /* renamed from: new, reason: not valid java name */
    private void m12249new() {
        View childAt = this.f10774for.getChildAt(this.f10782new);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        Rect rect = this.f10770else;
        rect.left = (int) left;
        rect.right = (int) right;
        if (this.f10781native < 0.0f) {
            return;
        }
        float left2 = childAt.getLeft();
        float width = childAt.getWidth();
        float f = this.f10781native;
        float f2 = left2 + ((width - f) / 2.0f);
        Rect rect2 = this.f10770else;
        int i = (int) f2;
        rect2.left = i;
        rect2.right = (int) (i + f);
    }

    /* renamed from: throws, reason: not valid java name */
    private void m12250throws(int i) {
        int i2 = 0;
        while (i2 < this.f10763case) {
            View childAt = this.f10774for.getChildAt(i2);
            boolean z = i2 == i;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (i2 != this.f10782new) {
                textView.setTextColor(this.f10777implements);
            } else if (this.j != 0) {
                textView.setTextColor(getResources().getColor(this.j));
            } else {
                textView.setTextColor(this.f10796transient);
            }
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            CustomTabEntity customTabEntity = this.f10776if.get(i2);
            if (i2 != this.f10782new) {
                imageView.setImageResource(customTabEntity.getTabUnselectedIcon());
            } else if (this.j != 0) {
                Drawable drawable = ContextCompat.getDrawable(getContext(), customTabEntity.getTabSelectedIcon());
                int color = ContextCompat.getColor(getContext(), this.j);
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
                drawableMutate.setBounds(0, 0, drawableMutate.getIntrinsicWidth(), drawableMutate.getIntrinsicHeight());
                DrawableCompat.setTint(drawableMutate, color);
                imageView.setImageDrawable(drawableMutate);
            } else {
                imageView.setImageResource(customTabEntity.getTabSelectedIcon());
            }
            if (this.f10779instanceof == 1) {
                textView.getPaint().setFakeBoldText(z);
            }
            i2++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m12251try() {
        View childAt = this.f10774for.getChildAt(this.f10782new);
        this.o.f10802do = childAt.getLeft();
        this.o.f10804if = childAt.getRight();
        View childAt2 = this.f10774for.getChildAt(this.f10797try);
        this.p.f10802do = childAt2.getLeft();
        this.p.f10804if = childAt2.getRight();
        Cif cif = this.p;
        float f = cif.f10802do;
        Cif cif2 = this.o;
        if (f == cif2.f10802do && cif.f10804if == cif2.f10804if) {
            invalidate();
            return;
        }
        this.g.setObjectValues(cif, cif2);
        if (this.f10773finally) {
            this.g.setInterpolator(this.h);
        }
        if (this.f10768default < 0) {
            this.f10768default = this.f10773finally ? 500L : 250L;
        }
        this.g.setDuration(this.f10768default);
        this.g.start();
    }

    /* renamed from: while, reason: not valid java name */
    private void m12252while(Context context, AttributeSet attributeSet) {
        float f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CommonTabLayout);
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_style, 0);
        this.f10766const = i;
        this.f10799while = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_indicator_color, Color.parseColor(i == 2 ? "#4B6A87" : "#ffffff"));
        int i2 = R.styleable.CommonTabLayout_tl_indicator_height;
        int i3 = this.f10766const;
        if (i3 == 1) {
            f = 4.0f;
        } else {
            f = i3 == 2 ? -1 : 2;
        }
        this.f10778import = typedArrayObtainStyledAttributes.getDimension(i2, m12254case(f));
        this.f10781native = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_width, m12254case(this.f10766const == 1 ? 10.0f : -1.0f));
        this.f10786public = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_corner_radius, m12254case(this.f10766const == 2 ? -1.0f : 0.0f));
        this.f10787return = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_left, m12254case(0.0f));
        this.f10788static = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_top, m12254case(this.f10766const == 2 ? 7.0f : 0.0f));
        this.f10791switch = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_right, m12254case(0.0f));
        this.f10795throws = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_bottom, m12254case(this.f10766const != 2 ? 0.0f : 7.0f));
        this.f10771extends = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_anim_enable, true);
        this.f10773finally = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_bounce_enable, true);
        this.f10768default = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_anim_duration, -1);
        this.f10783package = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_gravity, 80);
        this.f10784private = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.f10761abstract = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_underline_height, m12254case(0.0f));
        this.f10767continue = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_underline_gravity, 80);
        this.f10789strictfp = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.f10798volatile = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_width, m12254case(0.0f));
        this.f10780interface = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_padding, m12254case(12.0f));
        this.f10785protected = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_textsize, m12267switch(13.0f));
        this.f10796transient = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.f10777implements = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.f10779instanceof = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_textBold, 0);
        this.f10792synchronized = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_textAllCaps, false);
        this.a = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_iconVisible, true);
        this.b = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_iconGravity, 48);
        this.c = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconWidth, m12254case(0.0f));
        this.d = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconHeight, m12254case(0.0f));
        this.e = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconMargin, m12254case(2.5f));
        this.f10790super = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_tab_space_equal, true);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_width, m12254case(-1.0f));
        this.f10794throw = dimension;
        this.f10772final = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_padding, (this.f10790super || dimension > 0.0f) ? m12254case(0.0f) : m12254case(10.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* renamed from: break, reason: not valid java name */
    public void m12253break(int i) {
        int i2 = this.f10763case;
        if (i >= i2) {
            i = i2 - 1;
        }
        MsgView msgView = (MsgView) this.f10774for.getChildAt(i).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int m12254case(float f) {
        return (int) ((f * this.f10769do.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m12255catch() {
        return this.a;
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m12256class() {
        return this.f10771extends;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m12257const() {
        return this.f10773finally;
    }

    /* renamed from: else, reason: not valid java name */
    public ImageView m12258else(int i) {
        return (ImageView) this.f10774for.getChildAt(i).findViewById(R.id.iv_tab_icon);
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m12259final() {
        return this.f10790super;
    }

    public int getCurrentTab() {
        return this.f10782new;
    }

    public int getDividerColor() {
        return this.f10789strictfp;
    }

    public float getDividerPadding() {
        return this.f10780interface;
    }

    public float getDividerWidth() {
        return this.f10798volatile;
    }

    public int getIconColor() {
        return this.j;
    }

    public int getIconGravity() {
        return this.b;
    }

    public float getIconHeight() {
        return this.d;
    }

    public float getIconMargin() {
        return this.e;
    }

    public float getIconWidth() {
        return this.c;
    }

    public long getIndicatorAnimDuration() {
        return this.f10768default;
    }

    public int getIndicatorColor() {
        return this.f10799while;
    }

    public float getIndicatorCornerRadius() {
        return this.f10786public;
    }

    public float getIndicatorHeight() {
        return this.f10778import;
    }

    public float getIndicatorMarginBottom() {
        return this.f10795throws;
    }

    public float getIndicatorMarginLeft() {
        return this.f10787return;
    }

    public float getIndicatorMarginRight() {
        return this.f10791switch;
    }

    public float getIndicatorMarginTop() {
        return this.f10788static;
    }

    public int getIndicatorStyle() {
        return this.f10766const;
    }

    public float getIndicatorWidth() {
        return this.f10781native;
    }

    public int getTabCount() {
        return this.f10763case;
    }

    public float getTabPadding() {
        return this.f10772final;
    }

    public float getTabWidth() {
        return this.f10794throw;
    }

    public int getTextBold() {
        return this.f10779instanceof;
    }

    public int getTextSelectColor() {
        return this.f10796transient;
    }

    public int getTextUnselectColor() {
        return this.f10777implements;
    }

    public float getTextsize() {
        return this.f10785protected;
    }

    public int getUnderlineColor() {
        return this.f10784private;
    }

    public float getUnderlineHeight() {
        return this.f10761abstract;
    }

    /* renamed from: goto, reason: not valid java name */
    public MsgView m12260goto(int i) {
        int i2 = this.f10763case;
        if (i >= i2) {
            i = i2 - 1;
        }
        return (MsgView) this.f10774for.getChildAt(i).findViewById(R.id.rtv_msg_tip);
    }

    /* renamed from: import, reason: not valid java name */
    public void m12261import(float f, float f2, float f3, float f4) {
        this.f10787return = m12254case(f);
        this.f10788static = m12254case(f2);
        this.f10791switch = m12254case(f3);
        this.f10795throws = m12254case(f4);
        invalidate();
    }

    /* renamed from: native, reason: not valid java name */
    public void m12262native(int i, float f, float f2) {
        int i2 = this.f10763case;
        if (i >= i2) {
            i = i2 - 1;
        }
        View childAt = this.f10774for.getChildAt(i);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.l.setTextSize(this.f10785protected);
            this.l.measureText(textView.getText().toString());
            float fDescent = this.l.descent() - this.l.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float intrinsicHeight = this.d;
            float f3 = 0.0f;
            if (this.a) {
                if (intrinsicHeight <= 0.0f) {
                    intrinsicHeight = this.f10769do.getResources().getDrawable(this.f10776if.get(i).getTabSelectedIcon()).getIntrinsicHeight();
                }
                f3 = this.e;
            }
            int i3 = this.b;
            if (i3 == 48 || i3 == 80) {
                marginLayoutParams.leftMargin = m12254case(f);
                int i4 = this.f;
                marginLayoutParams.topMargin = i4 > 0 ? (((int) (((i4 - fDescent) - intrinsicHeight) - f3)) / 2) - m12254case(f2) : m12254case(f2);
            } else {
                marginLayoutParams.leftMargin = m12254case(f);
                int i5 = this.f;
                marginLayoutParams.topMargin = i5 > 0 ? (((int) (i5 - Math.max(fDescent, intrinsicHeight))) / 2) - m12254case(f2) : m12254case(f2);
            }
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        View childAt = this.f10774for.getChildAt(this.f10782new);
        Cif cif = (Cif) valueAnimator.getAnimatedValue();
        Rect rect = this.f10770else;
        float f = cif.f10802do;
        rect.left = (int) f;
        rect.right = (int) cif.f10804if;
        if (this.f10781native >= 0.0f) {
            float width = childAt.getWidth();
            float f2 = this.f10781native;
            float f3 = f + ((width - f2) / 2.0f);
            Rect rect2 = this.f10770else;
            int i = (int) f3;
            rect2.left = i;
            rect2.right = (int) (i + f2);
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f10763case <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f = this.f10798volatile;
        if (f > 0.0f) {
            this.f10762break.setStrokeWidth(f);
            this.f10762break.setColor(this.f10789strictfp);
            for (int i = 0; i < this.f10763case - 1; i++) {
                View childAt = this.f10774for.getChildAt(i);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.f10780interface, childAt.getRight() + paddingLeft, height - this.f10780interface, this.f10762break);
            }
        }
        if (this.f10761abstract > 0.0f) {
            this.f10793this.setColor(this.f10784private);
            if (this.f10767continue == 80) {
                float f2 = height;
                canvas.drawRect(paddingLeft, f2 - this.f10761abstract, this.f10774for.getWidth() + paddingLeft, f2, this.f10793this);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f10774for.getWidth() + paddingLeft, this.f10761abstract, this.f10793this);
            }
        }
        if (!this.f10771extends) {
            m12249new();
        } else if (this.k) {
            this.k = false;
            m12249new();
        }
        int i2 = this.f10766const;
        if (i2 == 1) {
            if (this.f10778import > 0.0f) {
                this.f10764catch.setColor(this.f10799while);
                this.f10765class.reset();
                float f3 = height;
                this.f10765class.moveTo(this.f10770else.left + paddingLeft, f3);
                Path path = this.f10765class;
                Rect rect = this.f10770else;
                path.lineTo((rect.left / 2) + paddingLeft + (rect.right / 2), f3 - this.f10778import);
                this.f10765class.lineTo(paddingLeft + this.f10770else.right, f3);
                this.f10765class.close();
                canvas.drawPath(this.f10765class, this.f10764catch);
                return;
            }
            return;
        }
        if (i2 == 2) {
            if (this.f10778import < 0.0f) {
                this.f10778import = (height - this.f10788static) - this.f10795throws;
            }
            float f4 = this.f10778import;
            if (f4 > 0.0f) {
                float f5 = this.f10786public;
                if (f5 < 0.0f || f5 > f4 / 2.0f) {
                    this.f10786public = f4 / 2.0f;
                }
                this.f10775goto.setColor(this.f10799while);
                GradientDrawable gradientDrawable = this.f10775goto;
                int i3 = ((int) this.f10787return) + paddingLeft + this.f10770else.left;
                float f6 = this.f10788static;
                gradientDrawable.setBounds(i3, (int) f6, (int) ((paddingLeft + r2.right) - this.f10791switch), (int) (f6 + this.f10778import));
                this.f10775goto.setCornerRadius(this.f10786public);
                this.f10775goto.draw(canvas);
                return;
            }
            return;
        }
        if (this.f10778import > 0.0f) {
            this.f10775goto.setColor(this.f10799while);
            if (this.f10783package == 80) {
                GradientDrawable gradientDrawable2 = this.f10775goto;
                int i4 = ((int) this.f10787return) + paddingLeft;
                Rect rect2 = this.f10770else;
                int i5 = i4 + rect2.left;
                int i6 = height - ((int) this.f10778import);
                float f7 = this.f10795throws;
                gradientDrawable2.setBounds(i5, i6 - ((int) f7), (paddingLeft + rect2.right) - ((int) this.f10791switch), height - ((int) f7));
            } else {
                GradientDrawable gradientDrawable3 = this.f10775goto;
                int i7 = ((int) this.f10787return) + paddingLeft;
                Rect rect3 = this.f10770else;
                int i8 = i7 + rect3.left;
                float f8 = this.f10788static;
                gradientDrawable3.setBounds(i8, (int) f8, (paddingLeft + rect3.right) - ((int) this.f10791switch), ((int) this.f10778import) + ((int) f8));
            }
            this.f10775goto.setCornerRadius(this.f10786public);
            this.f10775goto.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f10782new = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f10782new != 0 && this.f10774for.getChildCount() > 0) {
                m12250throws(this.f10782new);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f10782new);
        return bundle;
    }

    /* renamed from: public, reason: not valid java name */
    public void m12263public(ArrayList<CustomTabEntity> arrayList, FragmentActivity fragmentActivity, int i, ArrayList<Fragment> arrayList2) {
        this.i = new he0(fragmentActivity.getSupportFragmentManager(), i, arrayList2);
        setTabData(arrayList);
    }

    /* renamed from: return, reason: not valid java name */
    public void m12264return(int i) {
        int i2 = this.f10763case;
        if (i >= i2) {
            i = i2 - 1;
        }
        m12265static(i, 0);
    }

    public void setCurrentTab(int i) {
        this.f10797try = this.f10782new;
        this.f10782new = i;
        m12250throws(i);
        he0 he0Var = this.i;
        if (he0Var != null) {
            he0Var.m3001new(i);
        }
        if (this.f10771extends) {
            m12251try();
        } else {
            invalidate();
        }
    }

    public void setDividerColor(int i) {
        this.f10789strictfp = i;
        invalidate();
    }

    public void setDividerPadding(float f) {
        this.f10780interface = m12254case(f);
        invalidate();
    }

    public void setDividerWidth(float f) {
        this.f10798volatile = m12254case(f);
        invalidate();
    }

    public void setIconColor(int i) {
        this.j = i;
        m12245default();
    }

    public void setIconGravity(int i) {
        this.b = i;
        m12269throw();
    }

    public void setIconHeight(float f) {
        this.d = m12254case(f);
        m12245default();
    }

    public void setIconMargin(float f) {
        this.e = m12254case(f);
        m12245default();
    }

    public void setIconVisible(boolean z) {
        this.a = z;
        m12245default();
    }

    public void setIconWidth(float f) {
        this.c = m12254case(f);
        m12245default();
    }

    public void setIndicatorAnimDuration(long j) {
        this.f10768default = j;
    }

    public void setIndicatorAnimEnable(boolean z) {
        this.f10771extends = z;
    }

    public void setIndicatorBounceEnable(boolean z) {
        this.f10773finally = z;
    }

    public void setIndicatorColor(int i) {
        this.f10799while = i;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f) {
        this.f10786public = m12254case(f);
        invalidate();
    }

    public void setIndicatorGravity(int i) {
        this.f10783package = i;
        invalidate();
    }

    public void setIndicatorHeight(float f) {
        this.f10778import = m12254case(f);
        invalidate();
    }

    public void setIndicatorStyle(int i) {
        this.f10766const = i;
        invalidate();
    }

    public void setIndicatorWidth(float f) {
        this.f10781native = m12254case(f);
        invalidate();
    }

    public void setOnTabSelectListener(OnTabSelectListener onTabSelectListener) {
        this.n = onTabSelectListener;
    }

    public void setTabData(ArrayList<CustomTabEntity> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            throw new IllegalStateException("TabEntitys can not be NULL or EMPTY !");
        }
        this.f10776if.clear();
        this.f10776if.addAll(arrayList);
        m12269throw();
    }

    public void setTabPadding(float f) {
        this.f10772final = m12254case(f);
        m12245default();
    }

    public void setTabSpaceEqual(boolean z) {
        this.f10790super = z;
        m12245default();
    }

    public void setTabWidth(float f) {
        this.f10794throw = m12254case(f);
        m12245default();
    }

    public void setTextAllCaps(boolean z) {
        this.f10792synchronized = z;
        m12245default();
    }

    public void setTextBold(int i) {
        this.f10779instanceof = i;
        m12245default();
    }

    public void setTextSelectColor(int i) {
        this.f10796transient = i;
        m12245default();
    }

    public void setTextUnselectColor(int i) {
        this.f10777implements = i;
        m12245default();
    }

    public void setTextsize(float f) {
        this.f10785protected = m12267switch(f);
        m12245default();
    }

    public void setUnderlineColor(int i) {
        this.f10784private = i;
        invalidate();
    }

    public void setUnderlineGravity(int i) {
        this.f10767continue = i;
        invalidate();
    }

    public void setUnderlineHeight(float f) {
        this.f10761abstract = m12254case(f);
        invalidate();
    }

    /* renamed from: static, reason: not valid java name */
    public void m12265static(int i, int i2) {
        int i3 = this.f10763case;
        if (i >= i3) {
            i = i3 - 1;
        }
        MsgView msgView = (MsgView) this.f10774for.getChildAt(i).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            hc2.m2985if(msgView, i2);
            if (this.m.get(i) == null || !this.m.get(i).booleanValue()) {
                if (this.a) {
                    int i4 = this.b;
                    m12262native(i, 0.0f, (i4 == 3 || i4 == 5) ? 4.0f : 0.0f);
                } else {
                    m12262native(i, 2.0f, 2.0f);
                }
                this.m.put(i, Boolean.TRUE);
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m12266super() {
        return this.f10792synchronized;
    }

    /* renamed from: switch, reason: not valid java name */
    public int m12267switch(float f) {
        return (int) ((f * this.f10769do.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: this, reason: not valid java name */
    public TextView m12268this(int i) {
        return (TextView) this.f10774for.getChildAt(i).findViewById(R.id.tv_tab_title);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m12269throw() {
        this.f10774for.removeAllViews();
        this.f10763case = this.f10776if.size();
        for (int i = 0; i < this.f10763case; i++) {
            int i2 = this.b;
            View viewInflate = i2 == 3 ? View.inflate(this.f10769do, R.layout.layout_tab_left, null) : i2 == 5 ? View.inflate(this.f10769do, R.layout.layout_tab_right, null) : i2 == 80 ? View.inflate(this.f10769do, R.layout.layout_tab_bottom, null) : View.inflate(this.f10769do, R.layout.layout_tab_top, null);
            viewInflate.setTag(Integer.valueOf(i));
            m12247for(i, viewInflate);
        }
        m12245default();
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10776if = new ArrayList<>();
        this.f10770else = new Rect();
        this.f10775goto = new GradientDrawable();
        this.f10793this = new Paint(1);
        this.f10762break = new Paint(1);
        this.f10764catch = new Paint(1);
        this.f10765class = new Path();
        this.f10766const = 0;
        this.h = new OvershootInterpolator(1.5f);
        this.k = true;
        this.l = new Paint(1);
        this.m = new SparseArray<>();
        this.o = new Cif();
        this.p = new Cif();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f10769do = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f10774for = linearLayout;
        addView(linearLayout);
        m12252while(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals("-1") && !attributeValue.equals("-2")) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.layout_height});
            this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
            typedArrayObtainStyledAttributes.recycle();
        }
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new Cfor(), this.p, this.o);
        this.g = valueAnimatorOfObject;
        valueAnimatorOfObject.addUpdateListener(this);
    }
}
