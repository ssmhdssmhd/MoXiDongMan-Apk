package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.support.v4.b0;
import android.support.v4.bb0;
import android.support.v4.bz1;
import android.support.v4.m7;
import android.support.v4.mp1;
import android.support.v4.oa0;
import android.support.v4.on0;
import android.support.v4.p12;
import android.support.v4.sj2;
import android.support.v4.wq;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.LocalComicActivity;
import com.wsw.cospa.adapter.LocalComicAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.dao.Cnew;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DialogTool;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.disposables.Disposable;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/* loaded from: classes2.dex */
public class LocalComicActivity extends BaseActivity implements View.OnClickListener, OnItemClickListener, OnLongItemClickListener {

    /* renamed from: break, reason: not valid java name */
    public static final int f21180break = 10001;

    @BindView(R.id.arg_res_0x7f090086)
    public LinearLayout addComicView;

    /* renamed from: goto, reason: not valid java name */
    private LocalComicAdapter f21181goto;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    /* renamed from: this, reason: not valid java name */
    private LinearLayoutManager f21182this;

    /* renamed from: com.wsw.cospa.activity.LocalComicActivity$do, reason: invalid class name */
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
            LocalComicActivity.this.f21908do.add(disposable);
        }

        @Override // io.reactivex.Observer
        public void onNext(List<RipeFile> list) {
            LocalComicActivity.this.f21181goto.refresh(list);
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalComicActivity$if, reason: invalid class name */
    public class Cif implements DialogTool.DialogOptCb {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ RipeFile f21184do;

        public Cif(RipeFile ripeFile) {
            this.f21184do = ripeFile;
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
            Cnew.m26132case().m26138try().m3133catch().deleteInTx(this.f21184do);
            LocalComicActivity.this.m25120public();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public static /* synthetic */ void m25116return(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(Cnew.m26132case().m26138try().m3133catch().loadAll());
    }

    /* renamed from: static, reason: not valid java name */
    public static void m25117static(String str) throws Exception {
        ZipFile zipFile = new ZipFile(str);
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
        zipFile.entries();
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                zipInputStream.closeEntry();
                return;
            }
            System.err.println("readZipFile: " + nextEntry.getMethod());
            if (nextEntry.isDirectory()) {
                System.err.println("file - " + nextEntry.getName());
            } else {
                System.err.println("file - " + nextEntry.getName() + " : " + nextEntry.getSize() + " bytes");
                if (nextEntry.getSize() > 0) {
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

    /* renamed from: switch, reason: not valid java name */
    public static void m25118switch() throws Exception {
        String str = wq.f7618native + "/诸天至尊.zip";
        str.replaceAll("\\\\", on0.f4694final);
        sj2 sj2Var = new sj2(str);
        if (sj2Var.m7428abstract()) {
            List<oa0> listM7454switch = sj2Var.m7454switch();
            List<File> listM7436extends = sj2Var.m7436extends();
            System.err.println(listM7454switch.size());
            System.err.println(listM7436extends.size());
            for (oa0 oa0Var : listM7454switch) {
                String strM8069catch = oa0Var.m8069catch();
                oa0Var.m8102while();
                bb0.m499if(wq.f7618native + strM8069catch);
                if (strM8069catch.endsWith(on0.f4694final) || strM8069catch.endsWith("\\\\") || strM8069catch.endsWith("\\")) {
                    System.err.println(wq.f7618native + strM8069catch);
                } else {
                    sj2Var.m7456throws(oa0Var);
                    System.err.println(wq.f7618native + strM8069catch);
                }
            }
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m25119throws(Context context) {
        context.startActivity(new Intent(context, (Class<?>) LocalComicActivity.class));
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        m25120public();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0039;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 10001) {
            if (intent.getBooleanExtra("isSingleChoice", true)) {
                DatabaseHelper.m26016switch().c((RipeFile) intent.getParcelableExtra(wq.Cdo.f7655native));
            } else {
                DatabaseHelper.m26016switch().d(intent.getParcelableArrayListExtra(wq.Cdo.f7655native));
            }
            m25120public();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.arg_res_0x7f090086) {
            return;
        }
        FileSelectorActivity.a(this, true, false, true, true, new String[]{"png", "jpg", "jpeg", "webp", "gif", "zip", "rar"}, true);
    }

    @Override // com.wsw.cospa.listener.OnItemClickListener
    public void onItemClick(int i) {
        FileSelectorActivity.m25026instanceof(this, true, this.f21181goto.m25753for(i), false, false, true, new String[]{"png", "jpg", "jpeg", "webp", "gif", "zip", "rar"}, false);
    }

    @Override // com.wsw.cospa.listener.OnLongItemClickListener
    public void onLongClick(View view, int i) {
        RipeFile ripeFileM25753for = this.f21181goto.m25753for(i);
        DialogTool.o(this, new DialogTool.Cnew("温馨提示", null, "是否删除 " + ripeFileM25753for.getName() + "？"), new DialogTool.Ctry("确认", "取消"), new Cif(ripeFileM25753for));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    /* renamed from: public, reason: not valid java name */
    public void m25120public() {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.nt0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                LocalComicActivity.m25116return(observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        this.f21181goto = new LocalComicAdapter(this);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        this.f21182this = linearLayoutManager;
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setItemViewCacheSize(10);
        this.mRecyclerView.setItemAnimator(null);
        this.mRecyclerView.setHasFixedSize(true);
        this.f21181goto.setHasStableIds(true);
        this.mRecyclerView.setAdapter(this.f21181goto);
        this.addComicView.setOnClickListener(this);
        this.f21181goto.setOnItemClickListener(this);
        this.f21181goto.setOnLongItemClickListener(this);
    }
}
