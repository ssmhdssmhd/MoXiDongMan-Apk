package com.wsw.cospa.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.ih;
import android.support.v4.j10;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.cheng.channel.ChannelView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.vo.FindChildVo;
import com.wsw.cospa.vo.FindParentVo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ComicChannelDialog extends BottomSheetDialog implements ChannelView.OnChannelListener {

    /* renamed from: case, reason: not valid java name */
    private List<ih> f22202case;

    @BindView(R.id.arg_res_0x7f0900ea)
    public ChannelView channelView;

    /* renamed from: do, reason: not valid java name */
    private View f22203do;

    /* renamed from: else, reason: not valid java name */
    private FindParentVo f22204else;

    /* renamed from: for, reason: not valid java name */
    private BottomSheetBehavior f22205for;

    /* renamed from: if, reason: not valid java name */
    private Context f22206if;

    /* renamed from: new, reason: not valid java name */
    private BaseActivity f22207new;

    /* renamed from: try, reason: not valid java name */
    private List<ih> f22208try;

    /* renamed from: com.wsw.cospa.fragment.ComicChannelDialog$do, reason: invalid class name */
    public class Cdo extends BottomSheetBehavior.Celse {
        public Cdo() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.Celse
        /* renamed from: do */
        public void mo12895do(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.Celse
        /* renamed from: if */
        public void mo12896if(@NonNull View view, int i) {
            if (i == 1) {
                ComicChannelDialog.this.f22205for.r(3);
            }
        }
    }

    public ComicChannelDialog(@NonNull Context context, FindParentVo findParentVo) {
        super(context);
        this.f22208try = new ArrayList();
        this.f22202case = new ArrayList();
        this.f22206if = context;
        this.f22207new = (BaseActivity) context;
        this.f22204else = findParentVo;
    }

    /* renamed from: if, reason: not valid java name */
    private void m26187if() {
        Window window = getWindow();
        window.setGravity(80);
        window.setWindowAnimations(R.style.arg_res_0x7f12035e);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = j10.m3648case(this.f22206if);
        window.setAttributes(attributes);
        BottomSheetBehavior bottomSheetBehaviorM12860extends = BottomSheetBehavior.m12860extends(this.channelView);
        this.f22205for = bottomSheetBehaviorM12860extends;
        bottomSheetBehaviorM12860extends.n(j10.m3648case(this.f22206if));
        this.f22205for.r(3);
        this.f22205for.f(new Cdo());
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

    public void initData() {
        List<FindChildVo> childVoList = this.f22204else.getChildVoList();
        for (int i = 0; i < childVoList.size(); i++) {
            FindChildVo findChildVo = childVoList.get(i);
            if (i < 10) {
                this.f22208try.add(new ih(findChildVo.getKindName(), Integer.valueOf(i)));
            } else {
                this.f22202case.add(new ih(findChildVo.getKindName(), 2, Integer.valueOf(i)));
            }
        }
        this.channelView.setChannelFixedCount(3);
        this.channelView.g("我的分类", this.f22208try);
        this.channelView.g("推荐分类", this.f22202case);
        this.channelView.h();
        this.channelView.setOnChannelItemClickListener(this);
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialog, androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) throws NoSuchMethodException, SecurityException {
        super.onCreate(bundle);
        View viewInflate = LayoutInflater.from(this.f22206if).inflate(R.layout.arg_res_0x7f0c005e, (ViewGroup) null, false);
        this.f22203do = viewInflate;
        ButterKnife.m10352case(this, viewInflate);
        setContentView(this.f22203do);
        m26187if();
        initData();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.arg_res_0x7f090131);
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        frameLayout.setLayoutParams(layoutParams);
        BottomSheetBehavior.m12860extends(frameLayout).r(3);
    }

    public ComicChannelDialog(@NonNull Context context, int i) {
        super(context, i);
        this.f22208try = new ArrayList();
        this.f22202case = new ArrayList();
    }
}
