package com.wsw.cospa.widget.view;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes2.dex */
public class ChapterButton extends AppCompatTextView {
    private static final int[] NORMAL_STATE = {-16842913};
    private static final int[] SELECTED_STATE = {R.attr.state_selected};
    private int accentColor;
    private boolean download;
    private int normalColor;

    public ChapterButton(Context context) {
        this(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, com.wsw.cospa.R.styleable.ChapterButton, 0, 0);
        this.accentColor = typedArrayObtainStyledAttributes.getColor(0, -16777216);
        typedArrayObtainStyledAttributes.recycle();
        this.normalColor = -8355712;
        setClickable(true);
        this.download = false;
        initColorDrawableState();
        initDrawableState();
    }

    private void initColorDrawableState() {
        setTextColor(new ColorStateList(new int[][]{NORMAL_STATE, SELECTED_STATE}, new int[]{this.normalColor, -1}));
    }

    private void initDrawableState() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setStroke((int) ViewUtils.dpToPixel(1.0f, getContext()), this.normalColor);
        gradientDrawable.setCornerRadius(ViewUtils.dpToPixel(2.0f, getContext()));
        gradientDrawable.setColor(0);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setStroke((int) ViewUtils.dpToPixel(1.0f, getContext()), this.accentColor);
        gradientDrawable2.setCornerRadius(ViewUtils.dpToPixel(2.0f, getContext()));
        gradientDrawable2.setColor(this.accentColor);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(NORMAL_STATE, gradientDrawable);
        stateListDrawable.addState(SELECTED_STATE, gradientDrawable2);
        setBackgroundDrawable(stateListDrawable);
    }

    public void setDownload(boolean z) {
        if (this.download != z) {
            this.download = z;
            this.normalColor = z ? this.accentColor : -8355712;
            initColorDrawableState();
            initDrawableState();
        }
    }

    public ChapterButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChapterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }
}
