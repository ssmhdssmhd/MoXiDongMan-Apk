package com.wsw.cospa.model;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.cq;
import android.support.v4.l22;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.wq;
import android.util.ArrayMap;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import io.reactivex.Ctry;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public class SearchComicModel {

    /* renamed from: break, reason: not valid java name */
    private int f22279break;

    /* renamed from: catch, reason: not valid java name */
    private int f22281catch;

    /* renamed from: class, reason: not valid java name */
    private cq f22282class;

    /* renamed from: const, reason: not valid java name */
    private OnSearchListener f22283const;

    /* renamed from: do, reason: not valid java name */
    private BaseActivity f22284do;

    /* renamed from: else, reason: not valid java name */
    private int f22285else;

    /* renamed from: for, reason: not valid java name */
    private ExecutorService f22287for;

    /* renamed from: new, reason: not valid java name */
    private Ctry f22290new;

    /* renamed from: super, reason: not valid java name */
    private boolean f22291super;

    /* renamed from: try, reason: not valid java name */
    private long f22293try;

    /* renamed from: if, reason: not valid java name */
    private Handler f22289if = new Handler(Looper.getMainLooper());

    /* renamed from: case, reason: not valid java name */
    private List<Cfor> f22280case = new ArrayList();

    /* renamed from: goto, reason: not valid java name */
    private int f22288goto = 0;

    /* renamed from: this, reason: not valid java name */
    private Map<String, String> f22292this = new ArrayMap();

    /* renamed from: final, reason: not valid java name */
    private Map<String, Map<String, String>> f22286final = new ArrayMap();

    public interface OnSearchListener {
        Boolean checkIsExist(SearchComicBean searchComicBean);

        int getItemCount();

        void loadMoreFinish(Boolean bool);

        void loadMoreSearchBook(List<SearchComicBean> list);

        void refreshFinish(Boolean bool);

        void refreshSearchBook();

        void searchBookError(Boolean bool);
    }

    /* renamed from: com.wsw.cospa.model.SearchComicModel$do, reason: invalid class name */
    public class Cdo implements Observer<List<SearchComicBean>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ long f22294do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ long f22295for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Cfor f22296if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ String f22297new;

        public Cdo(long j, Cfor cfor, long j2, String str) {
            this.f22294do = j;
            this.f22296if = cfor;
            this.f22295for = j2;
            this.f22297new = str;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(List<SearchComicBean> list) {
            if (this.f22294do == SearchComicModel.this.f22293try) {
                SearchComicModel.m26297class(SearchComicModel.this);
                if (list.size() > 0) {
                    SearchComicModel.this.m26308import(this.f22296if.m26333for(), list.get(0).getVariable());
                    String urlNext = list.get(0).getUrlNext();
                    if (!l22.m4571return(urlNext)) {
                        SearchComicModel.this.f22292this.put(this.f22296if.m26333for(), urlNext);
                    }
                    Iterator<SearchComicBean> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().setSearchTime(((int) (System.currentTimeMillis() - this.f22295for)) / 1000);
                    }
                    if (SearchComicModel.this.f22283const.checkIsExist(list.get(0)).booleanValue()) {
                        this.f22296if.m26335new(Boolean.FALSE);
                    } else {
                        SearchComicModel.this.f22283const.loadMoreSearchBook(list);
                    }
                } else {
                    this.f22296if.m26335new(Boolean.FALSE);
                }
                SearchComicModel.this.m26314strictfp(this.f22297new, this.f22294do);
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            th.printStackTrace();
            if (SearchComicModel.this.f22291super) {
                v72.m8769if(th.getMessage());
            }
            this.f22296if.m26335new(Boolean.FALSE);
            SearchComicModel.this.m26314strictfp(this.f22297new, this.f22294do);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            SearchComicModel.this.f22282class.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.model.SearchComicModel$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: do, reason: not valid java name */
        private String f22299do;

        /* renamed from: if, reason: not valid java name */
        private Boolean f22301if;

        private Cfor() {
        }

        /* renamed from: for, reason: not valid java name */
        public String m26333for() {
            return this.f22299do;
        }

        /* renamed from: if, reason: not valid java name */
        public Boolean m26334if() {
            return this.f22301if;
        }

        /* renamed from: new, reason: not valid java name */
        public void m26335new(Boolean bool) {
            this.f22301if = bool;
        }

        /* renamed from: try, reason: not valid java name */
        public void m26336try(String str) {
            this.f22299do = str;
        }

        public /* synthetic */ Cfor(SearchComicModel searchComicModel, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.model.SearchComicModel$if, reason: invalid class name */
    public class Cif extends TypeToken<Map<String, String>> {
        public Cif() {
        }
    }

    public SearchComicModel(Activity activity, OnSearchListener onSearchListener) {
        this.f22285else = 32;
        this.f22284do = (BaseActivity) activity;
        this.f22283const = onSearchListener;
        int iM8715for = v02.m8711if(activity).m8715for(wq.f7614implements, 32);
        this.f22285else = iM8715for;
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(iM8715for);
        this.f22287for = executorServiceNewFixedThreadPool;
        this.f22290new = io.reactivex.schedulers.Cdo.m29771if(executorServiceNewFixedThreadPool);
        this.f22282class = new cq();
        m26328public(DatabaseHelper.m26016switch().e(), false);
    }

    /* renamed from: class, reason: not valid java name */
    public static /* synthetic */ int m26297class(SearchComicModel searchComicModel) {
        int i = searchComicModel.f22281catch;
        searchComicModel.f22281catch = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: default, reason: not valid java name */
    public /* synthetic */ void m26299default() {
        this.f22283const.refreshFinish(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public /* synthetic */ void m26302extends() {
        this.f22283const.loadMoreFinish(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public /* synthetic */ void m26304finally() {
        this.f22283const.loadMoreFinish(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: import, reason: not valid java name */
    public void m26308import(String str, String str2) {
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        Map<String, String> map = (Map) new Gson().fromJson(str2, new Cif().getType());
        if (this.f22286final == null) {
            this.f22286final = new ArrayMap();
        }
        if (!this.f22286final.containsKey(str) || this.f22286final.get(str) == null) {
            this.f22286final.put(str, map);
        } else {
            this.f22286final.get(str).putAll(map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public /* synthetic */ void m26310package() {
        this.f22283const.refreshFinish(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public /* synthetic */ void m26311private() {
        OnSearchListener onSearchListener = this.f22283const;
        Boolean bool = Boolean.TRUE;
        onSearchListener.refreshFinish(bool);
        this.f22283const.loadMoreFinish(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public /* synthetic */ void m26312return() {
        this.f22283const.refreshSearchBook();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public /* synthetic */ void m26313static() {
        Toast.makeText(this.f22284do, "没有选中任何图源，请去图源中选择相应的图源进行搜索！", 0).show();
        OnSearchListener onSearchListener = this.f22283const;
        Boolean bool = Boolean.TRUE;
        onSearchListener.refreshFinish(bool);
        this.f22283const.loadMoreFinish(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public synchronized void m26314strictfp(String str, long j) {
        if (j != this.f22293try) {
            return;
        }
        this.f22279break++;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.f22279break < this.f22280case.size()) {
            Cfor cfor = this.f22280case.get(this.f22279break);
            if (cfor.m26334if().booleanValue()) {
                Cwhile.m26502catch().m26518while(str, this.f22288goto, cfor.m26333for(), this.f22286final.get(cfor.m26333for()), this.f22292this.get(cfor.m26333for())).subscribeOn(this.f22290new).observeOn(io.reactivex.android.schedulers.Cdo.m29358for()).subscribe(new Cdo(j, cfor, jCurrentTimeMillis, str));
            } else {
                m26314strictfp(str, j);
            }
        } else if (this.f22279break < (this.f22280case.size() + this.f22285else) - 1) {
            this.f22289if.post(new Runnable() { // from class: android.support.v4.nt1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4326do.m26310package();
                }
            });
        } else if (this.f22281catch != 0 || this.f22283const.getItemCount() != 0) {
            if (this.f22288goto == 1) {
                this.f22289if.post(new Runnable() { // from class: android.support.v4.kt1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3483do.m26299default();
                    }
                });
            }
            Iterator<Cfor> it = this.f22280case.iterator();
            while (it.hasNext()) {
                if (it.next().f22301if.booleanValue()) {
                    this.f22289if.post(new Runnable() { // from class: android.support.v4.lt1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f3765do.m26302extends();
                        }
                    });
                    return;
                }
            }
            this.f22289if.post(new Runnable() { // from class: android.support.v4.it1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2878do.m26304finally();
                }
            });
        } else if (this.f22288goto == 1) {
            this.f22289if.post(new Runnable() { // from class: android.support.v4.ht1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2507do.m26316switch();
                }
            });
        } else {
            this.f22289if.post(new Runnable() { // from class: android.support.v4.gt1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2244do.m26319throws();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: switch, reason: not valid java name */
    public /* synthetic */ void m26316switch() {
        this.f22283const.searchBookError(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public /* synthetic */ void m26319throws() {
        this.f22283const.searchBookError(Boolean.FALSE);
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m26322abstract() {
        m26329transient();
        this.f22287for.shutdown();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m26323continue(String str, long j, Boolean bool) {
        if (j != this.f22293try) {
            return;
        }
        if (!bool.booleanValue()) {
            this.f22288goto++;
        }
        if (this.f22288goto == 0) {
            this.f22288goto = 1;
        }
        if (this.f22288goto == 1) {
            this.f22289if.post(new Runnable() { // from class: android.support.v4.ft1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1991do.m26312return();
                }
            });
        }
        if (this.f22280case.size() == 0) {
            this.f22289if.post(new Runnable() { // from class: android.support.v4.mt1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4028do.m26313static();
                }
            });
            return;
        }
        int i = 0;
        this.f22281catch = 0;
        this.f22279break = -1;
        if (this.f22291super) {
            m26314strictfp(str, j);
            return;
        }
        if (this.f22280case.size() <= 1) {
            m26314strictfp(str, j);
            return;
        }
        if (this.f22280case.size() <= this.f22285else) {
            while (i < this.f22280case.size()) {
                m26314strictfp(str, j);
                i++;
            }
        } else {
            while (i < this.f22285else) {
                m26314strictfp(str, j);
                i++;
            }
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public void m26324implements(TextView textView, ComicSourceBean comicSourceBean) {
        if (wq.w0.equals(textView.getText().toString().trim())) {
            this.f22291super = false;
            m26328public(DatabaseHelper.m26016switch().e(), this.f22291super);
        } else if (comicSourceBean != null) {
            this.f22291super = true;
            ArrayList arrayList = new ArrayList();
            arrayList.add(comicSourceBean);
            m26328public(arrayList, this.f22291super);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m26325interface(int i) {
        this.f22288goto = i;
    }

    /* renamed from: native, reason: not valid java name */
    public int m26326native() {
        return this.f22288goto;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m26327protected(long j) {
        this.f22293try = j;
    }

    /* renamed from: public, reason: not valid java name */
    public void m26328public(@NonNull List<ComicSourceBean> list, boolean z) {
        this.f22280case.clear();
        this.f22291super = z;
        Cdo cdo = null;
        if (z) {
            for (ComicSourceBean comicSourceBean : list) {
                Cfor cfor = new Cfor(this, cdo);
                cfor.m26336try(comicSourceBean.getBookSourceUrl());
                cfor.m26335new(Boolean.TRUE);
                this.f22280case.add(cfor);
            }
            return;
        }
        for (ComicSourceBean comicSourceBean2 : list) {
            if (comicSourceBean2.getEnable()) {
                Cfor cfor2 = new Cfor(this, cdo);
                cfor2.m26336try(comicSourceBean2.getBookSourceUrl());
                cfor2.m26335new(Boolean.TRUE);
                this.f22280case.add(cfor2);
            }
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public void m26329transient() {
        this.f22282class.dispose();
        this.f22282class = new cq();
        this.f22289if.post(new Runnable() { // from class: android.support.v4.jt1
            @Override // java.lang.Runnable
            public final void run() {
                this.f3221do.m26311private();
            }
        });
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m26330volatile() {
        this.f22282class.dispose();
        this.f22282class = new cq();
        this.f22288goto = 0;
        Iterator<Cfor> it = this.f22280case.iterator();
        while (it.hasNext()) {
            it.next().m26335new(Boolean.TRUE);
        }
    }
}
