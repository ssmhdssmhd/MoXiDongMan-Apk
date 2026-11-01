package cn.qqtheme.framework.popup;

import android.R;
import android.app.Activity;
import android.support.v4.ur;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import java.util.Objects;

/* renamed from: cn.qqtheme.framework.popup.if, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cif<V extends View> extends cn.qqtheme.framework.popup.Cdo<View> {

    /* renamed from: abstract, reason: not valid java name */
    public TextView f9180abstract;

    /* renamed from: break, reason: not valid java name */
    public int f9181break;

    /* renamed from: catch, reason: not valid java name */
    public int f9182catch;

    /* renamed from: class, reason: not valid java name */
    public int f9183class;

    /* renamed from: const, reason: not valid java name */
    public int f9184const;

    /* renamed from: continue, reason: not valid java name */
    public View f9185continue;

    /* renamed from: default, reason: not valid java name */
    public int f9186default;

    /* renamed from: extends, reason: not valid java name */
    public int f9187extends;

    /* renamed from: final, reason: not valid java name */
    public int f9188final;

    /* renamed from: finally, reason: not valid java name */
    public int f9189finally;

    /* renamed from: import, reason: not valid java name */
    public CharSequence f9190import;

    /* renamed from: interface, reason: not valid java name */
    public View f9191interface;

    /* renamed from: native, reason: not valid java name */
    public CharSequence f9192native;

    /* renamed from: package, reason: not valid java name */
    public int f9193package;

    /* renamed from: private, reason: not valid java name */
    public TextView f9194private;

    /* renamed from: public, reason: not valid java name */
    public CharSequence f9195public;

    /* renamed from: return, reason: not valid java name */
    public int f9196return;

    /* renamed from: static, reason: not valid java name */
    public int f9197static;

    /* renamed from: strictfp, reason: not valid java name */
    public View f9198strictfp;

    /* renamed from: super, reason: not valid java name */
    public int f9199super;

    /* renamed from: switch, reason: not valid java name */
    public int f9200switch;

    /* renamed from: this, reason: not valid java name */
    public boolean f9201this;

    /* renamed from: throw, reason: not valid java name */
    public int f9202throw;

    /* renamed from: throws, reason: not valid java name */
    public int f9203throws;

    /* renamed from: volatile, reason: not valid java name */
    public View f9204volatile;

    /* renamed from: while, reason: not valid java name */
    public boolean f9205while;

    /* renamed from: cn.qqtheme.framework.popup.if$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Cif.this.mo10915do();
            Cif.this.m10952protected();
        }
    }

    /* renamed from: cn.qqtheme.framework.popup.if$if, reason: invalid class name and collision with other inner class name */
    public class ViewOnClickListenerC0020if implements View.OnClickListener {
        public ViewOnClickListenerC0020if() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Cif.this.mo10915do();
            Cif.this.mo10918transient();
        }
    }

    public Cif(Activity activity) {
        super(activity);
        this.f9201this = true;
        this.f9181break = -13388315;
        this.f9182catch = 1;
        this.f9183class = -1;
        this.f9184const = 40;
        this.f9188final = 15;
        this.f9199super = 0;
        this.f9202throw = 0;
        this.f9205while = true;
        this.f9190import = "";
        this.f9192native = "";
        this.f9195public = "";
        this.f9196return = -13388315;
        this.f9197static = -13388315;
        this.f9200switch = -16777216;
        this.f9203throws = -16611122;
        this.f9186default = 0;
        this.f9187extends = 0;
        this.f9189finally = 0;
        this.f9193package = -1;
        this.f9190import = activity.getString(R.string.cancel);
        this.f9192native = activity.getString(R.string.ok);
    }

    public void a(@ColorInt int i) {
        TextView textView = this.f9194private;
        if (textView != null) {
            textView.setTextColor(i);
        } else {
            this.f9196return = i;
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public TextView m10946abstract() {
        TextView textView = this.f9180abstract;
        Objects.requireNonNull(textView, "please call show at first");
        return textView;
    }

    public void b(@IntRange(from = 10, to = com.bumptech.glide.load.engine.prefill.Cdo.f9868class) int i) {
        this.f9186default = i;
    }

    public void c(boolean z) {
        TextView textView = this.f9194private;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        } else {
            this.f9205while = z;
        }
    }

    @Override // cn.qqtheme.framework.popup.Cdo
    /* renamed from: catch */
    public final View mo10924catch() {
        LinearLayout linearLayout = new LinearLayout(this.f9171do);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setBackgroundColor(this.f9193package);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.setPadding(0, 0, 0, 0);
        linearLayout.setClipToPadding(false);
        View viewM10950interface = m10950interface();
        if (viewM10950interface != null) {
            linearLayout.addView(viewM10950interface);
        }
        if (this.f9201this) {
            View view = new View(this.f9171do);
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, this.f9182catch));
            view.setBackgroundColor(this.f9181break);
            linearLayout.addView(view);
        }
        if (this.f9204volatile == null) {
            this.f9204volatile = mo10917strictfp();
        }
        int i = this.f9199super;
        int iM8613interface = i > 0 ? ur.m8613interface(this.f9171do, i) : 0;
        int i2 = this.f9202throw;
        int iM8613interface2 = i2 > 0 ? ur.m8613interface(this.f9171do, i2) : 0;
        this.f9204volatile.setPadding(iM8613interface, iM8613interface2, iM8613interface, iM8613interface2);
        ViewGroup viewGroup = (ViewGroup) this.f9204volatile.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this.f9204volatile);
        }
        linearLayout.addView(this.f9204volatile, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        View viewMo10919volatile = mo10919volatile();
        if (viewMo10919volatile != null) {
            linearLayout.addView(viewMo10919volatile);
        }
        return linearLayout;
    }

    /* renamed from: continue, reason: not valid java name */
    public View m10947continue() {
        View view = this.f9185continue;
        Objects.requireNonNull(view, "please call show at first");
        return view;
    }

    public void d(int i, int i2) {
        this.f9199super = i;
        this.f9202throw = i2;
    }

    public void e(View view) {
        this.f9191interface = view;
    }

    public void f(View view) {
        this.f9198strictfp = view;
    }

    public void g(int i) {
        this.f9203throws = i;
    }

    public void h(@StringRes int i) {
        i(this.f9171do.getString(i));
    }

    public void i(CharSequence charSequence) {
        TextView textView = this.f9180abstract;
        if (textView != null) {
            textView.setText(charSequence);
        } else {
            this.f9192native = charSequence;
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public void m10948implements(@ColorInt int i) {
        this.f9193package = i;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m10949instanceof(@StringRes int i) {
        m10953synchronized(this.f9171do.getString(i));
    }

    @Nullable
    /* renamed from: interface, reason: not valid java name */
    public View m10950interface() {
        View view = this.f9198strictfp;
        if (view != null) {
            return view;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.f9171do);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, ur.m8613interface(this.f9171do, this.f9184const)));
        relativeLayout.setBackgroundColor(this.f9183class);
        relativeLayout.setGravity(16);
        TextView textView = new TextView(this.f9171do);
        this.f9194private = textView;
        textView.setVisibility(this.f9205while ? 0 : 8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(15, -1);
        this.f9194private.setLayoutParams(layoutParams);
        this.f9194private.setBackgroundColor(0);
        this.f9194private.setGravity(17);
        int iM8613interface = ur.m8613interface(this.f9171do, this.f9188final);
        this.f9194private.setPadding(iM8613interface, 0, iM8613interface, 0);
        if (!TextUtils.isEmpty(this.f9190import)) {
            this.f9194private.setText(this.f9190import);
        }
        this.f9194private.setTextColor(ur.m8605final(this.f9196return, this.f9203throws));
        int i = this.f9186default;
        if (i != 0) {
            this.f9194private.setTextSize(i);
        }
        this.f9194private.setOnClickListener(new Cdo());
        relativeLayout.addView(this.f9194private);
        if (this.f9185continue == null) {
            TextView textView2 = new TextView(this.f9171do);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            int iM8613interface2 = ur.m8613interface(this.f9171do, this.f9188final);
            layoutParams2.leftMargin = iM8613interface2;
            layoutParams2.rightMargin = iM8613interface2;
            layoutParams2.addRule(14, -1);
            layoutParams2.addRule(15, -1);
            textView2.setLayoutParams(layoutParams2);
            textView2.setGravity(17);
            if (!TextUtils.isEmpty(this.f9195public)) {
                textView2.setText(this.f9195public);
            }
            textView2.setTextColor(this.f9200switch);
            int i2 = this.f9189finally;
            if (i2 != 0) {
                textView2.setTextSize(i2);
            }
            this.f9185continue = textView2;
        }
        relativeLayout.addView(this.f9185continue);
        this.f9180abstract = new TextView(this.f9171do);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -1);
        layoutParams3.addRule(11, -1);
        layoutParams3.addRule(15, -1);
        this.f9180abstract.setLayoutParams(layoutParams3);
        this.f9180abstract.setBackgroundColor(0);
        this.f9180abstract.setGravity(17);
        this.f9180abstract.setPadding(iM8613interface, 0, iM8613interface, 0);
        if (!TextUtils.isEmpty(this.f9192native)) {
            this.f9180abstract.setText(this.f9192native);
        }
        this.f9180abstract.setTextColor(ur.m8605final(this.f9197static, this.f9203throws));
        int i3 = this.f9187extends;
        if (i3 != 0) {
            this.f9180abstract.setTextSize(i3);
        }
        this.f9180abstract.setOnClickListener(new ViewOnClickListenerC0020if());
        relativeLayout.addView(this.f9180abstract);
        return relativeLayout;
    }

    public void j(@ColorInt int i) {
        TextView textView = this.f9180abstract;
        if (textView != null) {
            textView.setTextColor(i);
        } else {
            this.f9197static = i;
        }
    }

    public void k(@IntRange(from = 10, to = com.bumptech.glide.load.engine.prefill.Cdo.f9868class) int i) {
        this.f9187extends = i;
    }

    public void l(@StringRes int i) {
        m(this.f9171do.getString(i));
    }

    public void m(CharSequence charSequence) {
        View view = this.f9185continue;
        if (view == null || !(view instanceof TextView)) {
            this.f9195public = charSequence;
        } else {
            ((TextView) view).setText(charSequence);
        }
    }

    public void n(@ColorInt int i) {
        View view = this.f9185continue;
        if (view == null || !(view instanceof TextView)) {
            this.f9200switch = i;
        } else {
            ((TextView) view).setTextColor(i);
        }
    }

    public void o(@IntRange(from = 10, to = com.bumptech.glide.load.engine.prefill.Cdo.f9868class) int i) {
        this.f9189finally = i;
    }

    public void p(View view) {
        this.f9185continue = view;
    }

    /* renamed from: private, reason: not valid java name */
    public TextView m10951private() {
        TextView textView = this.f9194private;
        Objects.requireNonNull(textView, "please call show at first");
        return textView;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m10952protected() {
    }

    public void q(@ColorInt int i) {
        this.f9183class = i;
    }

    public void r(@IntRange(from = 10, to = 80) int i) {
        this.f9184const = i;
    }

    public void s(@ColorInt int i) {
        this.f9181break = i;
    }

    @NonNull
    /* renamed from: strictfp */
    public abstract V mo10917strictfp();

    /* renamed from: synchronized, reason: not valid java name */
    public void m10953synchronized(CharSequence charSequence) {
        TextView textView = this.f9194private;
        if (textView != null) {
            textView.setText(charSequence);
        } else {
            this.f9190import = charSequence;
        }
    }

    public void t(int i) {
        this.f9182catch = i;
    }

    /* renamed from: transient */
    public void mo10918transient() {
    }

    public void u(boolean z) {
        this.f9201this = z;
    }

    public void v(int i) {
        this.f9188final = i;
    }

    @Nullable
    /* renamed from: volatile */
    public View mo10919volatile() {
        View view = this.f9191interface;
        if (view != null) {
            return view;
        }
        return null;
    }
}
