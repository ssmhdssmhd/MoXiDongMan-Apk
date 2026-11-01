package com.wsw.cospa.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.ShadowLayout;

/* loaded from: classes2.dex */
public class ChapterActivity_ViewBinding implements Unbinder {

    /* renamed from: do, reason: not valid java name */
    private ChapterActivity f20930do;

    @UiThread
    public ChapterActivity_ViewBinding(ChapterActivity chapterActivity) {
        this(chapterActivity, chapterActivity.getWindow().getDecorView());
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChapterActivity chapterActivity = this.f20930do;
        if (chapterActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.f20930do = null;
        chapterActivity.mToolbar = null;
        chapterActivity.mRecyclerView = null;
        chapterActivity.tvDonwloadChapter = null;
        chapterActivity.refreshLayout = null;
        chapterActivity.mShadowLayout = null;
    }

    @UiThread
    public ChapterActivity_ViewBinding(ChapterActivity chapterActivity, View view) {
        this.f20930do = chapterActivity;
        chapterActivity.mToolbar = (Toolbar) Cnew.m10373case(view, R.id.arg_res_0x7f0902ab, "field 'mToolbar'", Toolbar.class);
        chapterActivity.mRecyclerView = (RecyclerView) Cnew.m10373case(view, R.id.arg_res_0x7f0902a4, "field 'mRecyclerView'", RecyclerView.class);
        chapterActivity.tvDonwloadChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09047c, "field 'tvDonwloadChapter'", TextView.class);
        chapterActivity.refreshLayout = (SmartRefreshLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09035c, "field 'refreshLayout'", SmartRefreshLayout.class);
        chapterActivity.mShadowLayout = (ShadowLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0902a9, "field 'mShadowLayout'", ShadowLayout.class);
    }
}
