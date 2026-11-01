package com.wsw.cospa.utils.notchtools;

import android.app.Activity;
import android.os.Build;
import android.support.v4.bf2;
import android.support.v4.c01;
import android.support.v4.dp;
import android.support.v4.hb1;
import android.support.v4.pz;
import android.support.v4.sk0;
import android.support.v4.y71;
import android.view.Window;
import com.wsw.cospa.utils.notchtools.core.INotchSupport;
import com.wsw.cospa.utils.notchtools.core.OnNotchCallBack;
import com.wsw.cospa.utils.notchtools.helper.ThreadUtils;

/* renamed from: com.wsw.cospa.utils.notchtools.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo implements INotchSupport {

    /* renamed from: case, reason: not valid java name */
    private static final int f22684case = Build.VERSION.SDK_INT;

    /* renamed from: else, reason: not valid java name */
    public static final int f22685else = 28;

    /* renamed from: new, reason: not valid java name */
    private static Cdo f22686new = null;

    /* renamed from: try, reason: not valid java name */
    public static final String f22687try = "notch_container";

    /* renamed from: do, reason: not valid java name */
    private INotchSupport f22688do = null;

    /* renamed from: for, reason: not valid java name */
    private boolean f22689for;

    /* renamed from: if, reason: not valid java name */
    private boolean f22690if;

    /* renamed from: com.wsw.cospa.utils.notchtools.do$do, reason: invalid class name and collision with other inner class name */
    public class RunnableC0233do implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f22691do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ OnNotchCallBack f22693if;

        public RunnableC0233do(Activity activity, OnNotchCallBack onNotchCallBack) {
            this.f22691do = activity;
            this.f22693if = onNotchCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Cdo.this.f22688do == null) {
                Cdo.this.m26983for(this.f22691do.getWindow());
            }
            if (Cdo.this.f22688do != null) {
                Cdo.this.f22688do.fullScreenDontUseStatusForLandscape(this.f22691do, this.f22693if);
            }
        }
    }

    private Cdo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m26983for(Window window) {
        if (this.f22688do != null) {
            return;
        }
        int i = f22684case;
        if (i < 26) {
            this.f22688do = new dp();
            return;
        }
        if (i >= 28) {
            if (i >= 28) {
                this.f22688do = new hb1();
                return;
            }
            return;
        }
        pz pzVarM6258do = pz.m6258do();
        if (pzVarM6258do.m6261for()) {
            this.f22688do = new sk0();
            return;
        }
        if (pzVarM6258do.m6262new()) {
            this.f22688do = new c01();
            return;
        }
        if (pzVarM6258do.m6260case()) {
            this.f22688do = new bf2();
        } else if (pzVarM6258do.m6263try()) {
            this.f22688do = new y71();
        } else {
            this.f22688do = new dp();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Cdo m26984goto() {
        if (f22686new == null) {
            synchronized (Cdo.class) {
                if (f22686new == null) {
                    f22686new = new Cdo();
                }
            }
        }
        return f22686new;
    }

    /* renamed from: case, reason: not valid java name */
    public void m26986case(Activity activity) {
        fullScreenDontUseStatusForPortrait(activity, null);
    }

    /* renamed from: else, reason: not valid java name */
    public void m26987else(Activity activity) {
        fullScreenUseStatus(activity, null);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenDontUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        if (this.f22688do == null) {
            m26983for(activity.getWindow());
        }
        INotchSupport iNotchSupport = this.f22688do;
        if (iNotchSupport != null) {
            iNotchSupport.fullScreenDontUseStatus(activity, onNotchCallBack);
        }
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenDontUseStatusForLandscape(Activity activity, OnNotchCallBack onNotchCallBack) {
        ThreadUtils.m27011throw(new RunnableC0233do(activity, onNotchCallBack));
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenDontUseStatusForPortrait(Activity activity, OnNotchCallBack onNotchCallBack) {
        fullScreenDontUseStatus(activity, onNotchCallBack);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public void fullScreenUseStatus(Activity activity, OnNotchCallBack onNotchCallBack) {
        if (this.f22688do == null) {
            m26983for(activity.getWindow());
        }
        INotchSupport iNotchSupport = this.f22688do;
        if (iNotchSupport != null) {
            iNotchSupport.fullScreenUseStatus(activity, onNotchCallBack);
        }
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public int getNotchHeight(Window window) {
        if (this.f22688do == null) {
            m26983for(window);
        }
        INotchSupport iNotchSupport = this.f22688do;
        if (iNotchSupport == null) {
            return 0;
        }
        return iNotchSupport.getNotchHeight(window);
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public int getStatusHeight(Window window) {
        return com.wsw.cospa.utils.notchtools.helper.Cdo.m27016if(window.getContext());
    }

    @Override // com.wsw.cospa.utils.notchtools.core.INotchSupport
    public boolean isNotchScreen(Window window) {
        if (!this.f22690if) {
            if (this.f22688do == null) {
                m26983for(window);
            }
            INotchSupport iNotchSupport = this.f22688do;
            if (iNotchSupport == null) {
                this.f22690if = true;
                this.f22689for = false;
            } else {
                this.f22689for = iNotchSupport.isNotchScreen(window);
            }
        }
        return this.f22689for;
    }

    /* renamed from: new, reason: not valid java name */
    public void m26988new(Activity activity) {
        fullScreenDontUseStatus(activity, null);
    }

    /* renamed from: this, reason: not valid java name */
    public Cdo m26989this(boolean z) {
        com.wsw.cospa.utils.notchtools.helper.Cdo.f22706if = z;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public void m26990try(Activity activity) {
        fullScreenDontUseStatusForLandscape(activity, null);
    }
}
