package com.wsw.cospa;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.jh0;
import android.support.v4.jp1;
import android.support.v4.js;
import android.support.v4.v02;
import android.support.v4.vv0;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.multidex.MultiDex;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.listener.OnGetOaidListener;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.model.Csuper;
import com.wsw.cospa.utils.Cthrow;
import com.wsw.cospa.utils.DocumentFile;

/* loaded from: classes.dex */
public class CartoonApplication extends Application {

    /* renamed from: break, reason: not valid java name */
    public static final int f20816break = 2;

    /* renamed from: case, reason: not valid java name */
    private static CartoonApplication f20817case = null;

    /* renamed from: catch, reason: not valid java name */
    public static final int f20818catch = 1;

    /* renamed from: class, reason: not valid java name */
    public static final int f20819class = 3;

    /* renamed from: else, reason: not valid java name */
    public static final int f20820else = 1;

    /* renamed from: goto, reason: not valid java name */
    public static final int f20821goto = 2;

    /* renamed from: new, reason: not valid java name */
    private static final String f20822new = "CartoonApplication";

    /* renamed from: this, reason: not valid java name */
    public static final String f20823this = "shelf_mode_key";

    /* renamed from: try, reason: not valid java name */
    private static Context f20824try;

    /* renamed from: do, reason: not valid java name */
    private SharedPreferences f20825do;

    /* renamed from: for, reason: not valid java name */
    private DocumentFile f20826for;

    /* renamed from: if, reason: not valid java name */
    private SharedPreferences f20827if;

    /* renamed from: com.wsw.cospa.CartoonApplication$do, reason: invalid class name */
    public class Cdo implements OnGetOaidListener {
        public Cdo() {
        }

        @Override // com.umeng.commonsdk.listener.OnGetOaidListener
        public void onGetOaid(String str) {
            vv0.m8965if("mob", "oaid: " + str);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Context m24690do() {
        return f20824try;
    }

    /* renamed from: for, reason: not valid java name */
    public static SharedPreferences m24691for() {
        return m24693try().f20827if;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m24692goto() {
        return (m24690do().getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* renamed from: try, reason: not valid java name */
    public static CartoonApplication m24693try() {
        return f20817case;
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    /* renamed from: case, reason: not valid java name */
    public void m24694case() {
        String strM8719try = v02.m8711if(this).m8719try(wq.f7610finally, "");
        if (TextUtils.isEmpty(strM8719try)) {
            strM8719try = wq.f7618native;
        }
        this.f20826for = Csuper.m26461class(this, strM8719try);
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m24695else() {
        return v02.m8711if(this).m8713do("nightTheme", false);
    }

    /* renamed from: if, reason: not valid java name */
    public SharedPreferences m24696if() {
        return this.f20825do;
    }

    /* renamed from: new, reason: not valid java name */
    public DocumentFile m24697new() {
        if (this.f20826for == null) {
            m24694case();
        }
        return this.f20826for;
    }

    @Override // android.app.Application
    public void onCreate() throws NoSuchFieldException, NoSuchMethodException, SecurityException {
        super.onCreate();
        f20817case = this;
        f20824try = getApplicationContext();
        registerActivityLifecycleCallbacks(new com.wsw.cospa.Cdo());
        UMConfigure.preInit(this, wq.f7606do, "Umeng");
        MobclickAgent.setPageCollectionMode(MobclickAgent.PageMode.AUTO);
        UMConfigure.setProcessEvent(true);
        UMConfigure.getOaid(f20824try, new Cdo());
        Cnew.m26132case().m26134else(this);
        this.f20825do = getSharedPreferences("CONFIG", 0);
        this.f20827if = getSharedPreferences("COOKIE", 0);
        js.m4086case().m4095goto(this);
        jp1.x(io.reactivex.internal.functions.Cdo.m29427goto());
        wi0.m9160do();
        Cthrow.m27123do(this);
        if (v02.m8711if(this).m8713do("systemMode", false)) {
            if (m24692goto()) {
                AppCompatDelegate.setDefaultNightMode(2);
                return;
            } else {
                AppCompatDelegate.setDefaultNightMode(1);
                return;
            }
        }
        if (m24695else()) {
            AppCompatDelegate.setDefaultNightMode(2);
        } else {
            AppCompatDelegate.setDefaultNightMode(1);
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        jh0.m3882do(this).m11057for();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        jh0.m3882do(this).onTrimMemory(i);
    }
}
