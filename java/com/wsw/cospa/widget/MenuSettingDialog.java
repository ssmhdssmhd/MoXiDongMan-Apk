package com.wsw.cospa.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.support.v4.j10;
import android.support.v4.l22;
import android.support.v4.v02;
import android.support.v4.wq;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.gyf.immersionbar.Celse;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicShelfBean;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class MenuSettingDialog implements CompoundButton.OnCheckedChangeListener, View.OnClickListener {
    private ComicShelfBean bookShelfBean;
    private List<Integer> colorMap = new ArrayList();
    private BottomSheetDialog dialog;
    public LinearLayout ll_click_event_position;
    public LinearLayout ll_comic_bg;
    public LinearLayout longClickMenuView;
    private BaseActivity mActivity;
    private Context mContext;
    private View mView;
    private onCallbackListener onCallbackListener;
    public LinearLayout paging_reverse_layout;
    public LinearLayout readModeJapan;
    public LinearLayout readModeNormal;
    public LinearLayout readModeRoll;
    public LinearLayout reader_paging_layout;
    public Switch switchComicStatus;
    public Switch switchEyecareMode;
    public Switch switchKeepScreen;
    public Switch switchLongClickMenu;
    public Switch switchNavigationBar;
    public Switch switchPagingReverse;
    public Switch switchReaderPaging;
    public Switch switchScreen;
    public Switch switchStatusBar;
    public Switch switchVolumeKeyPaging;
    public Switch switchWhiteEdge;
    public LinearLayout switch_navigation_bar_layout;
    public TextView tv_comic_bg;

    public interface onCallbackListener {
        void onClickEventPosition();

        void onComicBackgroundColor(Integer num);

        void onReadMode(int i);

        void onShowComicState();

        void onSwitchEyeCareMode(boolean z);

        void onSwitchNavigationBar();

        void onSwitchPagingReverse(boolean z);

        void onSwitchReaderPaging(boolean z);

        void onSwitchStatusBar();

        void onSwitchWhiteEdge(boolean z);
    }

    public MenuSettingDialog(@NonNull Context context) {
        this.mContext = context;
        this.mActivity = (BaseActivity) context;
        initView();
        initData();
    }

    private int getReadMode() {
        ComicShelfBean comicShelfBean = this.bookShelfBean;
        return (comicShelfBean == null || comicShelfBean.getReadMode() == null || this.bookShelfBean.getReadMode().intValue() == 0) ? v02.m8711if(this.mContext).m8715for(wq.f7635volatile, 1) : this.bookShelfBean.getReadMode().intValue();
    }

    private void initData() {
        BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this.mContext, R.style.arg_res_0x7f1200fa);
        this.dialog = bottomSheetDialog;
        bottomSheetDialog.setContentView(this.mView);
        this.dialog.setCancelable(true);
        this.dialog.setCanceledOnTouchOutside(true);
        BottomSheetBehavior bottomSheetBehaviorM12860extends = BottomSheetBehavior.m12860extends((View) this.mView.getParent());
        double dM3656goto = j10.m3656goto();
        Double.isNaN(dM3656goto);
        bottomSheetBehaviorM12860extends.n((int) (dM3656goto * 0.5d));
        this.dialog.getWindow().addFlags(67108864);
        this.dialog.getWindow().setWindowAnimations(R.style.arg_res_0x7f12035e);
        this.colorMap.add(Integer.valueOf(R.color.arg_res_0x7f0601b7));
        this.colorMap.add(Integer.valueOf(R.color.arg_res_0x7f060141));
        this.colorMap.add(Integer.valueOf(R.color.arg_res_0x7f060380));
    }

    public void dismiss() {
        BottomSheetDialog bottomSheetDialog = this.dialog;
        if (bottomSheetDialog == null || !bottomSheetDialog.isShowing()) {
            return;
        }
        this.dialog.dismiss();
        Celse.m22694interface(this.mActivity, this.dialog);
    }

    public void hideLongClickMenu(boolean z) {
        if (z) {
            this.longClickMenuView.setVisibility(8);
        } else {
            this.longClickMenuView.setVisibility(0);
        }
    }

    public void initClickTips() {
        if (getReadMode() == 1) {
            this.reader_paging_layout.setVisibility(0);
            this.paging_reverse_layout.setVisibility(0);
        } else {
            this.reader_paging_layout.setVisibility(8);
            this.paging_reverse_layout.setVisibility(8);
        }
    }

    public void initView() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.arg_res_0x7f0c0060, (ViewGroup) null, false);
        this.mView = viewInflate;
        this.longClickMenuView = (LinearLayout) viewInflate.findViewById(R.id.arg_res_0x7f0903fb);
        this.readModeNormal = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f090356);
        this.readModeRoll = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f090357);
        this.readModeJapan = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f090354);
        this.reader_paging_layout = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f090358);
        this.switchReaderPaging = (Switch) this.mView.findViewById(R.id.arg_res_0x7f090403);
        this.paging_reverse_layout = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f090318);
        this.switchPagingReverse = (Switch) this.mView.findViewById(R.id.arg_res_0x7f090400);
        this.switchWhiteEdge = (Switch) this.mView.findViewById(R.id.arg_res_0x7f09040d);
        this.ll_comic_bg = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f090279);
        this.tv_comic_bg = (TextView) this.mView.findViewById(R.id.arg_res_0x7f09046d);
        this.switchEyecareMode = (Switch) this.mView.findViewById(R.id.arg_res_0x7f0903f0);
        this.switchKeepScreen = (Switch) this.mView.findViewById(R.id.arg_res_0x7f0903f9);
        this.switchScreen = (Switch) this.mView.findViewById(R.id.arg_res_0x7f090404);
        this.switchVolumeKeyPaging = (Switch) this.mView.findViewById(R.id.arg_res_0x7f09040c);
        this.switchStatusBar = (Switch) this.mView.findViewById(R.id.arg_res_0x7f090407);
        this.switchNavigationBar = (Switch) this.mView.findViewById(R.id.arg_res_0x7f0903fc);
        this.switch_navigation_bar_layout = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f0903fd);
        this.switchComicStatus = (Switch) this.mView.findViewById(R.id.arg_res_0x7f0903ea);
        this.switchLongClickMenu = (Switch) this.mView.findViewById(R.id.arg_res_0x7f0903fa);
        this.ll_click_event_position = (LinearLayout) this.mView.findViewById(R.id.arg_res_0x7f090277);
        this.switchKeepScreen.setChecked(v02.m8711if(this.mContext).m8713do(wq.f, false));
        this.switchKeepScreen.setOnCheckedChangeListener(this);
        this.switchScreen.setChecked(v02.m8711if(this.mContext).m8713do(wq.g, false));
        this.switchScreen.setOnCheckedChangeListener(this);
        this.switchReaderPaging.setOnCheckedChangeListener(this);
        this.switchReaderPaging.setChecked(v02.m8711if(this.mContext).m8713do(wq.D, false));
        this.switchPagingReverse.setOnCheckedChangeListener(this);
        this.switchPagingReverse.setChecked(v02.m8711if(this.mContext).m8713do(wq.E, false));
        this.switchWhiteEdge.setOnCheckedChangeListener(this);
        this.switchWhiteEdge.setChecked(v02.m8711if(this.mContext).m8713do(wq.F, false));
        this.switchVolumeKeyPaging.setOnCheckedChangeListener(this);
        this.switchVolumeKeyPaging.setChecked(v02.m8711if(this.mContext).m8713do(wq.B, false));
        this.switchStatusBar.setOnCheckedChangeListener(this);
        this.switchStatusBar.setChecked(v02.m8711if(this.mContext).m8713do(wq.h, false));
        if (Celse.R(this.mActivity)) {
            this.switch_navigation_bar_layout.setVisibility(0);
        } else {
            this.switch_navigation_bar_layout.setVisibility(8);
        }
        this.switchNavigationBar.setOnCheckedChangeListener(this);
        this.switchNavigationBar.setChecked(v02.m8711if(this.mContext).m8713do(wq.i, false));
        boolean zM8713do = v02.m8711if(this.mContext).m8713do(wq.m, false);
        this.switchComicStatus.setOnCheckedChangeListener(this);
        this.switchComicStatus.setChecked(zM8713do);
        this.switchLongClickMenu.setOnCheckedChangeListener(this);
        this.switchLongClickMenu.setChecked(v02.m8711if(this.mContext).m8713do(wq.j, false));
        this.switchEyecareMode.setOnCheckedChangeListener(this);
        this.switchEyecareMode.setChecked(v02.m8711if(this.mContext).m8713do(wq.k, false));
        this.readModeNormal.setOnClickListener(this);
        this.readModeRoll.setOnClickListener(this);
        this.readModeJapan.setOnClickListener(this);
        this.ll_comic_bg.setOnClickListener(this);
        this.ll_click_event_position.setOnClickListener(this);
        String strM8719try = v02.m8711if(this.mContext).m8719try(wq.Cdo.f7643continue, "");
        if (l22.m4571return(strM8719try)) {
            this.tv_comic_bg.setText("黑色");
        } else {
            this.tv_comic_bg.setText(strM8719try);
        }
    }

    public boolean isShowing() {
        BottomSheetDialog bottomSheetDialog = this.dialog;
        if (bottomSheetDialog != null) {
            return bottomSheetDialog.isShowing();
        }
        return false;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (compoundButton.getId()) {
            case R.id.arg_res_0x7f0903ea /* 2131297258 */:
                v02.m8711if(this.mContext).m8712case(wq.m, z);
                onCallbackListener oncallbacklistener = this.onCallbackListener;
                if (oncallbacklistener != null) {
                    oncallbacklistener.onShowComicState();
                    break;
                }
                break;
            case R.id.arg_res_0x7f0903f0 /* 2131297264 */:
                v02.m8711if(this.mContext).m8712case(wq.k, z);
                onCallbackListener oncallbacklistener2 = this.onCallbackListener;
                if (oncallbacklistener2 != null) {
                    oncallbacklistener2.onSwitchEyeCareMode(z);
                    break;
                }
                break;
            case R.id.arg_res_0x7f0903f9 /* 2131297273 */:
                v02.m8711if(this.mContext).m8712case(wq.f, z);
                j10.m3664throw(this.mActivity);
                break;
            case R.id.arg_res_0x7f0903fa /* 2131297274 */:
                v02.m8711if(this.mContext).m8712case(wq.j, z);
                break;
            case R.id.arg_res_0x7f0903fc /* 2131297276 */:
                v02.m8711if(this.mContext).m8712case(wq.i, z);
                onCallbackListener oncallbacklistener3 = this.onCallbackListener;
                if (oncallbacklistener3 != null) {
                    oncallbacklistener3.onSwitchNavigationBar();
                    break;
                }
                break;
            case R.id.arg_res_0x7f090400 /* 2131297280 */:
                onCallbackListener oncallbacklistener4 = this.onCallbackListener;
                if (oncallbacklistener4 != null) {
                    oncallbacklistener4.onSwitchPagingReverse(z);
                    break;
                }
                break;
            case R.id.arg_res_0x7f090403 /* 2131297283 */:
                onCallbackListener oncallbacklistener5 = this.onCallbackListener;
                if (oncallbacklistener5 != null) {
                    oncallbacklistener5.onSwitchReaderPaging(z);
                    break;
                }
                break;
            case R.id.arg_res_0x7f090404 /* 2131297284 */:
                v02.m8711if(this.mContext).m8712case(wq.g, z);
                dismiss();
                if (!z) {
                    this.mActivity.setRequestedOrientation(1);
                    break;
                } else {
                    this.mActivity.setRequestedOrientation(0);
                    break;
                }
            case R.id.arg_res_0x7f090407 /* 2131297287 */:
                v02.m8711if(this.mContext).m8712case(wq.h, z);
                onCallbackListener oncallbacklistener6 = this.onCallbackListener;
                if (oncallbacklistener6 != null) {
                    oncallbacklistener6.onSwitchStatusBar();
                    break;
                }
                break;
            case R.id.arg_res_0x7f09040c /* 2131297292 */:
                v02.m8711if(this.mContext).m8712case(wq.B, z);
                break;
            case R.id.arg_res_0x7f09040d /* 2131297293 */:
                onCallbackListener oncallbacklistener7 = this.onCallbackListener;
                if (oncallbacklistener7 != null) {
                    oncallbacklistener7.onSwitchWhiteEdge(z);
                    break;
                }
                break;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = 1;
        switch (view.getId()) {
            case R.id.arg_res_0x7f090277 /* 2131296887 */:
                if (this.onCallbackListener != null) {
                    dismiss();
                    this.onCallbackListener.onClickEventPosition();
                    break;
                }
                break;
            case R.id.arg_res_0x7f090279 /* 2131296889 */:
                QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this.mContext);
                cfor.m24055volatile("设置背景颜色");
                final String[] strArr = {"灰色", "黑色", "白色"};
                String strM8719try = v02.m8711if(this.mContext).m8719try(wq.Cdo.f7643continue, "");
                for (int i2 = 0; i2 < 3; i2++) {
                    if (strArr[i2].equals(strM8719try)) {
                        i = i2;
                    }
                }
                cfor.b(i);
                cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: com.wsw.cospa.widget.MenuSettingDialog.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        Integer num = (Integer) MenuSettingDialog.this.colorMap.get(i3);
                        if (MenuSettingDialog.this.onCallbackListener != null) {
                            v02.m8711if(MenuSettingDialog.this.mContext).m8718this(wq.Cdo.f7643continue, strArr[i3]);
                            v02.m8711if(MenuSettingDialog.this.mContext).m8714else(wq.Cdo.f7637abstract, num.intValue());
                            MenuSettingDialog.this.onCallbackListener.onComicBackgroundColor(num);
                            MenuSettingDialog.this.tv_comic_bg.setText(strArr[i3]);
                        }
                        dialogInterface.dismiss();
                    }
                });
                cfor.m24051this().show();
                break;
            case R.id.arg_res_0x7f090354 /* 2131297108 */:
                onCallbackListener oncallbacklistener = this.onCallbackListener;
                if (oncallbacklistener != null) {
                    oncallbacklistener.onReadMode(3);
                    break;
                }
                break;
            case R.id.arg_res_0x7f090356 /* 2131297110 */:
                onCallbackListener oncallbacklistener2 = this.onCallbackListener;
                if (oncallbacklistener2 != null) {
                    oncallbacklistener2.onReadMode(2);
                    break;
                }
                break;
            case R.id.arg_res_0x7f090357 /* 2131297111 */:
                onCallbackListener oncallbacklistener3 = this.onCallbackListener;
                if (oncallbacklistener3 != null) {
                    oncallbacklistener3.onReadMode(1);
                    break;
                }
                break;
        }
    }

    public void setComicShelf(ComicShelfBean comicShelfBean) {
        this.bookShelfBean = comicShelfBean;
    }

    public void setOnCallbackListener(onCallbackListener oncallbacklistener) {
        this.onCallbackListener = oncallbacklistener;
    }

    public void show() {
        BottomSheetDialog bottomSheetDialog = this.dialog;
        if (bottomSheetDialog == null || bottomSheetDialog.isShowing()) {
            return;
        }
        this.dialog.show();
        Celse.l2(this.mActivity, this.dialog).b0();
    }

    public void updateReadModeColor(int i) {
        if (i == 2) {
            this.readModeNormal.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f080079));
            this.readModeRoll.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f0801ea));
            this.readModeJapan.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f0801ea));
        } else if (i == 3) {
            this.readModeNormal.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f0801ea));
            this.readModeRoll.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f0801ea));
            this.readModeJapan.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f080079));
        } else {
            this.readModeNormal.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f0801ea));
            this.readModeRoll.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f080079));
            this.readModeJapan.setBackground(ContextCompat.getDrawable(this.mContext, R.drawable.arg_res_0x7f0801ea));
        }
    }
}
