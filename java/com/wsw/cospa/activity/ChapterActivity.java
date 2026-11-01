package com.wsw.cospa.activity;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.ed1;
import android.support.v4.ep1;
import android.support.v4.gp1;
import android.support.v4.hm1;
import android.support.v4.j10;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.p12;
import android.support.v4.v72;
import android.support.v4.wq;
import android.support.v4.y8;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.DownloadChapterAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.Switcher;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.model.Cfinal;
import com.wsw.cospa.model.Cthrow;
import com.wsw.cospa.service.DownloadService;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.view.GridSpacingItemDecoration;
import com.wsw.cospa.widget.view.ShadowLayout;
import io.reactivex.Cnew;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ChapterActivity extends BaseActivity {

    /* renamed from: import, reason: not valid java name */
    private static final int f20914import = 10002;

    /* renamed from: throw, reason: not valid java name */
    private static final String f20915throw = "ChapterActivity";

    /* renamed from: while, reason: not valid java name */
    public static final int f20916while = 101;

    /* renamed from: break, reason: not valid java name */
    private ComicShelfBean f20917break;

    /* renamed from: catch, reason: not valid java name */
    private ComicInfoBean f20918catch;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902a9)
    public ShadowLayout mShadowLayout;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private DownloadChapterAdapter f20924this;

    @BindView(R.id.arg_res_0x7f09047c)
    public TextView tvDonwloadChapter;

    /* renamed from: goto, reason: not valid java name */
    private int f20922goto = 0;

    /* renamed from: class, reason: not valid java name */
    private Boolean f20919class = Boolean.FALSE;

    /* renamed from: const, reason: not valid java name */
    private Handler f20920const = new Handler();

    /* renamed from: final, reason: not valid java name */
    private RecyclerView.OnItemTouchListener f20921final = new Cfor();

    /* renamed from: super, reason: not valid java name */
    private ServiceConnection f20923super = new Cif();

    /* renamed from: com.wsw.cospa.activity.ChapterActivity$do, reason: invalid class name */
    public class Cdo extends bz1<ArrayList<Task>> {
        public Cdo() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ArrayList<Task> arrayList) {
            ep1.m1972do().m1973for(new gp1(23, ChapterActivity.this.f20918catch, arrayList));
            ChapterActivity.this.m24833strictfp(arrayList);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onError(Throwable th) {
            String unused = ChapterActivity.f20915throw;
            StringBuilder sb = new StringBuilder();
            sb.append("onError: ");
            sb.append(th.getMessage());
            v72.m8769if(th.getMessage());
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
            ChapterActivity.this.f21908do.add(disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterActivity$for, reason: invalid class name */
    public class Cfor implements RecyclerView.OnItemTouchListener {

        /* renamed from: do, reason: not valid java name */
        private int f20926do = -1;

        /* renamed from: if, reason: not valid java name */
        private boolean f20928if = false;

        public Cfor() {
        }

        /* renamed from: for, reason: not valid java name */
        private void m24836for(int i) {
            this.f20926do = i;
            ChapterActivity.this.f20924this.m25633new(i).switchEnable();
            ChapterActivity.this.f20924this.notifyItemChanged(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m24837if() {
            try {
                this.f20928if = true;
                m24836for(this.f20926do);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            if (this.f20928if) {
                return true;
            }
            int childAdapterPosition = recyclerView.getChildAdapterPosition(recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY()));
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f20926do = childAdapterPosition;
                if (childAdapterPosition == -1) {
                    return false;
                }
                ChapterActivity.this.f20920const.postDelayed(new Runnable() { // from class: com.wsw.cospa.activity.else
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f21483do.m24837if();
                    }
                }, 100L);
                return false;
            }
            if (action != 1) {
                if (action != 2 || this.f20926do == childAdapterPosition) {
                    return false;
                }
                ChapterActivity.this.f20920const.removeCallbacksAndMessages(null);
                return false;
            }
            ChapterActivity.this.f20920const.removeCallbacksAndMessages(null);
            if (childAdapterPosition == -1 || this.f20926do != childAdapterPosition) {
                return false;
            }
            m24836for(childAdapterPosition);
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            int childAdapterPosition = recyclerView.getChildAdapterPosition(recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY()));
            int action = motionEvent.getAction();
            if (action == 1) {
                this.f20928if = false;
            } else {
                if (action != 2 || childAdapterPosition == -1 || this.f20926do == childAdapterPosition) {
                    return;
                }
                m24836for(childAdapterPosition);
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterActivity$if, reason: invalid class name */
    public class Cif implements ServiceConnection {
        public Cif() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ChapterActivity.this.f20919class = Boolean.TRUE;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            ChapterActivity.this.f20919class = Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public /* synthetic */ void m24814abstract(List list, List list2, ObservableEmitter observableEmitter) throws Exception {
        ArrayList<Task> arrayListM24821package = m24821package(list);
        Iterator<Task> it = arrayListM24821package.iterator();
        while (it.hasNext()) {
            Cthrow.m26474else().m26482goto(it.next());
        }
        for (ChapterListBean chapterListBean : this.f20918catch.getChapterList()) {
            if (list.contains(chapterListBean)) {
                chapterListBean.setDownload(true);
            }
        }
        this.f20918catch.setDownload(Long.valueOf(System.currentTimeMillis()));
        this.f20917break.setComicInfoBean(this.f20918catch);
        DatabaseHelper.m26016switch().n(this.f20918catch);
        DatabaseHelper.m26016switch().l(this.f20917break);
        com.wsw.cospa.dao.Cdo.n(this.f20917break);
        ep1.m1972do().m1973for(new gp1(4, new Object[0]));
        Cfinal.m26391return(getContentResolver(), CartoonApplication.m24693try().m24697new(), list2, this.f20918catch);
        observableEmitter.onNext(arrayListM24821package);
        observableEmitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public /* synthetic */ void m24815continue(View view) {
        ArrayList arrayList = new ArrayList();
        for (Switcher<ChapterListBean> switcher : this.f20924this.m25630for()) {
            if (!switcher.getElement().isDownload() && switcher.isEnable()) {
                arrayList.add(switcher.getElement());
            }
        }
        if (arrayList.isEmpty()) {
            v72.m8769if("未选择章节");
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            if (Environment.isExternalStorageManager()) {
                m24831default(this.f20918catch.getChapterList(), arrayList);
                return;
            }
            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
            intent.setData(Uri.parse("package:" + getPackageName()));
            startActivityForResult(intent, 10002);
            return;
        }
        if (i < 23) {
            m24831default(this.f20918catch.getChapterList(), arrayList);
            return;
        }
        if (ed1.m1798do(this)) {
            m24831default(this.f20918catch.getChapterList(), arrayList);
            return;
        }
        Intent intent2 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent2.addFlags(268435456);
        intent2.setData(Uri.parse("package:" + getPackageName()));
        startActivity(intent2);
    }

    /* renamed from: finally, reason: not valid java name */
    private List<Switcher<ChapterListBean>> m24816finally() {
        List<ChapterListBean> chapterList = this.f20917break.getChapterList();
        ArrayList arrayList = new ArrayList(chapterList.size());
        for (int i = 0; i < chapterList.size(); i++) {
            ChapterListBean chapterListBean = chapterList.get(i);
            chapterListBean.setDownload(m24832extends(chapterListBean));
            arrayList.add(new Switcher(chapterListBean, chapterListBean.isDownload()));
        }
        return arrayList;
    }

    /* renamed from: implements, reason: not valid java name */
    private void m24817implements(List<Task> list) {
        HashSet hashSet = new HashSet();
        Iterator<Task> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getPath());
        }
        for (Switcher<ChapterListBean> switcher : this.f20924this.m25630for()) {
            if (hashSet.contains(switcher.getElement().getDurChapterUrl())) {
                switcher.getElement().setDownload(true);
            }
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m24819interface(Context context) {
        context.startActivity(new Intent(context, (Class<?>) ChapterActivity.class));
    }

    /* renamed from: package, reason: not valid java name */
    private ArrayList<Task> m24821package(List<ChapterListBean> list) {
        try {
            ArrayList<Task> arrayList = new ArrayList<>(list.size());
            for (ChapterListBean chapterListBean : list) {
                chapterListBean.setDownload(true);
                Task task = new Task(null, chapterListBean.getNoteUrl(), chapterListBean.getDurChapterUrl(), chapterListBean.getDurChapterName(), 0, 0);
                task.setName(this.f20918catch.getName());
                task.setSource(this.f20918catch.getOrigin());
                task.setKey(this.f20918catch.getNoteUrl());
                task.setNoteUrl(chapterListBean.getNoteUrl());
                task.setDurChapterIndex(chapterListBean.getDurChapterIndex());
                task.setParentIdString(chapterListBean.getParentIdString());
                task.setParentNameString(chapterListBean.getParentNameString());
                task.setChapterId(chapterListBean.getChapterId());
                task.setDurChapterUrl(chapterListBean.getDurChapterUrl());
                task.setDurChapterName(chapterListBean.getDurChapterName());
                task.setNextChapterUrl(chapterListBean.getNextChapterUrl());
                task.setTag(chapterListBean.getTag());
                task.setStart(chapterListBean.getStart());
                task.setEnd(chapterListBean.getEnd());
                task.setVariable(chapterListBean.getVariable());
                task.setComicInfoUrl(chapterListBean.getComicInfoUrl());
                task.setState(4);
                arrayList.add(task);
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: private, reason: not valid java name */
    private boolean m24822private() {
        Iterator<ActivityManager.RunningServiceInfo> it = ((ActivityManager) getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningServices(Integer.MAX_VALUE).iterator();
        while (it.hasNext()) {
            if ("com.wsw.cospa.service.DownloadService".equals(it.next().service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m24823protected(Context context, ComicShelfBean comicShelfBean) {
        Intent intent = new Intent(context, (Class<?>) ChapterActivity.class);
        intent.putExtra(wq.Cdo.f7645do, comicShelfBean);
        context.startActivity(intent);
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m24829transient(Activity activity, ComicShelfBean comicShelfBean) {
        Intent intent = new Intent(activity, (Class<?>) ChapterActivity.class);
        intent.putExtra(wq.Cdo.f7645do, comicShelfBean);
        activity.startActivityForResult(intent, 101);
    }

    /* renamed from: volatile, reason: not valid java name */
    private static List<List<Switcher<ChapterListBean>>> m24830volatile(List<Switcher<ChapterListBean>> list, int i) {
        if (list == null || list.size() == 0 || i < 1) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i2 = ((size + i) - 1) / i;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i3 * i;
            i3++;
            int i5 = i3 * i;
            if (i5 > size) {
                i5 = size;
            }
            arrayList.add(list.subList(i4, i5));
        }
        return arrayList;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        this.f20924this = new DownloadChapterAdapter(this, this.f20918catch, m24816finally());
        this.mRecyclerView.setLayoutManager(new GridLayoutManager((Context) this, 4, 1, false));
        GridSpacingItemDecoration gridSpacingItemDecoration = new GridSpacingItemDecoration(10);
        this.mRecyclerView.addOnItemTouchListener(this.f20921final);
        this.mRecyclerView.addItemDecoration(gridSpacingItemDecoration);
        this.mRecyclerView.setAdapter(this.f20924this);
    }

    /* renamed from: default, reason: not valid java name */
    public void m24831default(final List<ChapterListBean> list, final List<ChapterListBean> list2) {
        ((ObservableSubscribeProxy) Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.kh
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f3383do.m24814abstract(list2, list, observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m24832extends(ChapterListBean chapterListBean) {
        List<Task> listM26476case = Cthrow.m26474else().m26476case(this.f20918catch.getNoteUrl());
        if (listM26476case != null && listM26476case.size() > 0) {
            for (int i = 0; i < listM26476case.size(); i++) {
                if (listM26476case.get(i).getDurChapterUrl().equals(chapterListBean.getDurChapterUrl())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0027;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 10002 || Build.VERSION.SDK_INT < 30) {
            return;
        }
        if (!Environment.isExternalStorageManager()) {
            v72.m8769if("请开启存储权限！");
            return;
        }
        ArrayList arrayList = new ArrayList();
        DownloadChapterAdapter downloadChapterAdapter = this.f20924this;
        if (downloadChapterAdapter != null) {
            for (Switcher<ChapterListBean> switcher : downloadChapterAdapter.m25630for()) {
                if (!switcher.getElement().isDownload() && switcher.isEnable()) {
                    arrayList.add(switcher.getElement());
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            m24831default(this.f20918catch.getChapterList(), arrayList);
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0001, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (m24822private() && this.f20919class.booleanValue()) {
            unbindService(this.f20923super);
        }
        ep1.m1972do().m1975new();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId == R.id.arg_res_0x7f0900eb) {
            ArrayList arrayList = new ArrayList();
            for (Switcher<ChapterListBean> switcher : this.f20924this.m25630for()) {
                if (switcher.isEnable()) {
                    arrayList.add(switcher);
                }
            }
            if (arrayList.size() == 0) {
                Iterator<Switcher<ChapterListBean>> it = this.f20924this.m25630for().iterator();
                while (it.hasNext()) {
                    it.next().setEnable(true);
                }
            } else if (arrayList.size() > 0 && arrayList.size() <= this.f20924this.getItemCount()) {
                Iterator<Switcher<ChapterListBean>> it2 = this.f20924this.m25630for().iterator();
                while (it2.hasNext()) {
                    it2.next().setEnable(false);
                }
            }
            this.f20924this.notifyDataSetChanged();
        } else if (itemId == R.id.arg_res_0x7f0900ed) {
            this.f20924this.m25634this();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m24833strictfp(ArrayList<Task> arrayList) {
        try {
            Intent intentM26567super = DownloadService.m26567super(this, arrayList);
            if (Build.VERSION.SDK_INT >= 26) {
                startForegroundService(intentM26567super);
            } else {
                startService(intentM26567super);
            }
            bindService(intentM26567super, this.f20923super, 1);
            m24817implements(arrayList);
            v72.m8769if("已添加至下载列表");
            finish();
            DownloadTaskActivity.l(this, this.f20918catch.getName(), this.f20917break.getNoteUrl());
            hm1.m3062case().mo970if(new Object[0]);
        } catch (Exception e) {
            e.getMessage();
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27100new(this, this.mToolbar, "章节列表");
        this.refreshLayout.setEnableLoadMore(false);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setEnableRefresh(false);
        this.refreshLayout.setEnableOverScrollDrag(false);
        int iM3660new = (int) j10.m3660new(this, 10.0f);
        this.mShadowLayout.setShadowColor(Color.parseColor("#333C3C5A"));
        this.mShadowLayout.setShadowRadius(iM3660new);
        this.mShadowLayout.setShadowMargin(0, iM3660new, 0, 0);
        ComicShelfBean comicShelfBean = (ComicShelfBean) getIntent().getParcelableExtra(wq.Cdo.f7645do);
        this.f20917break = comicShelfBean;
        if (comicShelfBean == null) {
            ComicShelfBean comicShelfBean2 = (ComicShelfBean) y8.m9768for().m9770if(wq.Cdo.f7652if);
            this.f20917break = comicShelfBean2;
            this.f20918catch = comicShelfBean2.getComicInfoBean();
        }
        if (j10.m3649catch() >= 1080) {
            this.f20922goto = (j10.m3649catch() - (((int) j10.m3660new(this, 10.0f)) * 5)) / 4;
        } else {
            this.f20922goto = (j10.m3649catch() - (((int) j10.m3660new(this, 10.0f)) * 4)) / 3;
        }
        this.tvDonwloadChapter.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.jh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3107do.m24815continue(view);
            }
        });
    }
}
