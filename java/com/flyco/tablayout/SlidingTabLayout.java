package com.flyco.tablayout;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.hc2;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.listener.OnTabSelectListener;
import com.flyco.tablayout.widget.MsgView;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class SlidingTabLayout extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private static final int i = 0;
    private static final int j = 1;
    private static final int k = 2;
    private static final int l = 0;
    private static final int m = 1;
    private static final int n = 2;
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    private float f10849abstract;
    private int b;

    /* renamed from: break, reason: not valid java name */
    private GradientDrawable f10850break;
    private boolean c;

    /* renamed from: case, reason: not valid java name */
    private float f10851case;

    /* renamed from: catch, reason: not valid java name */
    private Paint f10852catch;

    /* renamed from: class, reason: not valid java name */
    private Paint f10853class;

    /* renamed from: const, reason: not valid java name */
    private Paint f10854const;

    /* renamed from: continue, reason: not valid java name */
    private int f10855continue;
    private int d;

    /* renamed from: default, reason: not valid java name */
    private float f10856default;

    /* renamed from: do, reason: not valid java name */
    private Context f10857do;
    private float e;

    /* renamed from: else, reason: not valid java name */
    private int f10858else;

    /* renamed from: extends, reason: not valid java name */
    private float f10859extends;
    private Paint f;

    /* renamed from: final, reason: not valid java name */
    private Path f10860final;

    /* renamed from: finally, reason: not valid java name */
    private int f10861finally;

    /* renamed from: for, reason: not valid java name */
    private ArrayList<String> f10862for;
    private SparseArray<Boolean> g;

    /* renamed from: goto, reason: not valid java name */
    private Rect f10863goto;
    private OnTabSelectListener h;

    /* renamed from: if, reason: not valid java name */
    private ViewPager f10864if;

    /* renamed from: implements, reason: not valid java name */
    private int f10865implements;

    /* renamed from: import, reason: not valid java name */
    private float f10866import;

    /* renamed from: instanceof, reason: not valid java name */
    private int f10867instanceof;

    /* renamed from: interface, reason: not valid java name */
    private float f10868interface;

    /* renamed from: native, reason: not valid java name */
    private int f10869native;

    /* renamed from: new, reason: not valid java name */
    private LinearLayout f10870new;

    /* renamed from: package, reason: not valid java name */
    private boolean f10871package;

    /* renamed from: private, reason: not valid java name */
    private int f10872private;

    /* renamed from: protected, reason: not valid java name */
    private float f10873protected;

    /* renamed from: public, reason: not valid java name */
    private float f10874public;

    /* renamed from: return, reason: not valid java name */
    private float f10875return;

    /* renamed from: static, reason: not valid java name */
    private float f10876static;

    /* renamed from: strictfp, reason: not valid java name */
    private int f10877strictfp;

    /* renamed from: super, reason: not valid java name */
    private int f10878super;

    /* renamed from: switch, reason: not valid java name */
    private float f10879switch;

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f10880synchronized;

    /* renamed from: this, reason: not valid java name */
    private Rect f10881this;

    /* renamed from: throw, reason: not valid java name */
    private float f10882throw;

    /* renamed from: throws, reason: not valid java name */
    private float f10883throws;

    /* renamed from: transient, reason: not valid java name */
    private int f10884transient;

    /* renamed from: try, reason: not valid java name */
    private int f10885try;

    /* renamed from: volatile, reason: not valid java name */
    private float f10886volatile;

    /* renamed from: while, reason: not valid java name */
    private boolean f10887while;

    /* renamed from: com.flyco.tablayout.SlidingTabLayout$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Resources.NotFoundException {
            int iIndexOfChild = SlidingTabLayout.this.f10870new.indexOfChild(view);
            if (iIndexOfChild != -1) {
                if (SlidingTabLayout.this.f10864if.getCurrentItem() == iIndexOfChild) {
                    if (SlidingTabLayout.this.h != null) {
                        SlidingTabLayout.this.h.onTabReselect(iIndexOfChild);
                    }
                } else {
                    if (SlidingTabLayout.this.c) {
                        SlidingTabLayout.this.f10864if.setCurrentItem(iIndexOfChild, false);
                    } else {
                        SlidingTabLayout.this.f10864if.setCurrentItem(iIndexOfChild);
                    }
                    if (SlidingTabLayout.this.h != null) {
                        SlidingTabLayout.this.h.onTabSelect(iIndexOfChild);
                    }
                }
            }
        }
    }

    /* renamed from: com.flyco.tablayout.SlidingTabLayout$if, reason: invalid class name */
    public class Cif extends FragmentPagerAdapter {

        /* renamed from: do, reason: not valid java name */
        private ArrayList<Fragment> f10889do;

        /* renamed from: if, reason: not valid java name */
        private String[] f10891if;

        public Cif(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, String[] strArr) {
            super(fragmentManager);
            this.f10889do = new ArrayList<>();
            this.f10889do = arrayList;
            this.f10891if = strArr;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f10889do.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return this.f10889do.get(i);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return this.f10891if[i];
        }
    }

    public SlidingTabLayout(Context context) {
        this(context, null, 0);
    }

    /* renamed from: case, reason: not valid java name */
    private void m12295case(int i2, String str, View view) {
        TextView textView = (TextView) view.findViewById(R.id.tv_tab_title);
        if (textView != null && str != null) {
            textView.setText(str);
        }
        view.setOnClickListener(new Cdo());
        LinearLayout.LayoutParams layoutParams = this.f10887while ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f10866import > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f10866import, -1);
        }
        this.f10870new.addView(view, i2, layoutParams);
    }

    /* renamed from: default, reason: not valid java name */
    private void m12296default(int i2) {
        int i3 = 0;
        while (i3 < this.f10858else) {
            View childAt = this.f10870new.getChildAt(i3);
            boolean z = i3 == i2;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z ? this.f10884transient : this.f10865implements);
                if (this.f10867instanceof == 1) {
                    textView.getPaint().setFakeBoldText(z);
                }
            }
            i3++;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m12298else() {
        View childAt = this.f10870new.getChildAt(this.f10885try);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.f10878super == 0 && this.f10871package) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.f.setTextSize(this.f10873protected);
            this.e = ((right - left) - this.f.measureText(textView.getText().toString())) / 2.0f;
        }
        int i2 = this.f10885try;
        if (i2 < this.f10858else - 1) {
            View childAt2 = this.f10870new.getChildAt(i2 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f = this.f10851case;
            left += (left2 - left) * f;
            right += f * (right2 - right);
            if (this.f10878super == 0 && this.f10871package) {
                TextView textView2 = (TextView) childAt2.findViewById(R.id.tv_tab_title);
                this.f.setTextSize(this.f10873protected);
                float fMeasureText = ((right2 - left2) - this.f.measureText(textView2.getText().toString())) / 2.0f;
                float f2 = this.e;
                this.e = f2 + (this.f10851case * (fMeasureText - f2));
            }
        }
        Rect rect = this.f10863goto;
        int i3 = (int) left;
        rect.left = i3;
        int i4 = (int) right;
        rect.right = i4;
        if (this.f10878super == 0 && this.f10871package) {
            float f3 = this.e;
            rect.left = (int) ((left + f3) - 1.0f);
            rect.right = (int) ((right - f3) - 1.0f);
        }
        Rect rect2 = this.f10881this;
        rect2.left = i3;
        rect2.right = i4;
        if (this.f10875return < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.f10875return) / 2.0f);
        if (this.f10885try < this.f10858else - 1) {
            left3 += this.f10851case * ((childAt.getWidth() / 2) + (this.f10870new.getChildAt(r2 + 1).getWidth() / 2));
        }
        Rect rect3 = this.f10863goto;
        int i5 = (int) left3;
        rect3.left = i5;
        rect3.right = (int) (i5 + this.f10875return);
    }

    /* renamed from: extends, reason: not valid java name */
    private void m12299extends() {
        for (int i2 = 0; i2 < this.f10858else; i2++) {
            TextView textView = (TextView) this.f10870new.getChildAt(i2).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                if (i2 != this.f10885try) {
                    textView.setTextColor(this.f10865implements);
                } else if (this.d != 0) {
                    textView.setTextColor(getResources().getColor(this.d));
                } else {
                    textView.setTextColor(this.f10884transient);
                }
                textView.setTextSize(0, this.f10873protected);
                float f = this.f10882throw;
                textView.setPadding((int) f, 0, (int) f, 0);
                if (this.f10880synchronized) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i3 = this.f10867instanceof;
                if (i3 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i3 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m12303super(Context context, AttributeSet attributeSet) {
        float f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTabLayout);
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_style, 0);
        this.f10878super = i2;
        this.f10869native = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_indicator_color, Color.parseColor(i2 == 2 ? "#4B6A87" : "#ffffff"));
        int i3 = R.styleable.SlidingTabLayout_tl_indicator_height;
        int i4 = this.f10878super;
        if (i4 == 1) {
            f = 4.0f;
        } else {
            f = i4 == 2 ? -1 : 2;
        }
        this.f10874public = typedArrayObtainStyledAttributes.getDimension(i3, m12310goto(f));
        this.f10875return = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_width, m12310goto(this.f10878super == 1 ? 10.0f : -1.0f));
        this.f10876static = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_corner_radius, m12310goto(this.f10878super == 2 ? -1.0f : 0.0f));
        this.f10879switch = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_left, m12310goto(0.0f));
        this.f10883throws = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_top, m12310goto(this.f10878super == 2 ? 7.0f : 0.0f));
        this.f10856default = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_right, m12310goto(0.0f));
        this.f10859extends = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_bottom, m12310goto(this.f10878super != 2 ? 0.0f : 7.0f));
        this.f10861finally = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_gravity, 80);
        this.f10871package = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_indicator_width_equal_title, false);
        this.f10872private = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.f10849abstract = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_underline_height, m12310goto(0.0f));
        this.f10855continue = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_underline_gravity, 80);
        this.f10877strictfp = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.f10886volatile = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_width, m12310goto(0.0f));
        this.f10868interface = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_padding, m12310goto(12.0f));
        this.f10873protected = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_textsize, m12318throws(14.0f));
        this.f10884transient = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.f10865implements = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.f10867instanceof = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_textBold, 0);
        this.f10880synchronized = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_textAllCaps, false);
        this.f10887while = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_tab_space_equal, false);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_width, m12310goto(-1.0f));
        this.f10866import = dimension;
        this.f10882throw = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_padding, (this.f10887while || dimension > 0.0f) ? m12310goto(0.0f) : m12310goto(15.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    /* renamed from: throw, reason: not valid java name */
    private void m12304throw() {
        if (this.f10858else <= 0) {
            return;
        }
        int width = (int) (this.f10851case * this.f10870new.getChildAt(this.f10885try).getWidth());
        int left = this.f10870new.getChildAt(this.f10885try).getLeft() + width;
        if (this.f10885try > 0 || width > 0) {
            int width2 = left - ((getWidth() / 2) - getPaddingLeft());
            m12298else();
            Rect rect = this.f10881this;
            left = width2 + ((rect.right - rect.left) / 2);
        }
        if (left != this.a) {
            this.a = left;
            scrollTo(left, 0);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public TextView m12305break(int i2) {
        return (TextView) this.f10870new.getChildAt(i2).findViewById(R.id.tv_tab_title);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m12306catch(int i2) {
        int i3 = this.f10858else;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        MsgView msgView = (MsgView) this.f10870new.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m12307class() {
        return this.f10887while;
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m12308const() {
        return this.f10880synchronized;
    }

    /* renamed from: final, reason: not valid java name */
    public void m12309final() {
        this.f10870new.removeAllViews();
        ArrayList<String> arrayList = this.f10862for;
        this.f10858else = arrayList == null ? this.f10864if.getAdapter().getCount() : arrayList.size();
        for (int i2 = 0; i2 < this.f10858else; i2++) {
            View viewInflate = View.inflate(this.f10857do, R.layout.layout_tab, null);
            ArrayList<String> arrayList2 = this.f10862for;
            m12295case(i2, (arrayList2 == null ? this.f10864if.getAdapter().getPageTitle(i2) : arrayList2.get(i2)).toString(), viewInflate);
        }
        m12299extends();
    }

    public int getCurrentTab() {
        return this.f10885try;
    }

    public int getDividerColor() {
        return this.f10877strictfp;
    }

    public float getDividerPadding() {
        return this.f10868interface;
    }

    public float getDividerWidth() {
        return this.f10886volatile;
    }

    public int getIndicatorColor() {
        return this.f10869native;
    }

    public float getIndicatorCornerRadius() {
        return this.f10876static;
    }

    public float getIndicatorHeight() {
        return this.f10874public;
    }

    public float getIndicatorMarginBottom() {
        return this.f10859extends;
    }

    public float getIndicatorMarginLeft() {
        return this.f10879switch;
    }

    public float getIndicatorMarginRight() {
        return this.f10856default;
    }

    public float getIndicatorMarginTop() {
        return this.f10883throws;
    }

    public int getIndicatorStyle() {
        return this.f10878super;
    }

    public float getIndicatorWidth() {
        return this.f10875return;
    }

    public int getTabCount() {
        return this.f10858else;
    }

    public float getTabPadding() {
        return this.f10882throw;
    }

    public float getTabWidth() {
        return this.f10866import;
    }

    public int getTextBold() {
        return this.f10867instanceof;
    }

    public int getTextSelectColor() {
        return this.f10884transient;
    }

    public int getTextUnselectColor() {
        return this.f10865implements;
    }

    public float getTextsize() {
        return this.f10873protected;
    }

    public int getUnderlineColor() {
        return this.f10872private;
    }

    public float getUnderlineHeight() {
        return this.f10849abstract;
    }

    /* renamed from: goto, reason: not valid java name */
    public int m12310goto(float f) {
        return (int) ((f * this.f10857do.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: import, reason: not valid java name */
    public void m12311import(float f, float f2, float f3, float f4) {
        this.f10879switch = m12310goto(f);
        this.f10883throws = m12310goto(f2);
        this.f10856default = m12310goto(f3);
        this.f10859extends = m12310goto(f4);
        invalidate();
    }

    /* renamed from: native, reason: not valid java name */
    public void m12312native(int i2, float f, float f2) {
        float f3;
        int i3 = this.f10858else;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        View childAt = this.f10870new.getChildAt(i2);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.f.setTextSize(this.f10873protected);
            float fMeasureText = this.f.measureText(textView.getText().toString());
            float fDescent = this.f.descent() - this.f.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f4 = this.f10866import;
            if (f4 >= 0.0f) {
                f3 = f4 / 2.0f;
                fMeasureText /= 2.0f;
            } else {
                f3 = this.f10882throw;
            }
            marginLayoutParams.leftMargin = (int) (f3 + fMeasureText + m12310goto(f));
            int i4 = this.b;
            marginLayoutParams.topMargin = i4 > 0 ? (((int) (i4 - fDescent)) / 2) - m12310goto(f2) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f10858else <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f = this.f10886volatile;
        if (f > 0.0f) {
            this.f10853class.setStrokeWidth(f);
            this.f10853class.setColor(this.f10877strictfp);
            for (int i2 = 0; i2 < this.f10858else - 1; i2++) {
                View childAt = this.f10870new.getChildAt(i2);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.f10868interface, childAt.getRight() + paddingLeft, height - this.f10868interface, this.f10853class);
            }
        }
        if (this.f10849abstract > 0.0f) {
            this.f10852catch.setColor(this.f10872private);
            if (this.f10855continue == 80) {
                float f2 = height;
                canvas.drawRect(paddingLeft, f2 - this.f10849abstract, this.f10870new.getWidth() + paddingLeft, f2, this.f10852catch);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f10870new.getWidth() + paddingLeft, this.f10849abstract, this.f10852catch);
            }
        }
        m12298else();
        int i3 = this.f10878super;
        if (i3 == 1) {
            if (this.f10874public > 0.0f) {
                this.f10854const.setColor(this.f10869native);
                this.f10860final.reset();
                float f3 = height;
                this.f10860final.moveTo(this.f10863goto.left + paddingLeft, f3);
                Path path = this.f10860final;
                Rect rect = this.f10863goto;
                path.lineTo((rect.left / 2) + paddingLeft + (rect.right / 2), f3 - this.f10874public);
                this.f10860final.lineTo(paddingLeft + this.f10863goto.right, f3);
                this.f10860final.close();
                canvas.drawPath(this.f10860final, this.f10854const);
                return;
            }
            return;
        }
        if (i3 == 2) {
            if (this.f10874public < 0.0f) {
                this.f10874public = (height - this.f10883throws) - this.f10859extends;
            }
            float f4 = this.f10874public;
            if (f4 > 0.0f) {
                float f5 = this.f10876static;
                if (f5 < 0.0f || f5 > f4 / 2.0f) {
                    this.f10876static = f4 / 2.0f;
                }
                this.f10850break.setColor(this.f10869native);
                GradientDrawable gradientDrawable = this.f10850break;
                int i4 = ((int) this.f10879switch) + paddingLeft + this.f10863goto.left;
                float f6 = this.f10883throws;
                gradientDrawable.setBounds(i4, (int) f6, (int) ((paddingLeft + r2.right) - this.f10856default), (int) (f6 + this.f10874public));
                this.f10850break.setCornerRadius(this.f10876static);
                this.f10850break.draw(canvas);
                return;
            }
            return;
        }
        if (this.f10874public > 0.0f) {
            this.f10850break.setColor(this.f10869native);
            if (this.f10861finally == 80) {
                GradientDrawable gradientDrawable2 = this.f10850break;
                int i5 = ((int) this.f10879switch) + paddingLeft;
                Rect rect2 = this.f10863goto;
                int i6 = i5 + rect2.left;
                int i7 = height - ((int) this.f10874public);
                float f7 = this.f10859extends;
                gradientDrawable2.setBounds(i6, i7 - ((int) f7), (paddingLeft + rect2.right) - ((int) this.f10856default), height - ((int) f7));
            } else {
                GradientDrawable gradientDrawable3 = this.f10850break;
                int i8 = ((int) this.f10879switch) + paddingLeft;
                Rect rect3 = this.f10863goto;
                int i9 = i8 + rect3.left;
                float f8 = this.f10883throws;
                gradientDrawable3.setBounds(i9, (int) f8, (paddingLeft + rect3.right) - ((int) this.f10856default), ((int) this.f10874public) + ((int) f8));
            }
            this.f10850break.setCornerRadius(this.f10876static);
            this.f10850break.draw(canvas);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f, int i3) {
        this.f10885try = i2;
        this.f10851case = f;
        m12304throw();
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
        OnTabSelectListener onTabSelectListener = this.h;
        if (onTabSelectListener != null) {
            onTabSelectListener.onTabSelected(i2);
        }
        m12296default(i2);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f10885try = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f10885try != 0 && this.f10870new.getChildCount() > 0) {
                m12296default(this.f10885try);
                m12304throw();
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f10885try);
        return bundle;
    }

    /* renamed from: public, reason: not valid java name */
    public void m12313public(ViewPager viewPager, String[] strArr) {
        if (viewPager == null || viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
        }
        if (strArr == null || strArr.length == 0) {
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        if (strArr.length != viewPager.getAdapter().getCount()) {
            throw new IllegalStateException("Titles length must be the same as the page count !");
        }
        this.f10864if = viewPager;
        ArrayList<String> arrayList = new ArrayList<>();
        this.f10862for = arrayList;
        Collections.addAll(arrayList, strArr);
        this.f10864if.removeOnPageChangeListener(this);
        this.f10864if.addOnPageChangeListener(this);
        m12309final();
    }

    /* renamed from: return, reason: not valid java name */
    public void m12314return(ViewPager viewPager, String[] strArr, FragmentActivity fragmentActivity, ArrayList<Fragment> arrayList) throws Resources.NotFoundException {
        if (viewPager == null) {
            throw new IllegalStateException("ViewPager can not be NULL !");
        }
        if (strArr == null || strArr.length == 0) {
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        this.f10864if = viewPager;
        viewPager.setAdapter(new Cif(fragmentActivity.getSupportFragmentManager(), arrayList, strArr));
        this.f10864if.removeOnPageChangeListener(this);
        this.f10864if.addOnPageChangeListener(this);
        m12309final();
    }

    public void setCurrentTab(int i2) throws Resources.NotFoundException {
        this.f10885try = i2;
        this.f10864if.setCurrentItem(i2);
    }

    public void setDividerColor(int i2) {
        this.f10877strictfp = i2;
        invalidate();
    }

    public void setDividerPadding(float f) {
        this.f10868interface = m12310goto(f);
        invalidate();
    }

    public void setDividerWidth(float f) {
        this.f10886volatile = m12310goto(f);
        invalidate();
    }

    public void setIndicatorColor(int i2) {
        this.f10869native = i2;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f) {
        this.f10876static = m12310goto(f);
        invalidate();
    }

    public void setIndicatorGravity(int i2) {
        this.f10861finally = i2;
        invalidate();
    }

    public void setIndicatorHeight(float f) {
        this.f10874public = m12310goto(f);
        invalidate();
    }

    public void setIndicatorStyle(int i2) {
        this.f10878super = i2;
        invalidate();
    }

    public void setIndicatorWidth(float f) {
        this.f10875return = m12310goto(f);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean z) {
        this.f10871package = z;
        invalidate();
    }

    public void setOnTabSelectListener(OnTabSelectListener onTabSelectListener) {
        this.h = onTabSelectListener;
    }

    public void setSnapOnTabClick(boolean z) {
        this.c = z;
    }

    public void setTabPadding(float f) {
        this.f10882throw = m12310goto(f);
        m12299extends();
    }

    public void setTabSpaceEqual(boolean z) {
        this.f10887while = z;
        m12299extends();
    }

    public void setTabWidth(float f) {
        this.f10866import = m12310goto(f);
        m12299extends();
    }

    public void setTextAllCaps(boolean z) {
        this.f10880synchronized = z;
        m12299extends();
    }

    public void setTextBold(int i2) {
        this.f10867instanceof = i2;
        m12299extends();
    }

    public void setTextSelectColor(int i2) {
        this.f10884transient = i2;
        m12299extends();
    }

    public void setTextUnselectColor(int i2) {
        this.f10865implements = i2;
        m12299extends();
    }

    public void setTextsize(float f) {
        this.f10873protected = m12318throws(f);
        m12299extends();
    }

    public void setTitleColor(int i2) {
        this.d = i2;
        m12299extends();
    }

    public void setUnderlineColor(int i2) {
        this.f10872private = i2;
        invalidate();
    }

    public void setUnderlineGravity(int i2) {
        this.f10855continue = i2;
        invalidate();
    }

    public void setUnderlineHeight(float f) {
        this.f10849abstract = m12310goto(f);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        if (viewPager == null || viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
        }
        this.f10864if = viewPager;
        viewPager.removeOnPageChangeListener(this);
        this.f10864if.addOnPageChangeListener(this);
        m12309final();
    }

    /* renamed from: static, reason: not valid java name */
    public void m12315static(int i2) {
        int i3 = this.f10858else;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        m12316switch(i2, 0);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m12316switch(int i2, int i3) {
        int i4 = this.f10858else;
        if (i2 >= i4) {
            i2 = i4 - 1;
        }
        MsgView msgView = (MsgView) this.f10870new.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            hc2.m2985if(msgView, i3);
            if (this.g.get(i2) == null || !this.g.get(i2).booleanValue()) {
                m12312native(i2, 4.0f, 2.0f);
                this.g.put(i2, Boolean.TRUE);
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public MsgView m12317this(int i2) {
        int i3 = this.f10858else;
        if (i2 >= i3) {
            i2 = i3 - 1;
        }
        return (MsgView) this.f10870new.getChildAt(i2).findViewById(R.id.rtv_msg_tip);
    }

    /* renamed from: throws, reason: not valid java name */
    public int m12318throws(float f) {
        return (int) ((f * this.f10857do.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: try, reason: not valid java name */
    public void m12319try(String str) {
        View viewInflate = View.inflate(this.f10857do, R.layout.layout_tab, null);
        ArrayList<String> arrayList = this.f10862for;
        if (arrayList != null) {
            arrayList.add(str);
        }
        ArrayList<String> arrayList2 = this.f10862for;
        m12295case(this.f10858else, (arrayList2 == null ? this.f10864if.getAdapter().getPageTitle(this.f10858else) : arrayList2.get(this.f10858else)).toString(), viewInflate);
        ArrayList<String> arrayList3 = this.f10862for;
        this.f10858else = arrayList3 == null ? this.f10864if.getAdapter().getCount() : arrayList3.size();
        m12299extends();
    }

    /* renamed from: while, reason: not valid java name */
    public void m12320while(int i2, boolean z) throws Resources.NotFoundException {
        this.f10885try = i2;
        this.f10864if.setCurrentItem(i2, z);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f10863goto = new Rect();
        this.f10881this = new Rect();
        this.f10850break = new GradientDrawable();
        this.f10852catch = new Paint(1);
        this.f10853class = new Paint(1);
        this.f10854const = new Paint(1);
        this.f10860final = new Path();
        this.f10878super = 0;
        this.f = new Paint(1);
        this.g = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f10857do = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f10870new = linearLayout;
        addView(linearLayout);
        m12303super(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals("-1") || attributeValue.equals("-2")) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.layout_height});
        this.b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
