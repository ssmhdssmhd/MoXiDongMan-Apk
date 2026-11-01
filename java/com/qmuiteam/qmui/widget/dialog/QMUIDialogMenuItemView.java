package com.qmuiteam.qmui.widget.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.sh1;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.layout.QMUIRelativeLayout;
import com.qmuiteam.qmui.util.Cfor;

/* loaded from: classes2.dex */
public class QMUIDialogMenuItemView extends QMUIRelativeLayout {

    /* renamed from: for, reason: not valid java name */
    private int f19807for;

    /* renamed from: new, reason: not valid java name */
    private MenuItemViewListener f19808new;

    /* renamed from: try, reason: not valid java name */
    private boolean f19809try;

    public interface MenuItemViewListener {
        void onClick(int i);
    }

    public QMUIDialogMenuItemView(Context context) {
        super(context, null, R.attr.qmui_dialog_menu_item_style);
        this.f19807for = -1;
        this.f19809try = false;
    }

    /* renamed from: if, reason: not valid java name */
    public static TextView m24057if(Context context) {
        TextView textView = new TextView(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.QMUIDialogMenuTextStyleDef, R.attr.qmui_dialog_menu_item_style, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.QMUIDialogMenuTextStyleDef_android_gravity) {
                textView.setGravity(typedArrayObtainStyledAttributes.getInt(index, -1));
            } else if (index == R.styleable.QMUIDialogMenuTextStyleDef_android_textColor) {
                textView.setTextColor(typedArrayObtainStyledAttributes.getColorStateList(index));
            } else if (index == R.styleable.QMUIDialogMenuTextStyleDef_android_textSize) {
                textView.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textView.setDuplicateParentStateEnabled(false);
        return textView;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m24058for() {
        return this.f19809try;
    }

    public int getMenuIndex() {
        return this.f19807for;
    }

    /* renamed from: new, reason: not valid java name */
    public void mo24059new(boolean z) {
    }

    @Override // android.view.View
    public boolean performClick() {
        MenuItemViewListener menuItemViewListener = this.f19808new;
        if (menuItemViewListener != null) {
            menuItemViewListener.onClick(this.f19807for);
        }
        return super.performClick();
    }

    public void setChecked(boolean z) {
        this.f19809try = z;
        mo24059new(z);
    }

    public void setListener(MenuItemViewListener menuItemViewListener) {
        if (!isClickable()) {
            setClickable(true);
        }
        this.f19808new = menuItemViewListener;
    }

    public void setMenuIndex(int i) {
        this.f19807for = i;
    }

    public static class TextItemView extends QMUIDialogMenuItemView {

        /* renamed from: case, reason: not valid java name */
        public TextView f19816case;

        public TextItemView(Context context) {
            super(context);
            m24060try();
        }

        /* renamed from: try, reason: not valid java name */
        private void m24060try() {
            TextView textViewM24057if = QMUIDialogMenuItemView.m24057if(getContext());
            this.f19816case = textViewM24057if;
            addView(textViewM24057if, new RelativeLayout.LayoutParams(-1, -1));
        }

        public void setText(CharSequence charSequence) {
            this.f19816case.setText(charSequence);
        }

        public void setTextColor(int i) {
            this.f19816case.setTextColor(i);
        }

        public TextItemView(Context context, CharSequence charSequence) {
            super(context);
            m24060try();
            setText(charSequence);
        }
    }

    public static class MarkItemView extends QMUIDialogMenuItemView {

        /* renamed from: case, reason: not valid java name */
        private Context f19813case;

        /* renamed from: else, reason: not valid java name */
        private TextView f19814else;

        /* renamed from: goto, reason: not valid java name */
        private ImageView f19815goto;

        public MarkItemView(Context context) {
            super(context);
            this.f19813case = context;
            ImageView imageView = new ImageView(this.f19813case);
            this.f19815goto = imageView;
            imageView.setId(Cfor.m23654this());
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.QMUIDialogMenuMarkDef, R.attr.qmui_dialog_menu_item_style, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            int dimensionPixelSize = 0;
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.QMUIDialogMenuMarkDef_qmui_dialog_menu_item_check_mark_margin_hor) {
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUIDialogMenuMarkDef_qmui_dialog_menu_item_mark_drawable) {
                    this.f19815goto.setImageDrawable(sh1.m7400case(context, typedArrayObtainStyledAttributes, index));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(15, -1);
            layoutParams.addRule(11, -1);
            layoutParams.leftMargin = dimensionPixelSize;
            addView(this.f19815goto, layoutParams);
            this.f19814else = QMUIDialogMenuItemView.m24057if(this.f19813case);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(9, -1);
            layoutParams2.addRule(0, this.f19815goto.getId());
            addView(this.f19814else, layoutParams2);
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogMenuItemView
        /* renamed from: new */
        public void mo24059new(boolean z) {
            Cfor.m23649return(this.f19815goto, z);
        }

        public void setText(CharSequence charSequence) {
            this.f19814else.setText(charSequence);
        }

        public MarkItemView(Context context, CharSequence charSequence) {
            this(context);
            setText(charSequence);
        }
    }

    @SuppressLint({"ViewConstructor"})
    public static class CheckItemView extends QMUIDialogMenuItemView {

        /* renamed from: case, reason: not valid java name */
        private Context f19810case;

        /* renamed from: else, reason: not valid java name */
        private TextView f19811else;

        /* renamed from: goto, reason: not valid java name */
        private ImageView f19812goto;

        public CheckItemView(Context context, boolean z) {
            super(context);
            this.f19810case = context;
            ImageView imageView = new ImageView(this.f19810case);
            this.f19812goto = imageView;
            imageView.setId(Cfor.m23654this());
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.QMUIDialogMenuCheckDef, R.attr.qmui_dialog_menu_item_style, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            int dimensionPixelSize = 0;
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.QMUIDialogMenuCheckDef_qmui_dialog_menu_item_check_mark_margin_hor) {
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUIDialogMenuCheckDef_qmui_dialog_menu_item_check_drawable) {
                    this.f19812goto.setImageDrawable(sh1.m7400case(context, typedArrayObtainStyledAttributes, index));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(15, -1);
            if (z) {
                layoutParams.addRule(11, -1);
                layoutParams.leftMargin = dimensionPixelSize;
            } else {
                layoutParams.addRule(9, -1);
                layoutParams.rightMargin = dimensionPixelSize;
            }
            addView(this.f19812goto, layoutParams);
            this.f19811else = QMUIDialogMenuItemView.m24057if(this.f19810case);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            if (z) {
                layoutParams2.addRule(0, this.f19812goto.getId());
            } else {
                layoutParams2.addRule(1, this.f19812goto.getId());
            }
            addView(this.f19811else, layoutParams2);
        }

        public CharSequence getText() {
            return this.f19811else.getText();
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogMenuItemView
        /* renamed from: new */
        public void mo24059new(boolean z) {
            Cfor.m23649return(this.f19812goto, z);
        }

        public void setText(CharSequence charSequence) {
            this.f19811else.setText(charSequence);
        }

        public CheckItemView(Context context, boolean z, CharSequence charSequence) {
            this(context, z);
            setText(charSequence);
        }
    }
}
