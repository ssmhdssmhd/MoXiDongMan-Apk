package com.qmuiteam.qmui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.ih1;
import android.support.v4.jh1;
import android.support.v4.kh1;
import android.support.v4.sh1;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.util.Cfor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUITopBar extends RelativeLayout {

    /* renamed from: private, reason: not valid java name */
    private static final int f19600private = -1;

    /* renamed from: break, reason: not valid java name */
    private int f19601break;

    /* renamed from: case, reason: not valid java name */
    private TextView f19602case;

    /* renamed from: catch, reason: not valid java name */
    private int f19603catch;

    /* renamed from: class, reason: not valid java name */
    private Drawable f19604class;

    /* renamed from: const, reason: not valid java name */
    private int f19605const;

    /* renamed from: default, reason: not valid java name */
    private ColorStateList f19606default;

    /* renamed from: do, reason: not valid java name */
    private int f19607do;

    /* renamed from: else, reason: not valid java name */
    private List<View> f19608else;

    /* renamed from: extends, reason: not valid java name */
    private int f19609extends;

    /* renamed from: final, reason: not valid java name */
    private int f19610final;

    /* renamed from: finally, reason: not valid java name */
    private int f19611finally;

    /* renamed from: for, reason: not valid java name */
    private View f19612for;

    /* renamed from: goto, reason: not valid java name */
    private List<View> f19613goto;

    /* renamed from: if, reason: not valid java name */
    private int f19614if;

    /* renamed from: import, reason: not valid java name */
    private int f19615import;

    /* renamed from: native, reason: not valid java name */
    private int f19616native;

    /* renamed from: new, reason: not valid java name */
    private LinearLayout f19617new;

    /* renamed from: package, reason: not valid java name */
    private Rect f19618package;

    /* renamed from: public, reason: not valid java name */
    private int f19619public;

    /* renamed from: return, reason: not valid java name */
    private int f19620return;

    /* renamed from: static, reason: not valid java name */
    private int f19621static;

    /* renamed from: super, reason: not valid java name */
    private int f19622super;

    /* renamed from: switch, reason: not valid java name */
    private int f19623switch;

    /* renamed from: this, reason: not valid java name */
    private int f19624this;

    /* renamed from: throw, reason: not valid java name */
    private int f19625throw;

    /* renamed from: throws, reason: not valid java name */
    private int f19626throws;

    /* renamed from: try, reason: not valid java name */
    private TextView f19627try;

    /* renamed from: while, reason: not valid java name */
    private int f19628while;

    public QMUITopBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19611finally = -1;
        m23877static();
        m23876return(context, attributeSet, i);
    }

    /* renamed from: const, reason: not valid java name */
    private RelativeLayout.LayoutParams m23872const() {
        return new RelativeLayout.LayoutParams(-1, sh1.m7405new(getContext(), R.attr.qmui_topbar_height));
    }

    /* renamed from: continue, reason: not valid java name */
    private void m23873continue() {
        if (this.f19627try != null) {
            TextView textView = this.f19602case;
            if (textView == null || kh1.m4402case(textView.getText())) {
                this.f19627try.setTextSize(0, this.f19622super);
            } else {
                this.f19627try.setTextSize(0, this.f19625throw);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private LinearLayout.LayoutParams m23874final() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = this.f19605const;
        return layoutParams;
    }

    private TextView getSubTitleView() {
        if (this.f19602case == null) {
            TextView textView = new TextView(getContext());
            this.f19602case = textView;
            textView.setGravity(17);
            this.f19602case.setSingleLine(true);
            this.f19602case.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            this.f19602case.setTextSize(0, this.f19628while);
            this.f19602case.setTextColor(this.f19616native);
            LinearLayout.LayoutParams layoutParamsM23874final = m23874final();
            layoutParamsM23874final.topMargin = ih1.m3450new(getContext(), 1);
            m23879switch().addView(this.f19602case, layoutParamsM23874final);
        }
        return this.f19602case;
    }

    private int getTopBarHeight() {
        if (this.f19611finally == -1) {
            this.f19611finally = sh1.m7405new(getContext(), R.attr.qmui_topbar_height);
        }
        return this.f19611finally;
    }

    /* renamed from: public, reason: not valid java name */
    private TextView m23875public(boolean z) {
        if (this.f19627try == null) {
            TextView textView = new TextView(getContext());
            this.f19627try = textView;
            textView.setGravity(17);
            this.f19627try.setSingleLine(true);
            this.f19627try.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            this.f19627try.setTextColor(this.f19615import);
            m23873continue();
            m23879switch().addView(this.f19627try, m23874final());
        }
        return this.f19627try;
    }

    /* renamed from: return, reason: not valid java name */
    private void m23876return(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.QMUITopBar, i, 0);
        this.f19624this = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUITopBar_qmui_topbar_separator_color, ContextCompat.getColor(context, R.color.qmui_config_color_separator));
        this.f19603catch = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_separator_height, 1);
        this.f19601break = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUITopBar_qmui_topbar_bg_color, -1);
        m23895native(context, typedArrayObtainStyledAttributes);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.QMUITopBar_qmui_topbar_need_separator, true);
        typedArrayObtainStyledAttributes.recycle();
        setBackgroundDividerEnabled(z);
    }

    /* renamed from: static, reason: not valid java name */
    private void m23877static() {
        this.f19607do = -1;
        this.f19614if = -1;
        this.f19608else = new ArrayList();
        this.f19613goto = new ArrayList();
    }

    /* renamed from: super, reason: not valid java name */
    private QMUIAlphaImageButton m23878super(int i) {
        QMUIAlphaImageButton qMUIAlphaImageButton = new QMUIAlphaImageButton(getContext());
        qMUIAlphaImageButton.setBackgroundColor(0);
        qMUIAlphaImageButton.setImageResource(i);
        return qMUIAlphaImageButton;
    }

    /* renamed from: switch, reason: not valid java name */
    private LinearLayout m23879switch() {
        if (this.f19617new == null) {
            LinearLayout linearLayout = new LinearLayout(getContext());
            this.f19617new = linearLayout;
            linearLayout.setOrientation(1);
            this.f19617new.setGravity(17);
            LinearLayout linearLayout2 = this.f19617new;
            int i = this.f19620return;
            linearLayout2.setPadding(i, 0, i, 0);
            addView(this.f19617new, m23872const());
        }
        return this.f19617new;
    }

    /* renamed from: while, reason: not valid java name */
    private Button m23880while(String str) {
        Button button = new Button(getContext());
        button.setBackgroundResource(0);
        button.setMinWidth(0);
        button.setMinHeight(0);
        button.setMinimumWidth(0);
        button.setMinimumHeight(0);
        int i = this.f19626throws;
        button.setPadding(i, 0, i, 0);
        button.setTextColor(this.f19606default);
        button.setTextSize(0, this.f19609extends);
        button.setGravity(17);
        button.setText(str);
        return button;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m23881abstract(boolean z) {
        TextView textView = this.f19627try;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m23882break(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        m23884catch(view, i, (layoutParams == null || !(layoutParams instanceof RelativeLayout.LayoutParams)) ? new RelativeLayout.LayoutParams(-2, -2) : (RelativeLayout.LayoutParams) layoutParams);
    }

    /* renamed from: case, reason: not valid java name */
    public void m23883case(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        int i2 = this.f19607do;
        if (i2 == -1) {
            layoutParams.addRule(9);
        } else {
            layoutParams.addRule(1, i2);
        }
        layoutParams.alignWithParent = true;
        this.f19607do = i;
        view.setId(i);
        this.f19608else.add(view);
        addView(view, layoutParams);
    }

    /* renamed from: catch, reason: not valid java name */
    public void m23884catch(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        int i2 = this.f19614if;
        if (i2 == -1) {
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(0, i2);
        }
        layoutParams.alignWithParent = true;
        this.f19614if = i;
        view.setId(i);
        this.f19613goto.add(view);
        addView(view, layoutParams);
    }

    /* renamed from: class, reason: not valid java name */
    public int m23885class(int i, int i2, int i3) {
        int iMax = (int) (Math.max(0.0d, Math.min((i - i2) / (i3 - i2), 1.0d)) * 255.0d);
        setBackgroundAlpha(iMax);
        return iMax;
    }

    /* renamed from: default, reason: not valid java name */
    public void m23886default() {
        Iterator<View> it = this.f19613goto.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        this.f19614if = -1;
        this.f19613goto.clear();
    }

    /* renamed from: do, reason: not valid java name */
    public QMUIAlphaImageButton m23887do() {
        return m23893if(this.f19610final, R.id.qmui_topbar_item_left_back);
    }

    /* renamed from: else, reason: not valid java name */
    public QMUIAlphaImageButton m23888else(int i, int i2) {
        QMUIAlphaImageButton qMUIAlphaImageButtonM23878super = m23878super(i);
        m23884catch(qMUIAlphaImageButtonM23878super, i2, m23900throw());
        return qMUIAlphaImageButtonM23878super;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m23889extends() {
        View view = this.f19612for;
        if (view != null) {
            if (view.getParent() == this) {
                removeView(this.f19612for);
            }
            this.f19612for = null;
        }
        TextView textView = this.f19627try;
        if (textView != null) {
            if (textView.getParent() == this) {
                removeView(this.f19627try);
            }
            this.f19627try = null;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public TextView m23890finally(String str) {
        TextView textViewM23875public = m23875public(true);
        textViewM23875public.setText(str);
        if (kh1.m4402case(str)) {
            textViewM23875public.setVisibility(8);
        } else {
            textViewM23875public.setVisibility(0);
        }
        return textViewM23875public;
    }

    /* renamed from: for, reason: not valid java name */
    public Button m23891for(int i, int i2) {
        return m23896new(getResources().getString(i), i2);
    }

    public CharSequence getTitle() {
        TextView textView = this.f19627try;
        if (textView == null) {
            return null;
        }
        return textView.getText();
    }

    public Rect getTitleContainerRect() {
        if (this.f19618package == null) {
            this.f19618package = new Rect();
        }
        LinearLayout linearLayout = this.f19617new;
        if (linearLayout == null) {
            this.f19618package.set(0, 0, 0, 0);
        } else {
            Cfor.m23630catch(this, linearLayout, this.f19618package);
        }
        return this.f19618package;
    }

    /* renamed from: goto, reason: not valid java name */
    public Button m23892goto(int i, int i2) {
        return m23899this(getResources().getString(i), i2);
    }

    /* renamed from: if, reason: not valid java name */
    public QMUIAlphaImageButton m23893if(int i, int i2) {
        QMUIAlphaImageButton qMUIAlphaImageButtonM23878super = m23878super(i);
        m23883case(qMUIAlphaImageButtonM23878super, i2, m23900throw());
        return qMUIAlphaImageButtonM23878super;
    }

    /* renamed from: import, reason: not valid java name */
    public RelativeLayout.LayoutParams m23894import() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.f19623switch);
        layoutParams.topMargin = Math.max(0, (getTopBarHeight() - this.f19623switch) / 2);
        return layoutParams;
    }

    /* renamed from: native, reason: not valid java name */
    public void m23895native(Context context, TypedArray typedArray) {
        this.f19610final = typedArray.getResourceId(R.styleable.QMUITopBar_qmui_topbar_left_back_drawable_id, R.drawable.qmui_icon_topbar_back);
        this.f19605const = typedArray.getInt(R.styleable.QMUITopBar_qmui_topbar_title_gravity, 17);
        int i = R.styleable.QMUITopBar_qmui_topbar_title_text_size;
        this.f19622super = typedArray.getDimensionPixelSize(i, ih1.m3460synchronized(context, 17));
        this.f19625throw = typedArray.getDimensionPixelSize(i, ih1.m3460synchronized(context, 16));
        this.f19628while = typedArray.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_subtitle_text_size, ih1.m3460synchronized(context, 11));
        this.f19615import = typedArray.getColor(R.styleable.QMUITopBar_qmui_topbar_title_color, sh1.m7404if(context, R.attr.qmui_config_color_gray_1));
        this.f19616native = typedArray.getColor(R.styleable.QMUITopBar_qmui_topbar_subtitle_color, sh1.m7404if(context, R.attr.qmui_config_color_gray_4));
        this.f19619public = typedArray.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_title_margin_horizontal_when_no_btn_aside, 0);
        this.f19620return = typedArray.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_title_container_padding_horizontal, 0);
        this.f19621static = typedArray.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_image_btn_width, ih1.m3450new(context, 48));
        this.f19623switch = typedArray.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_image_btn_height, ih1.m3450new(context, 48));
        this.f19626throws = typedArray.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_text_btn_padding_horizontal, ih1.m3450new(context, 12));
        this.f19606default = typedArray.getColorStateList(R.styleable.QMUITopBar_qmui_topbar_text_btn_color_state_list);
        this.f19609extends = typedArray.getDimensionPixelSize(R.styleable.QMUITopBar_qmui_topbar_text_btn_text_size, ih1.m3460synchronized(context, 16));
    }

    /* renamed from: new, reason: not valid java name */
    public Button m23896new(String str, int i) {
        Button buttonM23880while = m23880while(str);
        m23883case(buttonM23880while, i, m23894import());
        return buttonM23880while;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        for (ViewParent parent = getParent(); parent != null && (parent instanceof View); parent = parent.getParent()) {
            if (parent instanceof QMUICollapsingTopBarLayout) {
                m23879switch();
                return;
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iM7405new;
        super.onLayout(z, i, i2, i3, i4);
        LinearLayout linearLayout = this.f19617new;
        if (linearLayout != null) {
            int measuredWidth = linearLayout.getMeasuredWidth();
            int measuredHeight = this.f19617new.getMeasuredHeight();
            int measuredHeight2 = ((i4 - i2) - this.f19617new.getMeasuredHeight()) / 2;
            int paddingLeft = getPaddingLeft();
            if ((this.f19605const & 7) == 1) {
                iM7405new = ((i3 - i) - this.f19617new.getMeasuredWidth()) / 2;
            } else {
                for (int i5 = 0; i5 < this.f19608else.size(); i5++) {
                    View view = this.f19608else.get(i5);
                    if (view.getVisibility() != 8) {
                        paddingLeft += view.getMeasuredWidth();
                    }
                }
                iM7405new = this.f19608else.isEmpty() ? paddingLeft + sh1.m7405new(getContext(), R.attr.qmui_topbar_title_margin_horizontal_when_no_btn_aside) : paddingLeft;
            }
            this.f19617new.layout(iM7405new, measuredHeight2, measuredWidth + iM7405new, measuredHeight + measuredHeight2);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size;
        int paddingRight;
        super.onMeasure(i, i2);
        if (this.f19617new != null) {
            int measuredWidth = 0;
            for (int i3 = 0; i3 < this.f19608else.size(); i3++) {
                View view = this.f19608else.get(i3);
                if (view.getVisibility() != 8) {
                    measuredWidth += view.getMeasuredWidth();
                }
            }
            int measuredWidth2 = 0;
            for (int i4 = 0; i4 < this.f19613goto.size(); i4++) {
                View view2 = this.f19613goto.get(i4);
                if (view2.getVisibility() != 8) {
                    measuredWidth2 += view2.getMeasuredWidth();
                }
            }
            if ((this.f19605const & 7) == 1) {
                if (measuredWidth == 0 && measuredWidth2 == 0) {
                    int i5 = this.f19619public;
                    measuredWidth += i5;
                    measuredWidth2 += i5;
                }
                size = (View.MeasureSpec.getSize(i) - (Math.max(measuredWidth, measuredWidth2) * 2)) - getPaddingLeft();
                paddingRight = getPaddingRight();
            } else {
                if (measuredWidth == 0) {
                    measuredWidth += this.f19619public;
                }
                if (measuredWidth2 == 0) {
                    measuredWidth2 += this.f19619public;
                }
                size = ((View.MeasureSpec.getSize(i) - measuredWidth) - measuredWidth2) - getPaddingLeft();
                paddingRight = getPaddingRight();
            }
            this.f19617new.measure(View.MeasureSpec.makeMeasureSpec(size - paddingRight, 1073741824), i2);
        }
    }

    /* renamed from: package, reason: not valid java name */
    public TextView m23897package(int i) {
        return m23898private(getContext().getString(i));
    }

    /* renamed from: private, reason: not valid java name */
    public TextView m23898private(String str) {
        TextView textViewM23875public = m23875public(false);
        textViewM23875public.setText(str);
        if (kh1.m4402case(str)) {
            textViewM23875public.setVisibility(8);
        } else {
            textViewM23875public.setVisibility(0);
        }
        return textViewM23875public;
    }

    public void setBackgroundAlpha(int i) {
        getBackground().setAlpha(i);
    }

    public void setBackgroundDividerEnabled(boolean z) {
        if (!z) {
            Cfor.m23653switch(this, this.f19601break);
            return;
        }
        if (this.f19604class == null) {
            this.f19604class = jh1.m3894else(this.f19624this, this.f19601break, this.f19603catch, false);
        }
        Cfor.m23634default(this, this.f19604class);
    }

    public void setCenterView(View view) {
        View view2 = this.f19612for;
        if (view2 == view) {
            return;
        }
        if (view2 != null) {
            removeView(view2);
        }
        this.f19612for = view;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams.addRule(13);
        addView(view, layoutParams);
    }

    public void setSubTitle(String str) {
        TextView subTitleView = getSubTitleView();
        subTitleView.setText(str);
        if (kh1.m4402case(str)) {
            subTitleView.setVisibility(8);
        } else {
            subTitleView.setVisibility(0);
        }
        m23873continue();
    }

    public void setTitleGravity(int i) {
        this.f19605const = i;
        TextView textView = this.f19627try;
        if (textView != null) {
            ((LinearLayout.LayoutParams) textView.getLayoutParams()).gravity = i;
            if (i == 17 || i == 1) {
                this.f19627try.setPadding(getPaddingLeft(), getPaddingTop(), getPaddingLeft(), getPaddingBottom());
            }
        }
        TextView textView2 = this.f19602case;
        if (textView2 != null) {
            ((LinearLayout.LayoutParams) textView2.getLayoutParams()).gravity = i;
        }
        requestLayout();
    }

    /* renamed from: this, reason: not valid java name */
    public Button m23899this(String str, int i) {
        Button buttonM23880while = m23880while(str);
        m23884catch(buttonM23880while, i, m23894import());
        return buttonM23880while;
    }

    /* renamed from: throw, reason: not valid java name */
    public RelativeLayout.LayoutParams m23900throw() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f19621static, this.f19623switch);
        layoutParams.topMargin = Math.max(0, (getTopBarHeight() - this.f19623switch) / 2);
        return layoutParams;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m23901throws() {
        Iterator<View> it = this.f19608else.iterator();
        while (it.hasNext()) {
            removeView(it.next());
        }
        this.f19607do = -1;
        this.f19608else.clear();
    }

    /* renamed from: try, reason: not valid java name */
    public void m23902try(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        m23883case(view, i, (layoutParams == null || !(layoutParams instanceof RelativeLayout.LayoutParams)) ? new RelativeLayout.LayoutParams(-2, -2) : (RelativeLayout.LayoutParams) layoutParams);
    }

    public QMUITopBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUITopBarStyle);
    }

    public QMUITopBar(Context context) {
        this(context, (AttributeSet) null);
    }

    public QMUITopBar(Context context, boolean z) {
        super(context);
        this.f19611finally = -1;
        m23877static();
        if (z) {
            int color = ContextCompat.getColor(context, R.color.qmui_config_color_transparent);
            this.f19624this = color;
            this.f19603catch = 0;
            this.f19601break = color;
            return;
        }
        m23876return(context, null, R.attr.QMUITopBarStyle);
    }

    public void setSubTitle(int i) {
        setSubTitle(getResources().getString(i));
    }
}
