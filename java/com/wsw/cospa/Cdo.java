package com.wsw.cospa;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.b0;
import android.support.v4.d72;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wq;
import com.bumptech.glide.Glide;
import com.wsw.cospa.Cdo;
import com.wsw.cospa.utils.Cnative;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;

/* renamed from: com.wsw.cospa.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo implements Application.ActivityLifecycleCallbacks {

    /* renamed from: do, reason: not valid java name */
    private int f22156do = 0;

    /* renamed from: if, reason: not valid java name */
    private boolean f22157if = true;

    /* renamed from: com.wsw.cospa.do$do, reason: invalid class name and collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0221do implements Observer<String> {
        public C0221do() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(String str) {
            v72.m8769if("清除缓存成功！");
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            v72.m8769if(th.getMessage());
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public static /* synthetic */ void m26141for(Activity activity, ObservableEmitter observableEmitter) throws Exception {
        Glide.m11040new(activity).m11059if();
        if (Environment.getExternalStorageState().equals("mounted")) {
            Cnative.m26963catch(activity.getExternalCacheDir());
        }
        Cnative.m26963catch(activity.getFilesDir());
        observableEmitter.onNext("");
    }

    /* renamed from: if, reason: not valid java name */
    public void m26142if(final Activity activity) {
        Glide.m11040new(activity).m11057for();
        Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.x2
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Cdo.m26141for(activity, observableEmitter);
            }
        }).compose(b0.f302do).subscribe(new C0221do());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("======>onActivityCreated ");
        sb.append(activity.getLocalClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        StringBuilder sb = new StringBuilder();
        sb.append("======>onActivityDestroyed ");
        sb.append(activity.getLocalClassName());
        boolean zM8713do = v02.m8711if(activity).m8713do(wq.A, false);
        if (activity.getLocalClassName().equals("activity.HomeActivity")) {
            if (zM8713do) {
                m26142if(activity);
            }
            d72.m1159goto(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        StringBuilder sb = new StringBuilder();
        sb.append("======>onActivityPaused ");
        sb.append(activity.getLocalClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        StringBuilder sb = new StringBuilder();
        sb.append("======>onActivityResumed ");
        sb.append(activity.getLocalClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        sb.append("======>onActivitySaveInstanceState ");
        sb.append(activity.getLocalClassName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        StringBuilder sb = new StringBuilder();
        sb.append("======>onActivityStarted ");
        sb.append(activity.getLocalClassName());
        this.f22156do++;
        if (this.f22157if) {
            this.f22157if = false;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        StringBuilder sb = new StringBuilder();
        sb.append("======>onActivityStopped ");
        sb.append(activity.getLocalClassName());
        int i = this.f22156do - 1;
        this.f22156do = i;
        if (i == 0) {
            this.f22157if = true;
        }
    }
}
