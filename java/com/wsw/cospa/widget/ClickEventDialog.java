package com.wsw.cospa.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.j10;
import android.support.v4.v02;
import android.support.v4.wq;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.ComicShelfBean;

/* loaded from: classes2.dex */
public class ClickEventDialog {
    private ComicShelfBean bookShelfBean;

    @BindView(R.id.arg_res_0x7f0901a1)
    public Button event_left;

    @BindView(R.id.arg_res_0x7f0901a2)
    public Button event_middle;

    @BindView(R.id.arg_res_0x7f0901a3)
    public Button event_right;

    @BindView(R.id.arg_res_0x7f090238)
    public AppCompatImageView iv_close_left_right_tips;

    @BindView(R.id.arg_res_0x7f090239)
    public AppCompatImageView iv_close_up_down_tips;

    @BindView(R.id.arg_res_0x7f090276)
    public RelativeLayout ll_click_event;

    @BindView(R.id.arg_res_0x7f090284)
    public LinearLayout ll_left_right_tips;

    @BindView(R.id.arg_res_0x7f090290)
    public LinearLayout ll_up_down_tips;
    private Context mContext;
    private PopupWindow mPopupWindow;
    private View mView;

    @BindView(R.id.arg_res_0x7f090385)
    public LinearLayout scroll_mode_event_left_right;

    @BindView(R.id.arg_res_0x7f090386)
    public LinearLayout scroll_mode_event_up_down;

    public ClickEventDialog(Context context, ComicShelfBean comicShelfBean) throws NoSuchMethodException, SecurityException {
        this.mContext = context;
        this.bookShelfBean = comicShelfBean;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.arg_res_0x7f0c0028, (ViewGroup) null, false);
        this.mView = viewInflate;
        ButterKnife.m10352case(this, viewInflate);
        initView();
    }

    private int getReadMode() {
        ComicShelfBean comicShelfBean = this.bookShelfBean;
        return (comicShelfBean == null || comicShelfBean.getReadMode() == null || this.bookShelfBean.getReadMode().intValue() == 0) ? v02.m8711if(this.mContext).m8715for(wq.f7635volatile, 1) : this.bookShelfBean.getReadMode().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$1(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$2(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$3(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$4(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$5(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$6(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$7(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initView$8(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this.mContext).m8712case(wq.J0, false);
    }

    public void dismiss() {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public void initView() {
        PopupWindow popupWindow = new PopupWindow(this.mView, -1, -1);
        this.mPopupWindow = popupWindow;
        boolean zM8713do = true;
        popupWindow.setInputMethodMode(1);
        this.mPopupWindow.setSoftInputMode(34);
        this.mPopupWindow.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#00000000")));
        this.mPopupWindow.setFocusable(true);
        this.mPopupWindow.setOutsideTouchable(true);
        this.mPopupWindow.setAnimationStyle(R.style.arg_res_0x7f12035a);
        this.mPopupWindow.update();
        this.mPopupWindow.setTouchable(true);
        int readMode = getReadMode();
        if (readMode == 1) {
            zM8713do = v02.m8711if(this.mContext).m8713do(wq.I0, true);
            this.scroll_mode_event_up_down.setVisibility(0);
            this.scroll_mode_event_left_right.setVisibility(8);
            this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.hm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2440do.lambda$initView$0(view);
                }
            });
            this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.im
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2803do.lambda$initView$1(view);
                }
            });
            this.ll_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.gm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2162do.lambda$initView$2(view);
                }
            });
        } else if (readMode == 2) {
            zM8713do = v02.m8711if(this.mContext).m8713do(wq.J0, true);
            this.scroll_mode_event_up_down.setVisibility(8);
            this.scroll_mode_event_left_right.setVisibility(0);
            this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.em
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1537do.lambda$initView$3(view);
                }
            });
            this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.dm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1079do.lambda$initView$4(view);
                }
            });
            this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.fm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1901do.lambda$initView$5(view);
                }
            });
            this.event_right.setText("下一页");
            this.event_left.setText("上一页");
        } else if (readMode == 3) {
            zM8713do = v02.m8711if(this.mContext).m8713do(wq.K0, true);
            this.scroll_mode_event_up_down.setVisibility(8);
            this.scroll_mode_event_left_right.setVisibility(0);
            this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.jm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f3145do.lambda$initView$6(view);
                }
            });
            this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.lm
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f3711do.lambda$initView$7(view);
                }
            });
            this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.km
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f3419do.lambda$initView$8(view);
                }
            });
            this.event_right.setText("上一页");
            this.event_left.setText("下一页");
        }
        if (zM8713do) {
            this.ll_click_event.setVisibility(0);
        } else {
            this.ll_click_event.setVisibility(8);
        }
    }

    public void show(View view) {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            j10.m3659native(popupWindow, view);
        }
    }
}
