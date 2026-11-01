package com.wsw.cospa.activity;

import android.support.v4.fx;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.CheckBoxPreference;
import com.wsw.cospa.widget.view.Option;

/* loaded from: classes2.dex */
public class BackupActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private BackupActivity f20898do;

    /* renamed from: for, reason: not valid java name */
    private View f20899for;

    /* renamed from: if, reason: not valid java name */
    private View f20900if;

    /* renamed from: com.wsw.cospa.activity.BackupActivity_ViewBinding$do, reason: invalid class name */
    public class Cdo extends fx {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ BackupActivity f20901for;

        public Cdo(BackupActivity backupActivity) {
            this.f20901for = backupActivity;
        }

        @Override // android.support.v4.fx
        /* renamed from: if */
        public void mo2448if(View view) {
            this.f20901for.onSaveComicClick();
        }
    }

    /* renamed from: com.wsw.cospa.activity.BackupActivity_ViewBinding$if, reason: invalid class name */
    public class Cif extends fx {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ BackupActivity f20903for;

        public Cif(BackupActivity backupActivity) {
            this.f20903for = backupActivity;
        }

        @Override // android.support.v4.fx
        /* renamed from: if */
        public void mo2448if(View view) {
            this.f20903for.onRestoreComicClick();
        }
    }

    @UiThread
    public BackupActivity_ViewBinding(BackupActivity backupActivity) {
        this(backupActivity, backupActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BackupActivity backupActivity = this.f20898do;
        if (backupActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20898do = null;
        backupActivity.mToolbar = null;
        backupActivity.mSaveComicAuto = null;
        backupActivity.tvWebdavUrl = null;
        backupActivity.tvWebdavAcccount = null;
        backupActivity.tvWebdavPassword = null;
        backupActivity.tvWebdavRestore = null;
        backupActivity.tvWebdavStep = null;
        backupActivity.refreshLayout = null;
        this.f20900if.setOnClickListener(null);
        this.f20900if = null;
        this.f20899for.setOnClickListener(null);
        this.f20899for = null;
    }

    @UiThread
    public BackupActivity_ViewBinding(BackupActivity backupActivity, View view) {
        this.f20898do = backupActivity;
        backupActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        backupActivity.mSaveComicAuto = (CheckBoxPreference) Cnew.m10373case(view, R.id.arg_res_0x7f0900a4, "field 'mSaveComicAuto'", CheckBoxPreference.class);
        backupActivity.tvWebdavUrl = (Option) Cnew.m10373case(view, R.id.arg_res_0x7f0904c9, "field 'tvWebdavUrl'", Option.class);
        backupActivity.tvWebdavAcccount = (Option) Cnew.m10373case(view, R.id.arg_res_0x7f0904c5, "field 'tvWebdavAcccount'", Option.class);
        backupActivity.tvWebdavPassword = (Option) Cnew.m10373case(view, R.id.arg_res_0x7f0904c6, "field 'tvWebdavPassword'", Option.class);
        backupActivity.tvWebdavRestore = (Option) Cnew.m10373case(view, R.id.arg_res_0x7f0904c7, "field 'tvWebdavRestore'", Option.class);
        backupActivity.tvWebdavStep = (Option) Cnew.m10373case(view, R.id.arg_res_0x7f0904c8, "field 'tvWebdavStep'", Option.class);
        backupActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        View viewM10381try = Cnew.m10381try(view, R.id.arg_res_0x7f0900a3, "method 'onSaveComicClick'");
        this.f20900if = viewM10381try;
        viewM10381try.setOnClickListener(new Cdo(backupActivity));
        View viewM10381try2 = Cnew.m10381try(view, R.id.arg_res_0x7f0900a2, "method 'onRestoreComicClick'");
        this.f20899for = viewM10381try2;
        viewM10381try2.setOnClickListener(new Cif(backupActivity));
    }
}
