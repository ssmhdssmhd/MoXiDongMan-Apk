package cn.qqtheme.framework.popup;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.js1;
import android.support.v4.uv0;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.StyleRes;

/* renamed from: cn.qqtheme.framework.popup.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo<V extends View> implements DialogInterface.OnKeyListener, DialogInterface.OnDismissListener {

    /* renamed from: else, reason: not valid java name */
    public static final int f9168else = -1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f9169goto = -2;

    /* renamed from: case, reason: not valid java name */
    private boolean f9170case = false;

    /* renamed from: do, reason: not valid java name */
    public Activity f9171do;

    /* renamed from: for, reason: not valid java name */
    public int f9172for;

    /* renamed from: if, reason: not valid java name */
    public int f9173if;

    /* renamed from: new, reason: not valid java name */
    private Dialog f9174new;

    /* renamed from: try, reason: not valid java name */
    private FrameLayout f9175try;

    /* renamed from: cn.qqtheme.framework.popup.do$do, reason: invalid class name and collision with other inner class name */
    public class DialogInterfaceOnDismissListenerC0019do implements DialogInterface.OnDismissListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DialogInterface.OnDismissListener f9176do;

        public DialogInterfaceOnDismissListenerC0019do(DialogInterface.OnDismissListener onDismissListener) {
            this.f9176do = onDismissListener;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            Cdo.this.onDismiss(dialogInterface);
            this.f9176do.onDismiss(dialogInterface);
        }
    }

    /* renamed from: cn.qqtheme.framework.popup.do$if, reason: invalid class name */
    public class Cif implements DialogInterface.OnKeyListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DialogInterface.OnKeyListener f9178do;

        public Cif(DialogInterface.OnKeyListener onKeyListener) {
            this.f9178do = onKeyListener;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            Cdo.this.onKey(dialogInterface, i, keyEvent);
            return this.f9178do.onKey(dialogInterface, i, keyEvent);
        }
    }

    public Cdo(Activity activity) {
        this.f9171do = activity;
        DisplayMetrics displayMetricsM4103for = js1.m4103for(activity);
        this.f9173if = displayMetricsM4103for.widthPixels;
        this.f9172for = displayMetricsM4103for.heightPixels;
        m10921this();
    }

    /* renamed from: this, reason: not valid java name */
    private void m10921this() {
        FrameLayout frameLayout = new FrameLayout(this.f9171do);
        this.f9175try = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.f9175try.setFocusable(true);
        this.f9175try.setFocusableInTouchMode(true);
        Dialog dialog = new Dialog(this.f9171do);
        this.f9174new = dialog;
        dialog.setCanceledOnTouchOutside(true);
        this.f9174new.setCancelable(true);
        this.f9174new.setOnKeyListener(this);
        this.f9174new.setOnDismissListener(this);
        Window window = this.f9174new.getWindow();
        if (window != null) {
            window.setGravity(80);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.requestFeature(1);
            window.setContentView(this.f9175try);
        }
        m10927default(this.f9173if, -2);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m10922break() {
        return this.f9174new.isShowing();
    }

    /* renamed from: case, reason: not valid java name */
    public int m10923case() {
        return this.f9172for;
    }

    /* renamed from: catch, reason: not valid java name */
    public abstract V mo10924catch();

    /* renamed from: class, reason: not valid java name */
    public boolean m10925class() {
        mo10915do();
        return false;
    }

    /* renamed from: const, reason: not valid java name */
    public void m10926const(@StyleRes int i) {
        Window window = this.f9174new.getWindow();
        if (window != null) {
            window.setWindowAnimations(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* renamed from: default, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m10927default(int i, int i2) {
        ViewGroup.LayoutParams layoutParams;
        if (i == -1) {
            i = this.f9173if;
        }
        if (i != 0 || i2 != 0) {
            if (i == 0) {
                i = this.f9173if;
            } else if (i2 == 0) {
            }
            uv0.m8678native(this, String.format("will set popup width/height to: %s/%s", Integer.valueOf(i), Integer.valueOf(i2)));
            layoutParams = this.f9175try.getLayoutParams();
            if (layoutParams != null) {
                layoutParams = new ViewGroup.LayoutParams(i, i2);
            } else {
                layoutParams.width = i;
                layoutParams.height = i2;
            }
            this.f9175try.setLayoutParams(layoutParams);
        }
        i = this.f9173if;
        i2 = -2;
        uv0.m8678native(this, String.format("will set popup width/height to: %s/%s", Integer.valueOf(i), Integer.valueOf(i2)));
        layoutParams = this.f9175try.getLayoutParams();
        if (layoutParams != null) {
        }
        this.f9175try.setLayoutParams(layoutParams);
    }

    /* renamed from: do */
    public void mo10915do() {
        m10934if();
    }

    /* renamed from: else, reason: not valid java name */
    public int m10928else() {
        return this.f9173if;
    }

    /* renamed from: extends, reason: not valid java name */
    public void m10929extends(int i) {
        m10927default(i, 0);
    }

    /* renamed from: final, reason: not valid java name */
    public void m10930final(boolean z) {
        this.f9174new.setCancelable(z);
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m10931finally() {
        if (this.f9170case) {
            this.f9174new.show();
            m10937package();
            return;
        }
        uv0.m8678native(this, "do something before popup show");
        mo10916import();
        View viewMo10924catch = mo10924catch();
        m10943throw(viewMo10924catch);
        mo10920while(viewMo10924catch);
        this.f9170case = true;
        this.f9174new.show();
        m10937package();
    }

    /* renamed from: for, reason: not valid java name */
    public View m10932for() {
        return this.f9175try.getChildAt(0);
    }

    /* renamed from: goto, reason: not valid java name */
    public Window m10933goto() {
        return this.f9174new.getWindow();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m10934if() {
        this.f9174new.dismiss();
        uv0.m8678native(this, "popup dismiss");
    }

    /* renamed from: import */
    public void mo10916import() {
    }

    /* renamed from: native, reason: not valid java name */
    public void m10935native(boolean z) {
        if (z) {
            m10927default(this.f9173if, (int) (this.f9172for * 0.85f));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Context m10936new() {
        return this.f9174new.getContext();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        mo10915do();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || i != 4) {
            return false;
        }
        m10925class();
        return false;
    }

    /* renamed from: package, reason: not valid java name */
    public void m10937package() {
        uv0.m8678native(this, "popup show");
    }

    /* renamed from: public, reason: not valid java name */
    public void m10938public(boolean z) {
        this.f9175try.setFitsSystemWindows(z);
    }

    /* renamed from: return, reason: not valid java name */
    public void m10939return(int i) {
        Window window = this.f9174new.getWindow();
        if (window != null) {
            window.setGravity(i);
        }
        if (i == 17) {
            m10929extends((int) (this.f9173if * 0.7f));
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.f9174new.setOnDismissListener(new DialogInterfaceOnDismissListenerC0019do(onDismissListener));
        uv0.m8678native(this, "popup setOnDismissListener");
    }

    public void setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        this.f9174new.setOnKeyListener(new Cif(onKeyListener));
        uv0.m8678native(this, "popup setOnKeyListener");
    }

    /* renamed from: static, reason: not valid java name */
    public void m10940static(boolean z) {
        if (z) {
            m10927default(this.f9173if, this.f9172for / 2);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m10941super(boolean z) {
        this.f9174new.setCanceledOnTouchOutside(z);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m10942switch(int i) {
        m10927default(0, i);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m10943throw(View view) {
        this.f9175try.removeAllViews();
        this.f9175try.addView(view);
    }

    /* renamed from: throws, reason: not valid java name */
    public void m10944throws(boolean z) {
        this.f9170case = z;
    }

    /* renamed from: try, reason: not valid java name */
    public ViewGroup m10945try() {
        return this.f9175try;
    }

    /* renamed from: while */
    public void mo10920while(V v) {
    }
}
