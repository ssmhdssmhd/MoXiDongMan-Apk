package com.wsw.cospa.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.support.v4.b0;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.w2;
import android.support.v4.wq;
import android.support.v4.z2;
import android.support.v4.z72;
import com.google.gson.Gson;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.HomeActivity;
import com.wsw.cospa.bean.AppUpdateInfo;
import com.wsw.cospa.utils.Celse;
import com.wsw.cospa.utils.DialogTool;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.utils.analyzeUrl.impl.IHttpGetApi;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import retrofit2.Response;

/* renamed from: com.wsw.cospa.utils.else, reason: invalid class name */
/* loaded from: classes2.dex */
public class Celse {

    /* renamed from: com.wsw.cospa.utils.else$do, reason: invalid class name */
    public class Cdo implements DialogTool.DialogOptCb {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ HomeActivity f22629do;

        public Cdo(HomeActivity homeActivity) {
            this.f22629do = homeActivity;
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
            Celse.m26863break(this.f22629do);
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
            Celse.m26863break(this.f22629do);
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            Celse.m26863break(this.f22629do);
        }
    }

    /* renamed from: com.wsw.cospa.utils.else$for, reason: invalid class name */
    public class Cfor implements DialogTool.DialogOptCb {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ HomeActivity f22630do;

        public Cfor(HomeActivity homeActivity) {
            this.f22630do = homeActivity;
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
            intent.setData(Uri.parse("package:" + this.f22630do.getPackageName()));
            this.f22630do.startActivity(intent);
        }
    }

    /* renamed from: com.wsw.cospa.utils.else$if, reason: invalid class name */
    public class Cif implements DialogTool.DialogOptCb {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ HomeActivity f22631do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f22632if;

        public Cif(HomeActivity homeActivity, String str) {
            this.f22631do = homeActivity;
            this.f22632if = str;
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m26863break(HomeActivity homeActivity) {
        if (Build.VERSION.SDK_INT < 30 || Environment.isExternalStorageManager()) {
            return;
        }
        DialogTool.o(homeActivity, new DialogTool.Cnew("Android 11文件权限提示", null, "因Android 11采用沙盒存储模式，异次元需要获取文件存储权限才能下载和备份漫画以及，请授予存储权限，以免出现无法备份和下载的问题"), new DialogTool.Ctry("授予权限", null), new Cfor(homeActivity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public static /* synthetic */ ObservableSource m26864case(boolean z, Response response) throws Exception {
        return m26873this((String) response.body(), z);
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m26865catch(HomeActivity homeActivity) {
        DialogTool.o(homeActivity, new DialogTool.Cnew("软件提示", null, homeActivity.getString(R.string.arg_res_0x7f110022)), new DialogTool.Ctry("确认", null), new Cdo(homeActivity));
    }

    /* renamed from: class, reason: not valid java name */
    public static void m26866class(HomeActivity homeActivity) {
        String strM10084do = z72.m10084do(homeActivity);
        String strM8719try = v02.m8711if(homeActivity).m8719try(wq.d, strM10084do);
        if (v02.m8711if(homeActivity).m8713do(wq.c, true) || !strM10084do.equals(strM8719try)) {
            DialogTool.o(homeActivity, new DialogTool.Cnew("版本提示", String.format(homeActivity.getString(R.string.arg_res_0x7f110110), w2.m9018for(homeActivity)), homeActivity.getString(R.string.arg_res_0x7f11010f)), new DialogTool.Ctry("确认", null), new Cif(homeActivity, strM10084do));
        } else {
            m26863break(homeActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public static /* synthetic */ void m26868else(HomeActivity homeActivity, boolean z, AppUpdateInfo appUpdateInfo) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: goto, reason: not valid java name */
    public static /* synthetic */ void m26870goto(String str, boolean z, ObservableEmitter observableEmitter) throws Exception {
        try {
            AppUpdateInfo appUpdateInfo = (AppUpdateInfo) new Gson().fromJson(str, AppUpdateInfo.class);
            if (appUpdateInfo != null) {
                observableEmitter.onNext(appUpdateInfo);
            } else if (z) {
                Looper.prepare();
                v72.m8769if("当前已是最新版本！");
                Looper.loop();
            }
            observableEmitter.onComplete();
        } catch (Exception e) {
            observableEmitter.onError(e);
            observableEmitter.onComplete();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m26872new(Context context, String str) {
        z2.m10032import(context, str);
    }

    /* renamed from: this, reason: not valid java name */
    private static Cnew<AppUpdateInfo> m26873this(final String str, final boolean z) {
        return Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.l6
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                Celse.m26870goto(str, z, observableEmitter);
            }
        });
    }

    /* renamed from: try, reason: not valid java name */
    public static void m26874try(final HomeActivity homeActivity, final boolean z) {
        ((IHttpGetApi) com.wsw.cospa.model.impl.Cif.m26424break().m26440class("https://yiciyuan.coding.net/p/ycy/d/ycy/").create(IHttpGetApi.class)).getWebContent("git/raw/master/appUpdate", AnalyzeHeaders.getMap(null)).flatMap(new Function() { // from class: android.support.v4.n6
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return Celse.m26864case(z, (Response) obj);
            }
        }).compose(b0.f302do).subscribe(new Consumer() { // from class: android.support.v4.m6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Celse.m26868else(homeActivity, z, (AppUpdateInfo) obj);
            }
        });
    }
}
