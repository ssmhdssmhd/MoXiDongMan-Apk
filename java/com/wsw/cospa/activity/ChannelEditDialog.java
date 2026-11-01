package com.wsw.cospa.activity;

import android.content.Intent;
import android.support.v4.ih;
import android.support.v4.m7;
import android.support.v4.om1;
import android.support.v4.p12;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import com.cheng.channel.ChannelView;
import com.gyf.immersionbar.Celse;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Cpackage;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.vo.FindChildVo;
import com.wsw.cospa.vo.FindParentVo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ChannelEditDialog extends BaseActivity implements ChannelView.OnChannelListener {

    /* renamed from: catch, reason: not valid java name */
    public static final int f20909catch = 1000;

    /* renamed from: break, reason: not valid java name */
    private FindParentVo f20910break;

    @BindView(R.id.arg_res_0x7f0900ea)
    public ChannelView channelView;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    /* renamed from: goto, reason: not valid java name */
    private List<ih> f20911goto = new ArrayList();

    /* renamed from: this, reason: not valid java name */
    private List<ih> f20912this = new ArrayList();

    /* renamed from: import, reason: not valid java name */
    public static void m24813import(Fragment fragment, String str) {
        Intent intent = new Intent(fragment.getContext(), (Class<?>) ChannelEditDialog.class);
        intent.putExtra("FindParentVo", str);
        fragment.startActivityForResult(intent, 1000);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        FindParentVo findParentVo = (FindParentVo) Cpackage.m27021if((String) getIntent().getSerializableExtra("FindParentVo"), FindParentVo.class);
        this.f20910break = findParentVo;
        List<FindChildVo> childVoList = findParentVo.getChildVoList();
        for (int i = 0; i < childVoList.size(); i++) {
            FindChildVo findChildVo = childVoList.get(i);
            if (i < 10) {
                this.f20911goto.add(new ih(findChildVo.getKindName(), findChildVo));
            } else {
                this.f20912this.add(new ih(findChildVo.getKindName(), 2, findChildVo));
            }
        }
        this.channelView.setChannelFixedCount(0);
        this.channelView.g("我的分类", this.f20911goto);
        this.channelView.g("推荐分类", this.f20912this);
        this.channelView.h();
        this.channelView.setOnChannelItemClickListener(this);
    }

    @Override // com.cheng.channel.ChannelView.OnChannelListener
    public void channelEditFinish(List<ih> list) {
    }

    @Override // com.cheng.channel.ChannelView.OnChannelListener
    public void channelEditStart() {
    }

    @Override // com.cheng.channel.ChannelView.OnChannelListener
    public void channelItemClick(int i, ih ihVar) {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0025;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.channelView.i()) {
            super.onBackPressed();
            return;
        }
        om1.m5717case().mo970if(this.f20910break, this.channelView.getMyChannel());
        finish();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        Celse.k2(this).O1(true).b0();
    }
}
