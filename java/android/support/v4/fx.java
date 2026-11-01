package android.support.v4;

import android.view.View;

/* loaded from: classes.dex */
public abstract class fx implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public static boolean f2012do = true;

    /* renamed from: if, reason: not valid java name */
    private static final Runnable f2013if = new Runnable() { // from class: android.support.v4.ex
        @Override // java.lang.Runnable
        public final void run() {
            fx.f2012do = true;
        }
    };

    /* renamed from: if, reason: not valid java name */
    public abstract void mo2448if(View view);

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (f2012do) {
            f2012do = false;
            view.post(f2013if);
            mo2448if(view);
        }
    }
}
