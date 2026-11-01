package com.qmuiteam.qmui.widget.grouplist;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.ih1;
import android.support.v4.kh1;
import android.support.v4.sh1;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.legacy.widget.Space;
import com.qmuiteam.qmui.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class QMUICommonListItemView extends RelativeLayout {

    /* renamed from: final, reason: not valid java name */
    public static final int f19824final = 0;

    /* renamed from: import, reason: not valid java name */
    public static final int f19825import = 0;

    /* renamed from: native, reason: not valid java name */
    public static final int f19826native = 1;

    /* renamed from: public, reason: not valid java name */
    public static final int f19827public = 0;

    /* renamed from: return, reason: not valid java name */
    public static final int f19828return = 1;

    /* renamed from: super, reason: not valid java name */
    public static final int f19829super = 1;

    /* renamed from: throw, reason: not valid java name */
    public static final int f19830throw = 2;

    /* renamed from: while, reason: not valid java name */
    public static final int f19831while = 3;

    /* renamed from: break, reason: not valid java name */
    public CheckBox f19832break;

    /* renamed from: case, reason: not valid java name */
    public LinearLayout f19833case;

    /* renamed from: catch, reason: not valid java name */
    private ImageView f19834catch;

    /* renamed from: class, reason: not valid java name */
    private ViewStub f19835class;

    /* renamed from: const, reason: not valid java name */
    private View f19836const;

    /* renamed from: do, reason: not valid java name */
    private int f19837do;

    /* renamed from: else, reason: not valid java name */
    public TextView f19838else;

    /* renamed from: for, reason: not valid java name */
    private int f19839for;

    /* renamed from: goto, reason: not valid java name */
    public TextView f19840goto;

    /* renamed from: if, reason: not valid java name */
    private int f19841if;

    /* renamed from: new, reason: not valid java name */
    public ImageView f19842new;

    /* renamed from: this, reason: not valid java name */
    public Space f19843this;

    /* renamed from: try, reason: not valid java name */
    private ViewGroup f19844try;

    public interface LayoutParamConfig {
        RelativeLayout.LayoutParams onConfig(RelativeLayout.LayoutParams layoutParams);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.grouplist.QMUICommonListItemView$do, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cdo {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.grouplist.QMUICommonListItemView$for, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cfor {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.grouplist.QMUICommonListItemView$if, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cif {
    }

    public QMUICommonListItemView(Context context) {
        this(context, null);
    }

    private ImageView getAccessoryImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(getAccessoryLayoutParams());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        return imageView;
    }

    private ViewGroup.LayoutParams getAccessoryLayoutParams() {
        return new ViewGroup.LayoutParams(-2, -2);
    }

    /* renamed from: case, reason: not valid java name */
    public void m24070case(LayoutParamConfig layoutParamConfig) {
        if (layoutParamConfig != null) {
            this.f19842new.setLayoutParams(layoutParamConfig.onConfig((RelativeLayout.LayoutParams) this.f19842new.getLayoutParams()));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m24071do(View view) {
        if (this.f19837do == 3) {
            this.f19844try.addView(view);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m24072for(boolean z) {
        if (z) {
            if (this.f19836const == null) {
                this.f19836const = this.f19835class.inflate();
            }
            this.f19836const.setVisibility(0);
            this.f19834catch.setVisibility(8);
            return;
        }
        View view = this.f19836const;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        this.f19836const.setVisibility(8);
    }

    public ViewGroup getAccessoryContainerView() {
        return this.f19844try;
    }

    public int getAccessoryType() {
        return this.f19837do;
    }

    public CharSequence getDetailText() {
        return this.f19840goto.getText();
    }

    public TextView getDetailTextView() {
        return this.f19840goto;
    }

    public int getOrientation() {
        return this.f19841if;
    }

    public CheckBox getSwitch() {
        return this.f19832break;
    }

    public CharSequence getText() {
        return this.f19838else.getText();
    }

    public TextView getTextView() {
        return this.f19838else;
    }

    /* renamed from: if, reason: not valid java name */
    public void m24073if(Context context, AttributeSet attributeSet, int i) {
        LayoutInflater.from(context).inflate(R.layout.qmui_common_list_item, (ViewGroup) this, true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUICommonListItemView, i, 0);
        int i2 = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUICommonListItemView_qmui_orientation, 1);
        int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUICommonListItemView_qmui_accessory_type, 0);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUICommonListItemView_qmui_commonList_titleColor, sh1.m7404if(getContext(), R.attr.qmui_config_color_gray_1));
        int color2 = typedArrayObtainStyledAttributes.getColor(R.styleable.QMUICommonListItemView_qmui_commonList_detailColor, sh1.m7404if(getContext(), R.attr.qmui_config_color_gray_5));
        typedArrayObtainStyledAttributes.recycle();
        this.f19842new = (ImageView) findViewById(R.id.group_list_item_imageView);
        this.f19833case = (LinearLayout) findViewById(R.id.group_list_item_textContainer);
        TextView textView = (TextView) findViewById(R.id.group_list_item_textView);
        this.f19838else = textView;
        textView.setTextColor(color);
        this.f19834catch = (ImageView) findViewById(R.id.group_list_item_tips_dot);
        this.f19835class = (ViewStub) findViewById(R.id.group_list_item_tips_new);
        this.f19840goto = (TextView) findViewById(R.id.group_list_item_detailTextView);
        this.f19843this = (Space) findViewById(R.id.group_list_item_space);
        this.f19840goto.setTextColor(color2);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f19840goto.getLayoutParams();
        if (com.qmuiteam.qmui.util.Cfor.m23631class()) {
            layoutParams.bottomMargin = -sh1.m7405new(context, R.attr.qmui_common_list_item_detail_line_space);
        }
        if (i2 == 0) {
            layoutParams.topMargin = ih1.m3450new(getContext(), 6);
        } else {
            layoutParams.topMargin = 0;
        }
        this.f19844try = (ViewGroup) findViewById(R.id.group_list_item_accessoryView);
        setOrientation(i2);
        setAccessoryType(i3);
    }

    /* renamed from: new, reason: not valid java name */
    public void m24074new(boolean z) {
        m24075try(z, true);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        super.onLayout(z, i, i2, i3, i4);
        ImageView imageView = this.f19834catch;
        if (imageView != null && imageView.getVisibility() == 0) {
            int height = (getHeight() / 2) - (this.f19834catch.getMeasuredHeight() / 2);
            int left = this.f19833case.getLeft();
            int i5 = this.f19839for;
            if (i5 == 0) {
                width = (int) (left + this.f19838else.getPaint().measureText(this.f19838else.getText().toString()) + ih1.m3450new(getContext(), 4));
            } else if (i5 != 1) {
                return;
            } else {
                width = (left + this.f19833case.getWidth()) - this.f19834catch.getMeasuredWidth();
            }
            ImageView imageView2 = this.f19834catch;
            imageView2.layout(width, height, imageView2.getMeasuredWidth() + width, this.f19834catch.getMeasuredHeight() + height);
        }
        View view = this.f19836const;
        if (view == null || view.getVisibility() != 0) {
            return;
        }
        int left2 = (int) (this.f19833case.getLeft() + this.f19838else.getPaint().measureText(this.f19838else.getText().toString()) + ih1.m3450new(getContext(), 4));
        int height2 = (getHeight() / 2) - (this.f19836const.getMeasuredHeight() / 2);
        View view2 = this.f19836const;
        view2.layout(left2, height2, view2.getMeasuredWidth() + left2, this.f19836const.getMeasuredHeight() + height2);
    }

    public void setAccessoryType(int i) {
        this.f19844try.removeAllViews();
        this.f19837do = i;
        if (i == 0) {
            this.f19844try.setVisibility(8);
            return;
        }
        if (i == 1) {
            ImageView accessoryImageView = getAccessoryImageView();
            accessoryImageView.setImageDrawable(sh1.m7406try(getContext(), R.attr.qmui_common_list_item_chevron));
            this.f19844try.addView(accessoryImageView);
            this.f19844try.setVisibility(0);
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            this.f19844try.setVisibility(0);
            return;
        }
        if (this.f19832break == null) {
            CheckBox checkBox = new CheckBox(getContext());
            this.f19832break = checkBox;
            checkBox.setButtonDrawable(sh1.m7406try(getContext(), R.attr.qmui_common_list_item_switch));
            this.f19832break.setLayoutParams(getAccessoryLayoutParams());
            this.f19832break.setClickable(false);
            this.f19832break.setEnabled(false);
        }
        this.f19844try.addView(this.f19832break);
        this.f19844try.setVisibility(0);
    }

    public void setDetailText(CharSequence charSequence) {
        this.f19840goto.setText(charSequence);
        if (kh1.m4402case(charSequence)) {
            this.f19840goto.setVisibility(8);
        } else {
            this.f19840goto.setVisibility(0);
        }
    }

    public void setImageDrawable(Drawable drawable) {
        if (drawable == null) {
            this.f19842new.setVisibility(8);
        } else {
            this.f19842new.setImageDrawable(drawable);
            this.f19842new.setVisibility(0);
        }
    }

    public void setOrientation(int i) {
        this.f19841if = i;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f19843this.getLayoutParams();
        if (this.f19841if == 0) {
            this.f19833case.setOrientation(1);
            this.f19833case.setGravity(3);
            layoutParams.width = -2;
            layoutParams.height = ih1.m3450new(getContext(), 4);
            layoutParams.weight = 0.0f;
            this.f19838else.setTextSize(0, sh1.m7405new(getContext(), R.attr.qmui_common_list_item_title_v_text_size));
            this.f19840goto.setTextSize(0, sh1.m7405new(getContext(), R.attr.qmui_common_list_item_detail_v_text_size));
            return;
        }
        this.f19833case.setOrientation(0);
        this.f19833case.setGravity(16);
        layoutParams.width = 0;
        layoutParams.height = 0;
        layoutParams.weight = 1.0f;
        this.f19838else.setTextSize(0, sh1.m7405new(getContext(), R.attr.qmui_common_list_item_title_h_text_size));
        this.f19840goto.setTextSize(0, sh1.m7405new(getContext(), R.attr.qmui_common_list_item_detail_h_text_size));
    }

    public void setRedDotPosition(int i) {
        this.f19839for = i;
        requestLayout();
    }

    public void setText(CharSequence charSequence) {
        this.f19838else.setText(charSequence);
        if (kh1.m4402case(charSequence)) {
            this.f19838else.setVisibility(8);
        } else {
            this.f19838else.setVisibility(0);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m24075try(boolean z, boolean z2) {
        this.f19834catch.setVisibility((z && z2) ? 0 : 8);
    }

    public QMUICommonListItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUICommonListItemViewStyle);
    }

    public QMUICommonListItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f19841if = 1;
        this.f19839for = 0;
        m24073if(context, attributeSet, i);
    }
}
