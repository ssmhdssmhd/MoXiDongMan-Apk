package com.qmuiteam.qmui.widget.dialog;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.support.v4.vh1;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.layout.QMUIButton;
import com.qmuiteam.qmui.util.Cfor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class QMUIDialogAction {

    /* renamed from: break, reason: not valid java name */
    public static final int f19769break = 2;

    /* renamed from: goto, reason: not valid java name */
    public static final int f19770goto = 0;

    /* renamed from: this, reason: not valid java name */
    public static final int f19771this = 1;

    /* renamed from: case, reason: not valid java name */
    private QMUIButton f19772case;

    /* renamed from: do, reason: not valid java name */
    private Context f19773do;

    /* renamed from: else, reason: not valid java name */
    private boolean f19774else;

    /* renamed from: for, reason: not valid java name */
    private int f19775for;

    /* renamed from: if, reason: not valid java name */
    private CharSequence f19776if;

    /* renamed from: new, reason: not valid java name */
    private int f19777new;

    /* renamed from: try, reason: not valid java name */
    private ActionListener f19778try;

    public interface ActionListener {
        void onClick(QMUIDialog qMUIDialog, int i);
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialogAction$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ QMUIDialog f19779do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f19781if;

        public Cdo(QMUIDialog qMUIDialog, int i) {
            this.f19779do = qMUIDialog;
            this.f19781if = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (QMUIDialogAction.this.f19778try == null || !QMUIDialogAction.this.f19772case.isEnabled()) {
                return;
            }
            QMUIDialogAction.this.f19778try.onClick(this.f19779do, this.f19781if);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialogAction$if, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cif {
    }

    public QMUIDialogAction(Context context, int i, ActionListener actionListener) {
        this(context, context.getResources().getString(i), 1, actionListener);
    }

    /* renamed from: new, reason: not valid java name */
    private QMUIButton m24022new(Context context, CharSequence charSequence, int i) {
        boolean z;
        Object obj;
        QMUIButton qMUIButton = new QMUIButton(context);
        Cfor.m23650static(qMUIButton, null);
        qMUIButton.setMinHeight(0);
        qMUIButton.setMinimumHeight(0);
        qMUIButton.setChangeAlphaWhenDisable(true);
        qMUIButton.setChangeAlphaWhenPress(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.QMUIDialogActionStyleDef, R.attr.qmui_dialog_action_style, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        ColorStateList colorStateList = null;
        ColorStateList colorStateList2 = null;
        int dimensionPixelSize = 0;
        int dimensionPixelSize2 = 0;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.QMUIDialogActionStyleDef_android_gravity) {
                qMUIButton.setGravity(typedArrayObtainStyledAttributes.getInt(index, -1));
            } else if (index == R.styleable.QMUIDialogActionStyleDef_android_textColor) {
                qMUIButton.setTextColor(typedArrayObtainStyledAttributes.getColorStateList(index));
            } else if (index == R.styleable.QMUIDialogActionStyleDef_android_textSize) {
                qMUIButton.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == R.styleable.QMUIDialogActionStyleDef_qmui_dialog_action_button_padding_horizontal) {
                dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == R.styleable.QMUIDialogActionStyleDef_android_background) {
                Cfor.m23650static(qMUIButton, typedArrayObtainStyledAttributes.getDrawable(index));
            } else if (index == R.styleable.QMUIDialogActionStyleDef_android_minWidth) {
                int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                qMUIButton.setMinWidth(dimensionPixelSize3);
                qMUIButton.setMinimumWidth(dimensionPixelSize3);
            } else if (index == R.styleable.QMUIDialogActionStyleDef_qmui_dialog_positive_action_text_color) {
                colorStateList2 = typedArrayObtainStyledAttributes.getColorStateList(index);
            } else if (index == R.styleable.QMUIDialogActionStyleDef_qmui_dialog_negative_action_text_color) {
                colorStateList = typedArrayObtainStyledAttributes.getColorStateList(index);
            } else if (index == R.styleable.QMUIDialogActionStyleDef_qmui_dialog_action_icon_space) {
                dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else {
                if (index == R.styleable.QMUITextCommonStyleDef_android_textStyle) {
                    obj = null;
                    qMUIButton.setTypeface(null, typedArrayObtainStyledAttributes.getInt(index, -1));
                }
            }
            obj = null;
        }
        typedArrayObtainStyledAttributes.recycle();
        qMUIButton.setPadding(dimensionPixelSize, 0, dimensionPixelSize, 0);
        if (i <= 0) {
            qMUIButton.setText(charSequence);
            z = true;
        } else {
            z = true;
            qMUIButton.setText(vh1.m8864for(true, dimensionPixelSize2, charSequence, ContextCompat.getDrawable(context, i)));
        }
        qMUIButton.setClickable(z);
        qMUIButton.setEnabled(this.f19774else);
        int i3 = this.f19777new;
        if (i3 == 2) {
            qMUIButton.setTextColor(colorStateList);
        } else if (i3 == 0) {
            qMUIButton.setTextColor(colorStateList2);
        }
        return qMUIButton;
    }

    /* renamed from: case, reason: not valid java name */
    public void m24023case(boolean z) {
        this.f19774else = z;
        QMUIButton qMUIButton = this.f19772case;
        if (qMUIButton != null) {
            qMUIButton.setEnabled(z);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public void m24024else(ActionListener actionListener) {
        this.f19778try = actionListener;
    }

    /* renamed from: for, reason: not valid java name */
    public QMUIButton m24025for(QMUIDialog qMUIDialog, int i) {
        QMUIButton qMUIButtonM24022new = m24022new(qMUIDialog.getContext(), this.f19776if, this.f19775for);
        this.f19772case = qMUIButtonM24022new;
        qMUIButtonM24022new.setOnClickListener(new Cdo(qMUIDialog, i));
        return this.f19772case;
    }

    /* renamed from: try, reason: not valid java name */
    public int m24026try() {
        return this.f19777new;
    }

    public QMUIDialogAction(Context context, String str, ActionListener actionListener) {
        this(context, str, 1, actionListener);
    }

    public QMUIDialogAction(Context context, int i, int i2, ActionListener actionListener) {
        this.f19774else = true;
        this.f19773do = context;
        this.f19776if = context.getResources().getString(i);
        this.f19777new = i2;
        this.f19778try = actionListener;
    }

    public QMUIDialogAction(Context context, CharSequence charSequence, int i, ActionListener actionListener) {
        this.f19774else = true;
        this.f19773do = context;
        this.f19776if = charSequence;
        this.f19777new = i;
        this.f19778try = actionListener;
    }

    public QMUIDialogAction(Context context, int i, CharSequence charSequence, int i2, ActionListener actionListener) {
        this.f19774else = true;
        this.f19773do = context;
        this.f19775for = i;
        this.f19776if = charSequence;
        this.f19777new = i2;
        this.f19778try = actionListener;
    }
}
