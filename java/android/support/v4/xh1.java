package android.support.v4;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.widget.QMUILoadingView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class xh1 extends Dialog {

    /* renamed from: android.support.v4.xh1$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: case, reason: not valid java name */
        public static final int f7939case = 2;

        /* renamed from: else, reason: not valid java name */
        public static final int f7940else = 3;

        /* renamed from: goto, reason: not valid java name */
        public static final int f7941goto = 4;

        /* renamed from: new, reason: not valid java name */
        public static final int f7942new = 0;

        /* renamed from: try, reason: not valid java name */
        public static final int f7943try = 1;

        /* renamed from: do, reason: not valid java name */
        private int f7944do = 0;

        /* renamed from: for, reason: not valid java name */
        private CharSequence f7945for;

        /* renamed from: if, reason: not valid java name */
        private Context f7946if;

        @Retention(RetentionPolicy.SOURCE)
        /* renamed from: android.support.v4.xh1$do$do, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public @interface InterfaceC0000do {
        }

        public Cdo(Context context) {
            this.f7946if = context;
        }

        /* renamed from: do, reason: not valid java name */
        public xh1 m9513do() {
            return m9515if(true);
        }

        /* renamed from: for, reason: not valid java name */
        public Cdo m9514for(int i) {
            this.f7944do = i;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public xh1 m9515if(boolean z) {
            xh1 xh1Var = new xh1(this.f7946if);
            xh1Var.setCancelable(z);
            xh1Var.setContentView(R.layout.qmui_tip_dialog_layout);
            ViewGroup viewGroup = (ViewGroup) xh1Var.findViewById(R.id.contentWrap);
            int i = this.f7944do;
            if (i == 1) {
                QMUILoadingView qMUILoadingView = new QMUILoadingView(this.f7946if);
                qMUILoadingView.setColor(-1);
                qMUILoadingView.setSize(ih1.m3450new(this.f7946if, 32));
                qMUILoadingView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                viewGroup.addView(qMUILoadingView);
            } else if (i == 2 || i == 3 || i == 4) {
                ImageView imageView = new ImageView(this.f7946if);
                imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                int i2 = this.f7944do;
                if (i2 == 2) {
                    imageView.setImageDrawable(ContextCompat.getDrawable(this.f7946if, R.drawable.qmui_icon_notify_done));
                } else if (i2 == 3) {
                    imageView.setImageDrawable(ContextCompat.getDrawable(this.f7946if, R.drawable.qmui_icon_notify_error));
                } else {
                    imageView.setImageDrawable(ContextCompat.getDrawable(this.f7946if, R.drawable.qmui_icon_notify_info));
                }
                viewGroup.addView(imageView);
            }
            CharSequence charSequence = this.f7945for;
            if (charSequence != null && charSequence.length() > 0) {
                TextView textView = new TextView(this.f7946if);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                if (this.f7944do != 0) {
                    layoutParams.topMargin = ih1.m3450new(this.f7946if, 12);
                }
                textView.setLayoutParams(layoutParams);
                textView.setEllipsize(TextUtils.TruncateAt.END);
                textView.setGravity(17);
                textView.setMaxLines(2);
                textView.setTextColor(ContextCompat.getColor(this.f7946if, R.color.qmui_config_color_white));
                textView.setTextSize(2, 14.0f);
                textView.setText(this.f7945for);
                viewGroup.addView(textView);
            }
            return xh1Var;
        }

        /* renamed from: new, reason: not valid java name */
        public Cdo m9516new(CharSequence charSequence) {
            this.f7945for = charSequence;
            return this;
        }
    }

    /* renamed from: android.support.v4.xh1$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private Context f7947do;

        /* renamed from: if, reason: not valid java name */
        private int f7948if;

        public Cif(Context context) {
            this.f7947do = context;
        }

        /* renamed from: do, reason: not valid java name */
        public xh1 m9517do() {
            xh1 xh1Var = new xh1(this.f7947do);
            xh1Var.setContentView(R.layout.qmui_tip_dialog_layout);
            LayoutInflater.from(this.f7947do).inflate(this.f7948if, (ViewGroup) xh1Var.findViewById(R.id.contentWrap), true);
            return xh1Var;
        }

        /* renamed from: if, reason: not valid java name */
        public Cif m9518if(@LayoutRes int i) {
            this.f7948if = i;
            return this;
        }
    }

    public xh1(Context context) {
        this(context, R.style.QMUI_TipDialog);
    }

    /* renamed from: do, reason: not valid java name */
    private void m9512do() {
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            window.setAttributes(attributes);
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m9512do();
    }

    public xh1(Context context, int i) {
        super(context, i);
        setCanceledOnTouchOutside(false);
    }
}
