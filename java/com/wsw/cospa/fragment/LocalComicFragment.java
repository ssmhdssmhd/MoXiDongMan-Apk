package com.wsw.cospa.fragment;

import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.b0;
import android.support.v4.bb0;
import android.support.v4.bz1;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.oa0;
import android.support.v4.on0;
import android.support.v4.sj2;
import android.support.v4.wq;
import android.text.Html;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.FileSelectorActivity;
import com.wsw.cospa.adapter.LocalComicAdapter;
import com.wsw.cospa.base.BaseFragment;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.fragment.LocalComicFragment;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.DialogTool;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/* loaded from: classes2.dex */
public class LocalComicFragment extends BaseFragment implements View.OnClickListener, OnItemClickListener, OnLongItemClickListener {

    /* renamed from: break, reason: not valid java name */
    public static final int f22250break = 10001;

    /* renamed from: catch, reason: not valid java name */
    public static ArrayList<File> f22251catch = new ArrayList<>();

    @BindView(R.id.arg_res_0x7f090086)
    public LinearLayout addComicView;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    /* renamed from: goto, reason: not valid java name */
    private LocalComicAdapter f22252goto;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mLoadingRootView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f09035c)
    public SmartRefreshLayout refreshLayout;

    /* renamed from: this, reason: not valid java name */
    private LinearLayoutManager f22253this;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f0904b7)
    public TextView tvStorageSpace;

    /* renamed from: com.wsw.cospa.fragment.LocalComicFragment$do, reason: invalid class name */
    public class Cdo extends bz1<List<RipeFile>> {
        public Cdo() {
        }

        @Override // android.support.v4.bz1
        public void onError(String str) {
            super.onError(str);
        }

        @Override // android.support.v4.bz1, io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            super.onSubscribe(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<RipeFile> list) {
            LocalComicFragment.this.f22252goto.refresh(list);
            if (list == null || list.size() <= 0) {
                LocalComicFragment.this.m26247super();
            } else {
                LocalComicFragment.this.m26246break();
            }
        }
    }

    /* renamed from: com.wsw.cospa.fragment.LocalComicFragment$if, reason: invalid class name */
    public class Cif implements DialogTool.DialogOptCb {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RipeFile f22255do;

        public Cif(RipeFile ripeFile) {
            this.f22255do = ripeFile;
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            Cnew.m26132case().m26138try().m3133catch().deleteInTx(this.f22255do);
            LocalComicFragment.this.m26248this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public static /* synthetic */ void m26240catch(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(Cnew.m26132case().m26138try().m3133catch().loadAll());
    }

    /* renamed from: class, reason: not valid java name */
    public static LocalComicFragment m26241class() {
        return new LocalComicFragment();
    }

    /* renamed from: const, reason: not valid java name */
    public static void m26242const(String str) throws Exception {
        ZipFile zipFile = new ZipFile(str);
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
        zipFile.entries();
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                zipInputStream.closeEntry();
                return;
            }
            if (nextEntry.isDirectory()) {
                System.err.println("dir file - " + nextEntry.getName());
            } else {
                System.err.println("file - " + nextEntry.getName() + " : " + nextEntry.getSize() + " bytes");
                if (nextEntry.getSize() > 0) {
                    new BitmapDrawable(zipFile.getInputStream(nextEntry));
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(zipFile.getInputStream(nextEntry), "UTF-8"));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        } else {
                            System.err.println(line);
                        }
                    }
                    bufferedReader.close();
                }
                System.out.println();
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m26244final() throws Exception {
        String str = wq.f7618native + "/诸天至尊.zip";
        str.replaceAll("\\\\", on0.f4694final);
        sj2 sj2Var = new sj2(str);
        if (sj2Var.m7428abstract()) {
            List<oa0> listM7454switch = sj2Var.m7454switch();
            List<File> listM7436extends = sj2Var.m7436extends();
            System.err.println(listM7454switch.size());
            System.err.println("splitZipFiles : " + listM7436extends.size());
            for (oa0 oa0Var : listM7454switch) {
                String strM8069catch = oa0Var.m8069catch();
                if (strM8069catch.endsWith(on0.f4694final) || strM8069catch.endsWith("\\\\") || strM8069catch.endsWith("\\")) {
                    sj2Var.m7456throws(oa0Var);
                    f22251catch.add(new File(wq.f7618native + on0.f4694final + strM8069catch));
                } else {
                    String strM499if = bb0.m499if(wq.f7618native + strM8069catch);
                    System.err.println("后缀名 ： " + strM499if);
                    if (!"png".equals(strM499if) && !"jpg".equals(strM499if)) {
                        "webp".equals(strM499if);
                    }
                }
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m26246break() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.refreshLayout.setVisibility(0);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: case */
    public void mo25879case() {
        this.tvStorageSpace.setText(Html.fromHtml(String.format(getResources().getString(R.string.arg_res_0x7f1100f8), Cdefault.m26758else(), Cdefault.m26765native())));
        this.refreshLayout.setEnableLoadMore(false);
        this.refreshLayout.setEnableAutoLoadMore(false);
        this.refreshLayout.setEnableRefresh(false);
        this.refreshLayout.setEnableOverScrollDrag(true);
        this.f22252goto = new LocalComicAdapter(getActivity());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getActivity());
        this.f22253this = linearLayoutManager;
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f22252goto.setHasStableIds(true);
        this.mRecyclerView.setAdapter(this.f22252goto);
        this.addComicView.setOnClickListener(this);
        this.f22252goto.setOnItemClickListener(this);
        this.f22252goto.setOnLongItemClickListener(this);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: if */
    public int mo25882if() {
        return R.layout.arg_res_0x7f0c008b;
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: new */
    public void mo25883new() {
        m26248this();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 10001) {
            if (intent.getBooleanExtra("isSingleChoice", true)) {
                DatabaseHelper.m26016switch().c((RipeFile) intent.getParcelableExtra(wq.Cdo.f7655native));
            } else {
                DatabaseHelper.m26016switch().d(intent.getParcelableArrayListExtra(wq.Cdo.f7655native));
            }
            m26248this();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.arg_res_0x7f090086) {
            return;
        }
        FileSelectorActivity.b(this, true, false, true, false, new String[]{"png", "jpg", "jpeg", "webp", "gif", "zip", "rar", "7z"}, true);
    }

    @Override // com.wsw.cospa.listener.OnItemClickListener
    public void onItemClick(int i) {
        FileSelectorActivity.m25026instanceof(getActivity(), true, this.f22252goto.m25753for(i), false, false, true, new String[]{"png", "jpg", "jpeg", "webp", "gif", "zip", "rar", "7z"}, false);
    }

    @Override // com.wsw.cospa.listener.OnLongItemClickListener
    public void onLongClick(View view, int i) {
        RipeFile ripeFileM25753for = this.f22252goto.m25753for(i);
        DialogTool.o(getActivity(), new DialogTool.Cnew("温馨提示", null, "是否删除 " + ripeFileM25753for.getName() + "？"), new DialogTool.Ctry("确认", "取消"), new Cif(ripeFileM25753for));
    }

    /* renamed from: super, reason: not valid java name */
    public void m26247super() {
        this.tvRetry.setVisibility(8);
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.refreshLayout.setVisibility(8);
        this.tvErrorView.setText("你还没有本地漫画，赶紧去添加吧！");
    }

    /* renamed from: this, reason: not valid java name */
    public void m26248this() {
        m26249throw();
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.qt0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                LocalComicFragment.m26240catch(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    /* renamed from: throw, reason: not valid java name */
    public void m26249throw() {
        this.mIndicatorView.setVisibility(0);
        this.refreshLayout.setVisibility(8);
        this.error_view.setVisibility(8);
    }

    @Override // com.wsw.cospa.base.BaseFragment
    /* renamed from: try */
    public m7 mo25884try() {
        return null;
    }
}
