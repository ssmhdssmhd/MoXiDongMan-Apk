package com.wsw.cospa.utils.notchtools.helper;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.gyf.immersionbar.Cnew;

/* renamed from: com.wsw.cospa.utils.notchtools.helper.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static int f22705do = -1;

    /* renamed from: if, reason: not valid java name */
    public static boolean f22706if;

    /* renamed from: com.wsw.cospa.utils.notchtools.helper.do$do, reason: invalid class name and collision with other inner class name */
    public class ViewOnSystemUiVisibilityChangeListenerC0234do implements View.OnSystemUiVisibilityChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Window f22707do;

        public ViewOnSystemUiVisibilityChangeListenerC0234do(Window window) {
            this.f22707do = window;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if (i == 0) {
                Cdo.m27018try(this.f22707do, false);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static ViewGroup m27014do(Window window) {
        View decorView = window.getDecorView();
        if (decorView == null) {
            return null;
        }
        return (ViewGroup) decorView.findViewWithTag(com.wsw.cospa.utils.notchtools.Cdo.f22687try);
    }

    /* renamed from: for, reason: not valid java name */
    public static ViewGroup m27015for(Window window) {
        ViewGroup viewGroupM27014do = m27014do(window);
        if (viewGroupM27014do == null) {
            return null;
        }
        if (viewGroupM27014do.getChildCount() > 0) {
            viewGroupM27014do.removeAllViews();
        }
        return viewGroupM27014do;
    }

    /* renamed from: if, reason: not valid java name */
    public static int m27016if(Context context) {
        int identifier;
        int i = f22705do;
        if (i != -1) {
            return i;
        }
        if (i <= 0 && (identifier = context.getResources().getIdentifier(Cnew.f18143for, "dimen", "android")) > 0) {
            f22705do = context.getResources().getDimensionPixelSize(identifier);
        }
        return f22705do;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m27017new(Window window) {
        ViewGroup viewGroupM27015for = m27015for(window);
        if (viewGroupM27015for == null) {
            return;
        }
        View view = new View(window.getContext());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, com.wsw.cospa.utils.notchtools.Cdo.m26984goto().getNotchHeight(window)));
        view.setBackgroundColor(-16777216);
        viewGroupM27015for.addView(view);
    }

    /* renamed from: try, reason: not valid java name */
    public static void m27018try(Window window, boolean z) {
        int i;
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.flags |= 67108864;
        window.setAttributes(attributes);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 16) {
            i = 8192;
            if (!f22706if) {
                i = 8706;
            }
        } else {
            i = 0;
        }
        if (i2 >= 19) {
            i |= 4096;
        }
        window.getDecorView().setSystemUiVisibility(i);
        if (z) {
            window.getDecorView().setOnSystemUiVisibilityChangeListener(new ViewOnSystemUiVisibilityChangeListenerC0234do(window));
        }
    }
}
