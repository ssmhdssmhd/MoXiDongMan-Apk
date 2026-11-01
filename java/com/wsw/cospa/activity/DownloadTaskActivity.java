package com.wsw.cospa.activity;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.ep1;
import android.support.v4.gp1;
import android.support.v4.ix1;
import android.support.v4.lm1;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.r20;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.xh1;
import android.support.v4.y8;
import android.support.v4.z90;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.DownloadTaskAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.event.DownloadComicMessageObserver;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.model.Cfinal;
import com.wsw.cospa.model.Cthrow;
import com.wsw.cospa.service.DownloadService;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DocumentFile;
import com.wsw.cospa.widget.scroller.FastScrollRecyclerView;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class DownloadTaskActivity extends BaseActivity implements OnItemClickListener, OnLongItemClickListener, DownloadTaskAdapter.OnCheckedChangeListener, DownloadTaskAdapter.OnRemoveSuccessListener, View.OnClickListener, DownloadTaskAdapter.OnDownloadCompleteListener, DownloadComicMessageObserver {

    /* renamed from: break, reason: not valid java name */
    private Cthrow f21071break;

    /* renamed from: catch, reason: not valid java name */
    private ComicInfoBean f21072catch;

    /* renamed from: class, reason: not valid java name */
    private String f21073class;

    /* renamed from: const, reason: not valid java name */
    private String f21074const;

    @BindView(R.id.arg_res_0x7f09012e)
    public LinearLayout deleteTaskView;

    /* renamed from: final, reason: not valid java name */
    private ServiceConnection f21075final;

    /* renamed from: goto, reason: not valid java name */
    private DownloadTaskAdapter f21076goto;

    /* renamed from: import, reason: not valid java name */
    private xh1 f21077import;

    @BindView(R.id.arg_res_0x7f090298)
    public FloatingActionButton mActionButton;

    @BindView(R.id.arg_res_0x7f0902a4)
    public FastScrollRecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f0903cf)
    public LinearLayout startOrPauseView;

    /* renamed from: super, reason: not valid java name */
    private DownloadService f21078super;

    /* renamed from: this, reason: not valid java name */
    private LinearLayoutManager f21079this;

    /* renamed from: throw, reason: not valid java name */
    private boolean f21080throw;

    @BindView(R.id.arg_res_0x7f090478)
    public TextView tvDeleteTask;

    @BindView(R.id.arg_res_0x7f090481)
    public TextView tvDownloadTxt;

    @BindView(R.id.arg_res_0x7f0904af)
    public TextView tvSelectTask;

    @BindView(R.id.arg_res_0x7f0904a2)
    public TextView tv_pause_all;

    /* renamed from: while, reason: not valid java name */
    private boolean f21081while;

    /* renamed from: com.wsw.cospa.activity.DownloadTaskActivity$do, reason: invalid class name */
    public class Cdo extends bz1<List<Task>> {
        public Cdo() {
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onError(Throwable th) {
            super.onError(th);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            DownloadTaskActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<Task> list) {
            ArrayList arrayList = new ArrayList();
            for (Task task : list) {
                if (task.isFinish()) {
                    arrayList.add(task);
                }
            }
            if (list.size() <= 0) {
                DownloadTaskActivity.this.startOrPauseView.setVisibility(8);
            } else if (arrayList.size() < list.size()) {
                DownloadTaskActivity.this.f21080throw = false;
                DownloadTaskActivity.this.startOrPauseView.setVisibility(0);
            } else {
                DownloadTaskActivity.this.f21080throw = true;
                DownloadTaskActivity.this.startOrPauseView.setVisibility(8);
            }
            DownloadTaskActivity.this.f21076goto.refresh(list);
            DownloadTaskActivity.this.m25011continue();
        }
    }

    /* renamed from: com.wsw.cospa.activity.DownloadTaskActivity$for, reason: invalid class name */
    public class Cfor extends bz1<ComicShelfBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ChapterListBean f21083do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f21085if;

        public Cfor(ChapterListBean chapterListBean, int i) {
            this.f21083do = chapterListBean;
            this.f21085if = i;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            comicShelfBean.setDurChapterPage(0);
            comicShelfBean.setDurChapter(Integer.valueOf(this.f21083do.getDurChapterIndex()));
            comicShelfBean.setDurChapterName(this.f21083do.getDurChapterName());
            String str = System.currentTimeMillis() + "_chapter";
            String str2 = System.currentTimeMillis() + "_shelf";
            y8.m9768for().m9771new(str2, comicShelfBean);
            y8.m9768for().m9771new(str, this.f21083do);
            ChapterBrowseActivity.x1(DownloadTaskActivity.this, str, str2, this.f21085if);
        }
    }

    /* renamed from: com.wsw.cospa.activity.DownloadTaskActivity$if, reason: invalid class name */
    public class Cif implements ServiceConnection {
        public Cif() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            DownloadTaskActivity.this.f21078super = ((DownloadService.Cif) iBinder).m26592do();
            DownloadTaskActivity.this.f21078super.m26575throw(DownloadTaskActivity.this.f21076goto.m25653case());
            ArrayList arrayList = new ArrayList();
            List<Task> listM25653case = DownloadTaskActivity.this.f21076goto.m25653case();
            for (Task task : listM25653case) {
                if (task.isFinish()) {
                    arrayList.add(task);
                }
            }
            if (arrayList.size() < listM25653case.size()) {
                DownloadTaskActivity.this.f21080throw = false;
            } else if (arrayList.size() >= listM25653case.size()) {
                DownloadTaskActivity.this.f21080throw = true;
            }
            if (DownloadTaskActivity.this.startOrPauseView.isShown()) {
                if (DownloadTaskActivity.this.f21080throw) {
                    DownloadTaskActivity.this.startOrPauseView.setVisibility(8);
                } else {
                    DownloadTaskActivity.this.startOrPauseView.setVisibility(0);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: com.wsw.cospa.activity.DownloadTaskActivity$new, reason: invalid class name */
    public class Cnew extends bz1<List<ChapterListBean>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f21087do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ List f21089if;

        public Cnew(boolean z, List list) {
            this.f21087do = z;
            this.f21089if = list;
        }

        @Override // io.reactivex.Observer
        public void onNext(List<ChapterListBean> list) {
            if (this.f21087do) {
                Cfinal.m26377case(CartoonApplication.m24693try().m24697new(), DownloadTaskActivity.this.f21072catch, DownloadTaskActivity.this.f21072catch.getOrigin());
                ep1.m1972do().m1973for(new gp1(41, DownloadTaskActivity.this.f21072catch.getNoteUrl()));
            } else {
                Cfinal.m26382else(CartoonApplication.m24693try().m24697new(), DownloadTaskActivity.this.f21072catch, this.f21089if, DownloadTaskActivity.this.f21072catch.getOrigin());
            }
            DownloadTaskActivity.this.f21077import.dismiss();
        }
    }

    /* renamed from: com.wsw.cospa.activity.DownloadTaskActivity$try, reason: invalid class name */
    public class Ctry implements ObservableOnSubscribe<List<ChapterListBean>> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f21090do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f21092if;

        public Ctry(List list, boolean z) {
            this.f21090do = list;
            this.f21092if = z;
        }

        @Override // io.reactivex.ObservableOnSubscribe
        public void subscribe(ObservableEmitter<List<ChapterListBean>> observableEmitter) throws Exception {
            ArrayList arrayList = new ArrayList();
            for (ChapterListBean chapterListBean : this.f21090do) {
                if (DownloadTaskActivity.this.f21078super != null) {
                    DownloadTaskActivity.this.f21078super.m26573import(chapterListBean.getTid());
                }
                arrayList.add(Long.valueOf(chapterListBean.getTid()));
                DownloadTaskActivity.this.m25005strictfp(chapterListBean, this.f21092if);
            }
            DownloadTaskActivity.this.e(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, boolean z) {
        DownloadTaskAdapter downloadTaskAdapter = this.f21076goto;
        if (downloadTaskAdapter != null) {
            downloadTaskAdapter.m25653case().get(i).setChecked(z);
            this.f21076goto.notifyItemChanged(i);
        }
    }

    private void c(int i) {
        FastScrollRecyclerView fastScrollRecyclerView = this.mRecyclerView;
        if (fastScrollRecyclerView == null || fastScrollRecyclerView.isComputingLayout()) {
            return;
        }
        this.f21076goto.notifyItemChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: implements, reason: not valid java name */
    public /* synthetic */ void m24996implements(gp1 gp1Var) throws Exception {
        if (gp1Var.m2766for() == 21) {
            long jLongValue = ((Long) gp1Var.m2767if(1)).longValue();
            int iIntValue = ((Integer) gp1Var.m2765do()).intValue();
            if (iIntValue == 1) {
                i(jLongValue, (String) gp1Var.m2767if(2));
                return;
            }
            if (iIntValue == 2) {
                h(jLongValue);
                return;
            } else if (iIntValue == 3) {
                f(jLongValue);
                return;
            } else {
                if (iIntValue != 5) {
                    return;
                }
                g(jLongValue, (String) gp1Var.m2767if(2));
                return;
            }
        }
        if (gp1Var.m2766for() != 22) {
            if (gp1Var.m2766for() != 23) {
                gp1Var.m2766for();
                return;
            }
            List<Task> list = (List) gp1Var.m2767if(1);
            if (list.get(0).getKey().equals(this.f21072catch.getNoteUrl())) {
                d(list);
                return;
            }
            return;
        }
        long jLongValue2 = ((Long) gp1Var.m2765do()).longValue();
        vv0.m8965if("DownloadTaskActivity", " progress : " + ((Integer) gp1Var.m2767if(1)).intValue() + " max : " + ((Integer) gp1Var.m2767if(2)).intValue());
        j(jLongValue2, ((Integer) gp1Var.m2767if(1)).intValue(), ((Integer) gp1Var.m2767if(2)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public /* synthetic */ void m24998instanceof(ObservableEmitter observableEmitter) throws Exception {
        this.f21072catch = DatabaseHelper.m26016switch().m26036protected(this.f21074const);
        observableEmitter.onNext(this.f21071break.m26480final(this.f21074const));
        observableEmitter.onComplete();
    }

    public static void l(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) DownloadTaskActivity.class);
        intent.putExtra(z90.f8477for, str);
        intent.putExtra(z90.f8480new, str2);
        context.startActivity(intent);
    }

    private void n(Task task, int i) {
        ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(this.f21074const).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cfor(new ChapterListBean(task.getNoteUrl(), task.getDurChapterIndex(), task.getParentIdString(), task.getParentNameString(), task.getChapterId(), task.getDurChapterUrl(), task.getDurChapterName(), task.getNextChapterUrl(), task.getVariable(), task.getTag(), task.getStart(), task.getEnd(), task.getComicInfoUrl(), true, true, task.getId().longValue()), i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public void m25007synchronized(List<Task> list) {
        for (Task task : list) {
            int state = task.isFinish() ? 0 : task.getState();
            task.setNoteUrl(this.f21072catch.getNoteUrl());
            task.setSource(this.f21072catch.getOrigin());
            task.setState(state);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public void m25005strictfp(ChapterListBean chapterListBean, boolean z) {
        try {
            this.f21071break.m26483if(chapterListBean.getTid());
            for (ComicContentImgBean comicContentImgBean : DatabaseHelper.m26016switch().i(chapterListBean.getDurChapterUrl())) {
                comicContentImgBean.setIsDownload(false);
                comicContentImgBean.setLocalPath("");
                DatabaseHelper.m26016switch().m26034package(comicContentImgBean);
            }
            if (z) {
                this.f21072catch.setDownload(null);
                DatabaseHelper.m26016switch().m(this.f21072catch);
                DocumentFile documentFileM24697new = CartoonApplication.m24693try().m24697new();
                ComicInfoBean comicInfoBean = this.f21072catch;
                Cfinal.m26377case(documentFileM24697new, comicInfoBean, comicInfoBean.getOrigin());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public /* synthetic */ void m25009transient(List list, boolean z) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ChapterListBean chapterListBean = (ChapterListBean) it.next();
            this.f21071break.m26483if(chapterListBean.getTid());
            List<ComicContentImgBean> listI = DatabaseHelper.m26016switch().i(chapterListBean.getDurChapterUrl());
            for (int i = 0; i < listI.size(); i++) {
                ComicContentImgBean comicContentImgBean = listI.get(i);
                comicContentImgBean.setIsDownload(false);
                comicContentImgBean.setLocalPath(null);
                DatabaseHelper.m26016switch().m26034package(comicContentImgBean);
            }
        }
        if (z) {
            this.f21072catch.setDownload(null);
            DatabaseHelper.m26016switch().m(this.f21072catch);
            DocumentFile documentFileM24697new = CartoonApplication.m24693try().m24697new();
            ComicInfoBean comicInfoBean = this.f21072catch;
            Cfinal.m26377case(documentFileM24697new, comicInfoBean, comicInfoBean.getOrigin());
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m25010volatile(final List<ChapterListBean> list, final boolean z) {
        DatabaseHelper.m26016switch().m26031instanceof(new Runnable() { // from class: android.support.v4.y20
            @Override // java.lang.Runnable
            public final void run() {
                this.f8103do.m25009transient(list, z);
            }
        });
    }

    public void b() {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.u20
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f6741do.m24998instanceof(observableEmitter);
            }
        }).doOnNext(new Consumer() { // from class: android.support.v4.w20
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f7377do.m25007synchronized((List) obj);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f21074const = getIntent().getStringExtra(z90.f8480new);
        this.f21076goto = new DownloadTaskAdapter(this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.f21079this = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.mRecyclerView.setLayoutManager(this.f21079this);
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f21076goto.setHasStableIds(true);
        this.mRecyclerView.setAdapter(this.f21076goto);
        this.f21076goto.setOnItemClickListener(this);
        this.f21076goto.setOnLongItemClickListener(this);
        this.f21076goto.setOnCheckedChangeListener(this);
        this.f21076goto.setOnRemoveSuccessListener(this);
        this.f21076goto.setOnDownloadCompleteListener(this);
        this.f21081while = ix1.m3632do(this, DownloadService.class);
        b();
    }

    /* renamed from: continue, reason: not valid java name */
    public void m25011continue() {
        this.f21075final = new Cif();
        bindService(new Intent(this, (Class<?>) DownloadService.class), this.f21075final, 1);
    }

    public void d(List<Task> list) {
        this.f21076goto.m25659new(0, list);
    }

    public void e(List<Long> list) {
        this.f21076goto.m25661throw(list);
        if (this.f21076goto.m25654catch()) {
            this.f21076goto.m25652break();
            this.deleteTaskView.setVisibility(8);
            ArrayList arrayList = new ArrayList();
            List<Task> listM25653case = this.f21076goto.m25653case();
            for (Task task : listM25653case) {
                if (task.isFinish()) {
                    arrayList.add(task);
                }
            }
            List<Task> listM25653case2 = this.f21076goto.m25653case();
            if (listM25653case2 == null || listM25653case2.size() <= 0) {
                this.startOrPauseView.setVisibility(8);
                lm1.m4709case().mo970if(new Object[0]);
                finish();
            } else if (arrayList.size() < listM25653case.size()) {
                this.f21080throw = false;
                this.startOrPauseView.setVisibility(0);
            } else if (arrayList.size() >= listM25653case.size()) {
                this.f21080throw = true;
                this.startOrPauseView.setVisibility(8);
            }
        }
    }

    public void f(long j) {
        int iM25657goto = this.f21076goto.m25657goto(j);
        if (iM25657goto != -1) {
            Task taskM25655else = this.f21076goto.m25655else(iM25657goto);
            if (taskM25655else.getState() != 3) {
                taskM25655else.setState(3);
                c(iM25657goto);
            }
        }
    }

    public void g(long j, String str) {
        int iM25657goto = this.f21076goto.m25657goto(j);
        if (iM25657goto != -1) {
            Task taskM25655else = this.f21076goto.m25655else(iM25657goto);
            if (taskM25655else.getState() != 1) {
                taskM25655else.setState(5);
                taskM25655else.setErrorMessage(str);
                c(iM25657goto);
            }
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    public void h(long j) {
        int iM25657goto = this.f21076goto.m25657goto(j);
        if (iM25657goto != -1) {
            Task taskM25655else = this.f21076goto.m25655else(iM25657goto);
            if (taskM25655else.getState() != 1) {
                taskM25655else.setState(2);
                c(iM25657goto);
            }
        }
    }

    public void i(long j, String str) {
        int iM25657goto = this.f21076goto.m25657goto(j);
        if (iM25657goto != -1) {
            Task taskM25655else = this.f21076goto.m25655else(iM25657goto);
            taskM25655else.setState(1);
            taskM25655else.setErrorMessage(str);
            c(iM25657goto);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m25012interface(List<ChapterListBean> list, boolean z) {
        this.f21077import.show();
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new Ctry(list, z)).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cnew(z, list));
    }

    public void j(long j, int i, int i2) {
        int iM25657goto = this.f21076goto.m25657goto(j);
        if (iM25657goto != -1) {
            Task taskM25655else = this.f21076goto.m25655else(iM25657goto);
            taskM25655else.setMax(i2);
            taskM25655else.setProgress(i);
            if (taskM25655else.getState() != 1) {
                taskM25655else.setState(i2 == i ? 0 : 3);
            }
            c(iM25657goto);
        }
    }

    public void k() {
        for (int i = 0; i < this.f21076goto.getItemCount(); i++) {
            Task taskM25655else = this.f21076goto.m25655else(i);
            if (taskM25655else.getState() != 0) {
                taskM25655else.setState(1);
                this.f21076goto.notifyItemChanged(i);
                DownloadService downloadService = this.f21078super;
                if (downloadService != null) {
                    downloadService.m26573import(taskM25655else.getId().longValue());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m() {
        for (int i = 0; i < this.f21076goto.getItemCount(); i++) {
            Task taskM25655else = this.f21076goto.m25655else(i);
            int state = taskM25655else.getState();
            if (state == 1) {
                taskM25655else.setState(4);
                this.f21076goto.notifyItemChanged(i);
                if (!DownloadService.f22476throw || this.f21078super == null) {
                    Intent intentM26562final = DownloadService.m26562final(this, taskM25655else);
                    if (Build.VERSION.SDK_INT >= 26) {
                        startForegroundService(intentM26562final);
                    } else {
                        startService(intentM26562final);
                    }
                    bindService(intentM26562final, this.f21075final, 1);
                } else {
                    this.f21078super.m26574native(DownloadService.m26562final(this, taskM25655else));
                }
            } else if (state == 2 || state == 3 || state == 4) {
                taskM25655else.setState(1);
                this.f21076goto.notifyItemChanged(i);
                DownloadService downloadService = this.f21078super;
                if (downloadService != null) {
                    downloadService.m26573import(taskM25655else.getId().longValue());
                }
            } else if (state != 5) {
            }
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c002f;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        DownloadTaskAdapter downloadTaskAdapter = this.f21076goto;
        if (downloadTaskAdapter == null) {
            super.onBackPressed();
            return;
        }
        if (!downloadTaskAdapter.m25654catch()) {
            super.onBackPressed();
            return;
        }
        this.f21076goto.m25652break();
        this.deleteTaskView.setVisibility(8);
        ArrayList arrayList = new ArrayList();
        List<Task> listM25653case = this.f21076goto.m25653case();
        for (Task task : listM25653case) {
            if (task.isFinish()) {
                arrayList.add(task);
            }
        }
        if (arrayList.size() < listM25653case.size()) {
            this.f21080throw = false;
            this.startOrPauseView.setVisibility(0);
        } else if (arrayList.size() >= listM25653case.size()) {
            this.f21080throw = true;
            this.startOrPauseView.setVisibility(8);
        }
    }

    @Override // com.wsw.cospa.adapter.DownloadTaskAdapter.OnCheckedChangeListener
    public void onCheckedChanged(final int i, final boolean z) {
        if (this.mRecyclerView.isComputingLayout()) {
            this.mRecyclerView.post(new Runnable() { // from class: android.support.v4.x20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f7748do.a(i, z);
                }
            });
        } else {
            DownloadTaskAdapter downloadTaskAdapter = this.f21076goto;
            if (downloadTaskAdapter != null) {
                downloadTaskAdapter.m25653case().get(i).setChecked(z);
                this.f21076goto.notifyItemChanged(i);
            }
        }
        ArrayList arrayList = new ArrayList();
        List<Task> listM25653case = this.f21076goto.m25653case();
        for (Task task : listM25653case) {
            if (task.isChecked()) {
                arrayList.add(task);
            }
        }
        if (arrayList.size() < listM25653case.size()) {
            this.tvSelectTask.setText("全选");
        } else if (arrayList.size() >= listM25653case.size()) {
            this.tvSelectTask.setText("取消全选");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.arg_res_0x7f090478 /* 2131297400 */:
                ArrayList arrayList = new ArrayList();
                for (Task task : this.f21076goto.m25653case()) {
                    if (task.isChecked()) {
                        arrayList.add(new ChapterListBean(task.getNoteUrl(), task.getDurChapterIndex(), task.getParentIdString(), task.getParentNameString(), task.getChapterId(), task.getDurChapterUrl(), task.getDurChapterName(), task.getNextChapterUrl(), task.getVariable(), task.getTag(), task.getStart(), task.getEnd(), task.getComicInfoUrl(), false, false, task.getId().longValue()));
                    }
                }
                if (arrayList.isEmpty()) {
                    v72.m8769if("请选择要删除的章节");
                    break;
                } else {
                    m25012interface(arrayList, this.f21076goto.m25653case().size() == arrayList.size());
                    break;
                }
            case R.id.arg_res_0x7f090481 /* 2131297409 */:
                m();
                break;
            case R.id.arg_res_0x7f0904a2 /* 2131297442 */:
                k();
                break;
            case R.id.arg_res_0x7f0904af /* 2131297455 */:
                ArrayList arrayList2 = new ArrayList();
                List<Task> listM25653case = this.f21076goto.m25653case();
                for (Task task2 : listM25653case) {
                    if (task2.isChecked()) {
                        arrayList2.add(task2);
                    }
                }
                if (arrayList2.size() < listM25653case.size()) {
                    for (int i = 0; i < listM25653case.size(); i++) {
                        listM25653case.get(i).setChecked(true);
                        this.f21076goto.notifyItemChanged(i);
                    }
                    break;
                } else if (arrayList2.size() >= listM25653case.size()) {
                    for (int i2 = 0; i2 < listM25653case.size(); i2++) {
                        listM25653case.get(i2).setChecked(false);
                        this.f21076goto.notifyItemChanged(i2);
                    }
                    break;
                }
                break;
        }
    }

    @Override // com.wsw.cospa.adapter.DownloadTaskAdapter.OnDownloadCompleteListener
    public void onComplete() {
        this.startOrPauseView.setVisibility(8);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0007, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ep1.m1972do().m1975new();
        ServiceConnection serviceConnection = this.f21075final;
        if (serviceConnection != null) {
            unbindService(serviceConnection);
        }
        xh1 xh1Var = this.f21077import;
        if (xh1Var == null || !xh1Var.isShowing()) {
            return;
        }
        this.f21077import.dismiss();
    }

    @Override // com.wsw.cospa.event.DownloadComicMessageObserver
    public void onDownloadComicMessage(Object... objArr) {
        gp1 gp1Var = (gp1) objArr[0];
        if (gp1Var.m2766for() == 21) {
            long jLongValue = ((Long) gp1Var.m2767if(1)).longValue();
            int iIntValue = ((Integer) gp1Var.m2765do()).intValue();
            if (iIntValue == 1) {
                i(jLongValue, (String) gp1Var.m2767if(2));
                return;
            }
            if (iIntValue == 2) {
                h(jLongValue);
                return;
            } else if (iIntValue == 3) {
                f(jLongValue);
                return;
            } else {
                if (iIntValue != 5) {
                    return;
                }
                g(jLongValue, (String) gp1Var.m2767if(2));
                return;
            }
        }
        if (gp1Var.m2766for() != 22) {
            if (gp1Var.m2766for() != 23) {
                gp1Var.m2766for();
                return;
            }
            List<Task> list = (List) gp1Var.m2767if(1);
            if (list.get(0).getKey().equals(this.f21072catch.getNoteUrl())) {
                d(list);
                return;
            }
            return;
        }
        long jLongValue2 = ((Long) gp1Var.m2765do()).longValue();
        vv0.m8965if("DownloadTaskActivity", " progress : " + ((Integer) gp1Var.m2767if(1)).intValue() + " max : " + ((Integer) gp1Var.m2767if(2)).intValue());
        j(jLongValue2, ((Integer) gp1Var.m2767if(1)).intValue(), ((Integer) gp1Var.m2767if(2)).intValue());
    }

    @Override // com.wsw.cospa.listener.OnItemClickListener
    public void onItemClick(int i) {
        try {
            Task taskM25655else = this.f21076goto.m25655else(i);
            int state = taskM25655else.getState();
            if (state == 0) {
                n(taskM25655else, i);
                return;
            }
            if (state != 1) {
                if (state == 2 || state == 3 || state == 4) {
                    taskM25655else.setState(1);
                    this.f21076goto.notifyItemChanged(i);
                    DownloadService downloadService = this.f21078super;
                    if (downloadService != null) {
                        downloadService.m26573import(taskM25655else.getId().longValue());
                        return;
                    }
                    return;
                }
                if (state != 5) {
                    return;
                }
            }
            taskM25655else.setState(4);
            this.f21076goto.notifyItemChanged(i);
            if (DownloadService.f22476throw && this.f21078super != null) {
                this.f21078super.m26574native(DownloadService.m26562final(this, taskM25655else));
                return;
            }
            Intent intentM26562final = DownloadService.m26562final(this, taskM25655else);
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(intentM26562final);
            } else {
                startService(intentM26562final);
            }
            bindService(intentM26562final, this.f21075final, 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.wsw.cospa.listener.OnLongItemClickListener
    public void onLongClick(View view, int i) {
        DownloadTaskAdapter downloadTaskAdapter = this.f21076goto;
        if (downloadTaskAdapter != null) {
            downloadTaskAdapter.m25658import();
        }
        this.deleteTaskView.setVisibility(0);
        this.startOrPauseView.setVisibility(8);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        if (menuItem.getItemId() == R.id.arg_res_0x7f090423) {
            this.f21076goto.m25663while();
            return true;
        }
        if (menuItem.getItemId() != R.id.arg_res_0x7f09041f) {
            if (menuItem.getItemId() == R.id.arg_res_0x7f090108) {
                ComicDetailActivity.S(this, true, this.f21074const);
            }
            return super.onOptionsItemSelected(menuItem);
        }
        ArrayList arrayList = new ArrayList(this.f21076goto.getItemCount());
        for (Task task : this.f21076goto.m25653case()) {
            arrayList.add(new ChapterListBean(task.getNoteUrl(), task.getDurChapterIndex(), task.getParentIdString(), task.getParentNameString(), task.getChapterId(), task.getDurChapterUrl(), task.getDurChapterName(), task.getNextChapterUrl(), task.getVariable(), task.getTag(), task.getStart(), task.getEnd(), task.getComicInfoUrl(), false, false, task.getId().longValue()));
        }
        if (arrayList.isEmpty()) {
            m25012interface(arrayList, true);
            return true;
        }
        m25012interface(arrayList, this.f21076goto.getItemCount() == arrayList.size());
        return true;
    }

    @Override // com.wsw.cospa.adapter.DownloadTaskAdapter.OnRemoveSuccessListener
    public void onRemoveSuccess() {
        finish();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m25013protected();
        r20.m6733case().m9005for(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        r20.m6733case().m9006new(this);
    }

    /* renamed from: protected, reason: not valid java name */
    public void m25013protected() {
        this.f21908do.add(((ObservableSubscribeProxy) ep1.m1972do().m1976try(gp1.class).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.v20
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f7039do.m24996implements((gp1) obj);
            }
        }));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        this.f21073class = getIntent().getStringExtra(z90.f8477for);
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, this.f21073class);
        this.tvSelectTask.setOnClickListener(this);
        this.tvDeleteTask.setOnClickListener(this);
        this.tvDownloadTxt.setOnClickListener(this);
        this.tv_pause_all.setOnClickListener(this);
        this.f21071break = Cthrow.m26474else();
        this.f21077import = new xh1.Cdo(this).m9514for(1).m9516new("正在删除下载记录！").m9513do();
    }
}
