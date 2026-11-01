package android.support.v4;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.util.Cfor;

/* loaded from: classes2.dex */
public class sh1 {
    /* renamed from: case, reason: not valid java name */
    public static Drawable m7400case(Context context, TypedArray typedArray, int i) {
        int i2;
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        if (typedValuePeekValue == null || typedValuePeekValue.type == 2 || (i2 = typedValuePeekValue.resourceId) == 0) {
            return null;
        }
        return jh1.m3899this(context, i2);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m7401do(TextView textView, int i) {
        TypedArray typedArrayObtainStyledAttributes = textView.getContext().obtainStyledAttributes(null, R.styleable.QMUITextCommonStyleDef, i, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        int paddingLeft = textView.getPaddingLeft();
        int paddingRight = textView.getPaddingRight();
        int paddingTop = textView.getPaddingTop();
        int paddingBottom = textView.getPaddingBottom();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.QMUITextCommonStyleDef_android_gravity) {
                textView.setGravity(typedArrayObtainStyledAttributes.getInt(index, -1));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_textColor) {
                textView.setTextColor(typedArrayObtainStyledAttributes.getColorStateList(index));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_textSize) {
                textView.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_paddingLeft) {
                paddingLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_paddingRight) {
                paddingRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_paddingTop) {
                paddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_paddingBottom) {
                paddingBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_singleLine) {
                textView.setSingleLine(typedArrayObtainStyledAttributes.getBoolean(index, false));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_ellipsize) {
                int i3 = typedArrayObtainStyledAttributes.getInt(index, 3);
                if (i3 == 1) {
                    textView.setEllipsize(TextUtils.TruncateAt.START);
                } else if (i3 == 2) {
                    textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                } else if (i3 == 3) {
                    textView.setEllipsize(TextUtils.TruncateAt.END);
                } else if (i3 == 4) {
                    textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                }
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_maxLines) {
                textView.setMaxLines(typedArrayObtainStyledAttributes.getInt(index, -1));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_background) {
                Cfor.m23634default(textView, typedArrayObtainStyledAttributes.getDrawable(index));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_lineSpacingExtra) {
                textView.setLineSpacing(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0), 1.0f);
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_drawablePadding) {
                textView.setCompoundDrawablePadding(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_textColorHint) {
                textView.setHintTextColor(typedArrayObtainStyledAttributes.getColor(index, 0));
            } else if (index == R.styleable.QMUITextCommonStyleDef_android_textStyle) {
                textView.setTypeface(null, typedArrayObtainStyledAttributes.getInt(index, -1));
            }
        }
        textView.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* renamed from: else, reason: not valid java name */
    public static float m7402else(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.getFloat();
    }

    /* renamed from: for, reason: not valid java name */
    public static ColorStateList m7403for(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return ContextCompat.getColorStateList(context, typedValue.resourceId);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m7404if(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.data;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m7405new(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, ih1.m3461this(context));
    }

    /* renamed from: try, reason: not valid java name */
    public static Drawable m7406try(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        Drawable drawableM7400case = m7400case(context, typedArrayObtainStyledAttributes, 0);
        typedArrayObtainStyledAttributes.recycle();
        return drawableM7400case;
    }
}
