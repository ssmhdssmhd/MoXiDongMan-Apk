package com.wsw.cospa.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.j10;
import android.support.v4.l22;
import android.support.v4.v02;
import android.support.v4.wq;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.Switch;
import android.widget.TextView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.xw.repo.BubbleSeekBar;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class BrightnessSettingWindow extends PopupWindow implements CompoundButton.OnCheckedChangeListener, View.OnClickListener, BubbleSeekBar.OnProgressChangedListener {
    public BubbleSeekBar bsb_brightness;
    private List<Integer> colorMap;
    private Context context;
    private onBrightnessSettingListener listener;
    public LinearLayout ll_comic_bg;
    private BaseActivity mActivity;
    public Switch switchEyecareMode;
    public Switch switchKeepScreen;
    public TextView tv_comic_bg;

    public interface onBrightnessSettingListener {
        void onComicBackgroundColor(Integer num);

        void onSwitchEyeCareMode(boolean z);

        void onWindowBrightness(float f);
    }

    public BrightnessSettingWindow(Context context) {
        super(-1, -2);
        this.colorMap = new ArrayList();
        this.context = context;
        this.mActivity = (BaseActivity) context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.arg_res_0x7f0c004c, (ViewGroup) null, false);
        setContentView(viewInflate);
        setBackgroundDrawable(new ColorDrawable());
        setTouchable(true);
        setOutsideTouchable(true);
        setFocusable(true);
        setAnimationStyle(R.style.arg_res_0x7f12035e);
        update();
        initView(viewInflate);
    }

    @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
    public void getProgressOnActionUp(BubbleSeekBar bubbleSeekBar, int i, float f) {
    }

    @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
    public void getProgressOnFinally(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z) {
    }

    public void initView(View view) {
        this.colorMap.add(Integer.valueOf(R.color.arg_res_0x7f0601b7));
        this.colorMap.add(Integer.valueOf(R.color.arg_res_0x7f060141));
        this.colorMap.add(Integer.valueOf(R.color.arg_res_0x7f060380));
        this.bsb_brightness = (BubbleSeekBar) view.findViewById(R.id.arg_res_0x7f0900c5);
        this.ll_comic_bg = (LinearLayout) view.findViewById(R.id.arg_res_0x7f090279);
        this.tv_comic_bg = (TextView) view.findViewById(R.id.arg_res_0x7f09046d);
        this.switchEyecareMode = (Switch) view.findViewById(R.id.arg_res_0x7f0903f0);
        this.switchKeepScreen = (Switch) view.findViewById(R.id.arg_res_0x7f0903f9);
        this.bsb_brightness.setOnProgressChangedListener(this);
        String strM8719try = v02.m8711if(this.mActivity).m8719try(wq.l, "0");
        if (!TextUtils.isEmpty(strM8719try) && !"0".equals(strM8719try)) {
            this.bsb_brightness.setProgress(Float.parseFloat(strM8719try));
        }
        this.switchKeepScreen.setChecked(v02.m8711if(this.context).m8713do(wq.f, false));
        this.switchKeepScreen.setOnCheckedChangeListener(this);
        this.switchEyecareMode.setOnCheckedChangeListener(this);
        this.switchEyecareMode.setChecked(v02.m8711if(this.context).m8713do(wq.k, false));
        this.ll_comic_bg.setOnClickListener(this);
        String strM8719try2 = v02.m8711if(this.context).m8719try(wq.Cdo.f7643continue, "");
        if (l22.m4571return(strM8719try2)) {
            this.tv_comic_bg.setText("黑色");
        } else {
            this.tv_comic_bg.setText(strM8719try2);
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int id = compoundButton.getId();
        if (id != R.id.arg_res_0x7f0903f0) {
            if (id != R.id.arg_res_0x7f0903f9) {
                return;
            }
            v02.m8711if(this.context).m8712case(wq.f, z);
            j10.m3664throw(this.mActivity);
            return;
        }
        v02.m8711if(this.context).m8712case(wq.k, z);
        onBrightnessSettingListener onbrightnesssettinglistener = this.listener;
        if (onbrightnesssettinglistener != null) {
            onbrightnesssettinglistener.onSwitchEyeCareMode(z);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.arg_res_0x7f090279) {
            return;
        }
        QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this.context);
        cfor.m24055volatile("设置背景颜色");
        final String[] strArr = {"灰色", "黑色", "白色"};
        String strM8719try = v02.m8711if(this.context).m8719try(wq.Cdo.f7643continue, "");
        int i = 1;
        for (int i2 = 0; i2 < 3; i2++) {
            if (strArr[i2].equals(strM8719try)) {
                i = i2;
            }
        }
        cfor.b(i);
        cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: com.wsw.cospa.widget.BrightnessSettingWindow.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                Integer num = (Integer) BrightnessSettingWindow.this.colorMap.get(i3);
                if (BrightnessSettingWindow.this.listener != null) {
                    v02.m8711if(BrightnessSettingWindow.this.context).m8718this(wq.Cdo.f7643continue, strArr[i3]);
                    v02.m8711if(BrightnessSettingWindow.this.context).m8714else(wq.Cdo.f7637abstract, num.intValue());
                    BrightnessSettingWindow.this.listener.onComicBackgroundColor(num);
                    BrightnessSettingWindow.this.tv_comic_bg.setText(strArr[i3]);
                }
                dialogInterface.dismiss();
            }
        });
        cfor.m24051this().show();
    }

    @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
    public void onProgressChanged(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z) {
        if (bubbleSeekBar.getId() != R.id.arg_res_0x7f0900c5 || this.listener == null) {
            return;
        }
        v02.m8711if(this.mActivity).m8718this(wq.l, String.valueOf(f));
        this.listener.onWindowBrightness(1.0f - f);
    }

    public void setOnBrightnessSettingListener(onBrightnessSettingListener onbrightnesssettinglistener) {
        this.listener = onbrightnesssettinglistener;
    }
}
