package com.wsw.cospa.model;

import android.support.v4.wq;
import android.text.TextUtils;
import com.google.gson.GsonBuilder;
import com.sun.script.javascript.RhinoScriptEngine;
import com.uc.crashsdk.export.LogType;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.CookieBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.service.CheckSourceService;
import com.wsw.cospa.utils.Cimplements;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeYCYJS;
import io.reactivex.Ctry;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.script.ScriptEngine;
import javax.script.SimpleBindings;
import org.apache.commons.lang3.Cclass;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* renamed from: com.wsw.cospa.model.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: new, reason: not valid java name */
    public static final ScriptEngine f22360new = new RhinoScriptEngine();

    /* renamed from: do, reason: not valid java name */
    private ComicSourceBean f22361do;

    /* renamed from: for, reason: not valid java name */
    private CheckSourceService.CheckSourceListener f22362for;

    /* renamed from: if, reason: not valid java name */
    private Ctry f22363if;

    /* renamed from: com.wsw.cospa.model.if$do, reason: invalid class name */
    public class Cdo implements Observer<List<SearchComicBean>> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(List<SearchComicBean> list) {
            if (list.isEmpty()) {
                Cif.this.m26409else();
            } else {
                Cif.this.m26407class();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Cif.this.m26409else();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Cif.this.f22362for.compositeDisposableAdd(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.model.if$if, reason: invalid class name and collision with other inner class name */
    public class C0224if implements Observer<List<SearchComicBean>> {
        public C0224if() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(List<SearchComicBean> list) {
            if (list.isEmpty()) {
                Cif.this.m26406catch();
            } else {
                Cif.this.m26407class();
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Cif.this.m26406catch();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            Cif.this.f22362for.compositeDisposableAdd(disposable);
        }
    }

    public Cif(ComicSourceBean comicSourceBean, Ctry ctry, CheckSourceService.CheckSourceListener checkSourceListener) {
        this.f22361do = comicSourceBean;
        this.f22363if = ctry;
        this.f22362for = checkSourceListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public /* synthetic */ ObservableSource m26404break(String str) throws Exception {
        return Cwhile.m26502catch().m26513case(str, 1, this.f22361do.getBookSourceUrl(), null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public void m26406catch() {
        this.f22361do.addGroup("失效");
        this.f22361do.setEnable(false);
        this.f22361do.setSerialNumber(this.f22362for.getCheckIndex() + FastDtoa.kTen4);
        Cnew.m26132case().m26138try().m3139goto().insertOrReplace(this.f22361do);
        this.f22362for.nextCheck();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public void m26407class() {
        if (this.f22361do.containsGroup("失效")) {
            this.f22361do.removeGroup("失效");
            Cnew.m26132case().m26138try().m3139goto().insertOrReplace(this.f22361do);
        }
        this.f22362for.nextCheck();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public void m26409else() {
        if (TextUtils.isEmpty(this.f22361do.getRuleFindUrl())) {
            m26406catch();
        } else {
            io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.jl
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    this.f3133do.m26414this(observableEmitter);
                }
            }).flatMap(new Function() { // from class: android.support.v4.kl
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    return this.f3405do.m26404break((String) obj);
                }
            }).subscribeOn(this.f22363if).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).timeout(60L, TimeUnit.SECONDS).subscribe(new C0224if());
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private Object m26411goto(String str, String str2) throws Exception {
        SimpleBindings simpleBindings = new SimpleBindings();
        simpleBindings.put(LogType.JAVA_TYPE, (Object) new AnalyzeRule());
        simpleBindings.put("baseUrl", (Object) str2);
        new AnalyzeYCYJS().setBindings(simpleBindings);
        return f22360new.eval(str, simpleBindings);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public /* synthetic */ void m26414this(ObservableEmitter observableEmitter) throws Exception {
        String[] strArrSplit;
        String ruleFindUrl = this.f22361do.getRuleFindUrl();
        if (TextUtils.isEmpty(ruleFindUrl)) {
            return;
        }
        if (ruleFindUrl.startsWith("<js>")) {
            String strSubstring = ruleFindUrl.substring(4, ruleFindUrl.lastIndexOf("<"));
            CookieBean cookieBeanLoad = Cnew.m26132case().m26138try().m3142this().load(this.f22361do.getBookSourceUrl());
            HashMap map = new HashMap();
            if (cookieBeanLoad == null || Cclass.A(cookieBeanLoad.getVariableStr())) {
                strArrSplit = Cimplements.m26920do(strSubstring, this.f22361do.getBookSourceUrl()).toString().split("(&&|\n)+");
            } else {
                map.put(wq.m0, cookieBeanLoad.getVariableStr());
                strArrSplit = Cimplements.m26921if(strSubstring, this.f22361do.getBookSourceUrl(), new GsonBuilder().disableHtmlEscaping().create().toJson(map)).toString().split("(&&|\n)+");
            }
        } else {
            strArrSplit = ruleFindUrl.split("(&&|\n)+");
        }
        observableEmitter.onNext(strArrSplit[0].split("::")[1]);
        observableEmitter.onComplete();
    }

    /* renamed from: const, reason: not valid java name */
    public void m26416const() {
        if (TextUtils.isEmpty(this.f22361do.getRuleSearchUrl())) {
            m26409else();
        } else {
            Cwhile.m26502catch().m26518while("你", 1, this.f22361do.getBookSourceUrl(), null, null).subscribeOn(this.f22363if).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).timeout(60L, TimeUnit.SECONDS).subscribe(new Cdo());
        }
    }
}
