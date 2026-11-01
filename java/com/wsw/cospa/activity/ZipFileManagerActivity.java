package com.wsw.cospa.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.support.v4.bb0;
import android.support.v4.j10;
import android.support.v4.j8;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mm;
import android.support.v4.on0;
import android.support.v4.p12;
import android.support.v4.v02;
import android.support.v4.wq;
import android.support.v4.zl1;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.ButtonBarLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.gyf.immersionbar.Celse;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ZipFileManagerActivity;
import com.wsw.cospa.adapter.LocalCompressAdapter;
import com.wsw.cospa.adapter.ZipFileManagerAadapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.Node;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.BrightnessSettingWindow;
import com.wsw.cospa.widget.MenuSettingDialog;
import com.wsw.cospa.widget.view.BatteryView;
import com.wsw.cospa.widget.view.ButtomMenuLayout;
import com.wsw.cospa.widget.view.OnTapGestureListener;
import com.wsw.cospa.widget.view.PreCacheLayoutManager;
import com.wsw.cospa.widget.view.RecyclerViewPager;
import com.wsw.cospa.widget.view.ReverseSeekBar;
import com.wsw.cospa.widget.view.ZoomableRecyclerView;
import com.xw.repo.BubbleSeekBar;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import org.adw.library.widgets.discreteseekbar.DiscreteSeekBar;

/* loaded from: classes2.dex */
public class ZipFileManagerActivity extends BaseActivity implements ZipFileManagerAadapter.OnItemClickListener, ZipFileManagerAadapter.OnItemCheckedListener, View.OnClickListener, RecyclerView.OnItemTouchListener, OnTapGestureListener, CompoundButton.OnCheckedChangeListener, View.OnTouchListener, DiscreteSeekBar.OnProgressChangeListener {
    private static final String a = ZipFileManagerActivity.class.getSimpleName();

    /* renamed from: abstract, reason: not valid java name */
    private LocalCompressAdapter f21427abstract;

    @BindView(R.id.arg_res_0x7f09009e)
    public LinearLayout autoPlayLayout;

    @BindView(R.id.arg_res_0x7f0900a0)
    public AppCompatButton backButton;

    @BindView(R.id.arg_res_0x7f0903da)
    public BatteryView batteryView;

    /* renamed from: break, reason: not valid java name */
    private ZipFile f21428break;

    @BindView(R.id.arg_res_0x7f0900c4)
    public BubbleSeekBar bsb_auto;

    @BindView(R.id.arg_res_0x7f0900d8)
    public ButtomMenuLayout buttomLayout;

    @BindView(R.id.arg_res_0x7f0900dd)
    public AppCompatButton cancelButton;

    /* renamed from: class, reason: not valid java name */
    private Node f21430class;

    @BindView(R.id.arg_res_0x7f09010e)
    public LinearLayout comic_status_bar;

    @BindView(R.id.arg_res_0x7f09010f)
    public AppCompatButton confirmButton;

    /* renamed from: const, reason: not valid java name */
    private LinearLayoutManager f21431const;

    @BindView(R.id.arg_res_0x7f090115)
    public RelativeLayout contentView;

    /* renamed from: continue, reason: not valid java name */
    private boolean f21432continue;

    @BindView(R.id.arg_res_0x7f09016a)
    public RelativeLayout error_view;

    @BindView(R.id.arg_res_0x7f0901a0)
    public Button event_bottom;

    @BindView(R.id.arg_res_0x7f0901a1)
    public Button event_left;

    @BindView(R.id.arg_res_0x7f0901a2)
    public Button event_middle;

    @BindView(R.id.arg_res_0x7f0901a3)
    public Button event_right;

    @BindView(R.id.arg_res_0x7f0901a4)
    public Button event_top;

    @BindView(R.id.arg_res_0x7f0901a5)
    public Button event_up_down_middle;

    /* renamed from: extends, reason: not valid java name */
    private Ccase f21434extends;

    /* renamed from: final, reason: not valid java name */
    private ZipFileManagerAadapter f21435final;

    /* renamed from: goto, reason: not valid java name */
    public RipeFile f21437goto;

    /* renamed from: implements, reason: not valid java name */
    private BrightnessSettingWindow f21438implements;

    /* renamed from: import, reason: not valid java name */
    private PreCacheLayoutManager f21439import;

    @BindView(R.id.arg_res_0x7f090233)
    public ImageView ivAutoPlay;

    @BindView(R.id.arg_res_0x7f090238)
    public AppCompatImageView iv_close_left_right_tips;

    @BindView(R.id.arg_res_0x7f090239)
    public AppCompatImageView iv_close_up_down_tips;

    @BindView(R.id.arg_res_0x7f090272)
    public LinearLayout ll_auto;

    @BindView(R.id.arg_res_0x7f090276)
    public LinearLayout ll_click_event;

    @BindView(R.id.arg_res_0x7f090283)
    public LinearLayout ll_left_right_content;

    @BindView(R.id.arg_res_0x7f090284)
    public LinearLayout ll_left_right_tips;

    @BindView(R.id.arg_res_0x7f09028b)
    public LinearLayout ll_seek_progress;

    @BindView(R.id.arg_res_0x7f09028f)
    public LinearLayout ll_up_down_content;

    @BindView(R.id.arg_res_0x7f090290)
    public LinearLayout ll_up_down_tips;

    @BindView(R.id.arg_res_0x7f09029a)
    public LinearLayout mButtomMenu;

    @BindView(R.id.arg_res_0x7f09029b)
    public ButtonBarLayout mButtonBar;

    @BindView(R.id.arg_res_0x7f09010a)
    public RelativeLayout mComicPreview;

    @BindView(R.id.arg_res_0x7f0901bb)
    public LinearLayout mFileManagerView;

    @BindView(R.id.arg_res_0x7f0901de)
    public TextView mHeadTitleRight;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mIndicatorRoot;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a4)
    public RecyclerView mRecyclerView;

    @BindView(R.id.arg_res_0x7f0902a5)
    public RecyclerViewPager mRecyclerViewPager;

    @BindView(R.id.arg_res_0x7f0902a8)
    public ReverseSeekBar mSeekBarScroll;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f0902ae)
    public ZoomableRecyclerView mZoomRecyclerView;

    /* renamed from: native, reason: not valid java name */
    private PagerSnapHelper f21442native;

    @BindView(R.id.arg_res_0x7f0902fb)
    public TextView nextChapter;

    @BindView(R.id.arg_res_0x7f090332)
    public TextView preChapter;

    @BindView(R.id.arg_res_0x7f090385)
    public LinearLayout scroll_mode_event_left_right;

    @BindView(R.id.arg_res_0x7f090386)
    public LinearLayout scroll_mode_event_up_down;

    @BindView(R.id.arg_res_0x7f0903d9)
    public TextView statusBatteryText;

    @BindView(R.id.arg_res_0x7f0903db)
    public TextView statusChapterText;

    @BindView(R.id.arg_res_0x7f0903dc)
    public TextView statusTimeText;

    /* renamed from: strictfp, reason: not valid java name */
    private ZipEntry f21449strictfp;

    /* renamed from: this, reason: not valid java name */
    public Integer f21453this;

    /* renamed from: throw, reason: not valid java name */
    private Celse f21454throw;

    /* renamed from: transient, reason: not valid java name */
    private MenuSettingDialog f21456transient;

    @BindView(R.id.arg_res_0x7f090461)
    public TextView tvAutoPlay;

    @BindView(R.id.arg_res_0x7f090463)
    public TextView tvBrightness;

    @BindView(R.id.arg_res_0x7f090466)
    public TextView tvCatalog;

    @BindView(R.id.arg_res_0x7f090474)
    public TextView tvCurrentPath;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f0904b0)
    public TextView tvSetting;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tvTitle;

    @BindView(R.id.arg_res_0x7f0904d9)
    public View v_brightness;

    /* renamed from: while, reason: not valid java name */
    private int[] f21458while;

    /* renamed from: catch, reason: not valid java name */
    private Node f21429catch = new Node();

    /* renamed from: super, reason: not valid java name */
    private String[] f21450super = {"png", "jpg", "jpeg", "webp", "gif"};

    /* renamed from: public, reason: not valid java name */
    private int f21446public = 0;

    /* renamed from: return, reason: not valid java name */
    public boolean f21447return = true;

    /* renamed from: static, reason: not valid java name */
    private int f21448static = 0;

    /* renamed from: switch, reason: not valid java name */
    private int f21451switch = 0;

    /* renamed from: throws, reason: not valid java name */
    private boolean f21455throws = false;

    /* renamed from: default, reason: not valid java name */
    private RectF f21433default = null;

    /* renamed from: finally, reason: not valid java name */
    private int f21436finally = -1;

    /* renamed from: package, reason: not valid java name */
    private boolean f21443package = false;

    /* renamed from: private, reason: not valid java name */
    private final long f21444private = 5;

    /* renamed from: volatile, reason: not valid java name */
    private boolean f21457volatile = false;

    /* renamed from: interface, reason: not valid java name */
    private boolean f21441interface = true;

    /* renamed from: protected, reason: not valid java name */
    private boolean f21445protected = true;

    /* renamed from: instanceof, reason: not valid java name */
    private Handler f21440instanceof = new Handler();

    /* renamed from: synchronized, reason: not valid java name */
    private Cnew f21452synchronized = new Cnew(this, null);

    public class CustomScrollListener extends RecyclerView.OnScrollListener {
        public CustomScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i != 1) {
                return;
            }
            ButtomMenuLayout buttomMenuLayout = ZipFileManagerActivity.this.buttomLayout;
            if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                ZipFileManagerActivity.this.buttomLayout.setVisibility(8);
                ZipFileManagerActivity.this.y();
            }
            if (ZipFileManagerActivity.this.f21456transient != null && ZipFileManagerActivity.this.f21456transient.isShowing()) {
                ZipFileManagerActivity.this.f21456transient.dismiss();
                ZipFileManagerActivity.this.y();
            }
            ZipFileManagerActivity.this.z();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            recyclerView.computeVerticalScrollOffset();
            int iFindFirstVisibleItemPosition = ZipFileManagerActivity.this.f21439import.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = ZipFileManagerActivity.this.f21439import.findLastVisibleItemPosition();
            int itemCount = ZipFileManagerActivity.this.f21427abstract.getItemCount();
            int iM8715for = v02.m8711if(ZipFileManagerActivity.this).m8715for(wq.f7635volatile, 1);
            if (iFindFirstVisibleItemPosition <= 0) {
                if (iM8715for == 1 && i2 < -10 && ZipFileManagerActivity.this.f21441interface) {
                    ZipFileManagerActivity.this.l0();
                    ZipFileManagerActivity.this.f21441interface = false;
                } else if ((iM8715for == 2 || iM8715for == 3) && i < -10 && ZipFileManagerActivity.this.f21441interface) {
                    ZipFileManagerActivity.this.l0();
                    ZipFileManagerActivity.this.f21441interface = false;
                }
            } else if (iFindLastVisibleItemPosition >= itemCount - 3) {
                if (iM8715for == 1 && i2 > 10 && ZipFileManagerActivity.this.f21445protected) {
                    ZipFileManagerActivity.this.k0();
                    ZipFileManagerActivity.this.f21445protected = false;
                } else if ((iM8715for == 2 || iM8715for == 3) && i > 0 && ZipFileManagerActivity.this.f21445protected) {
                    ZipFileManagerActivity.this.k0();
                    ZipFileManagerActivity.this.f21445protected = false;
                }
            }
            if (itemCount <= 0 || iFindFirstVisibleItemPosition > itemCount - 1) {
                return;
            }
            ZipEntry zipEntryM25771if = ZipFileManagerActivity.this.f21427abstract.m25771if(iFindFirstVisibleItemPosition);
            int i3 = ZipFileManagerActivity.this.f21436finally;
            int i4 = iFindFirstVisibleItemPosition + 1;
            ZipFileManagerActivity.this.f21436finally = i4;
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            zipFileManagerActivity.mSeekBarScroll.setMax(zipFileManagerActivity.f21427abstract.getItemCount());
            ZipFileManagerActivity.this.mSeekBarScroll.setProgress(i4);
            String str = String.format("%d/%d", Integer.valueOf(i4), Integer.valueOf(ZipFileManagerActivity.this.f21427abstract.getItemCount()));
            String unused = ZipFileManagerActivity.a;
            StringBuilder sb = new StringBuilder();
            sb.append(" 章节名： ");
            sb.append(zipEntryM25771if.getName());
            sb.append(" onScrolled: ");
            sb.append(str);
            ZipFileManagerActivity.this.mHeadTitleRight.setText(str);
            ZipFileManagerActivity.this.statusChapterText.setText(zipEntryM25771if.getName());
            ZipFileManagerActivity.this.f21449strictfp = zipEntryM25771if;
            if (i3 != ZipFileManagerActivity.this.f21436finally) {
                ZipFileManagerActivity.this.f21441interface = true;
                ZipFileManagerActivity.this.f21445protected = true;
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ZipFileManagerActivity$case, reason: invalid class name */
    public class Ccase extends BroadcastReceiver {
        public Ccase() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m25417do() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            zipFileManagerActivity.registerReceiver(zipFileManagerActivity.f21434extends, intentFilter);
        }

        /* renamed from: if, reason: not valid java name */
        public void m25418if() {
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            zipFileManagerActivity.unregisterReceiver(zipFileManagerActivity.f21434extends);
            ZipFileManagerActivity.this.f21434extends = null;
        }

        @Override // android.content.BroadcastReceiver
        @SuppressLint({"DefaultLocale"})
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.TIME_TICK".equals(intent.getAction())) {
                ZipFileManagerActivity.this.D0();
            } else if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                ZipFileManagerActivity.this.D0();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ZipFileManagerActivity$do, reason: invalid class name */
    public class Cdo extends PreCacheLayoutManager {
        public Cdo(Context context) {
            super(context);
        }

        @Override // com.wsw.cospa.widget.view.PreCacheLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
        public int getExtraLayoutSpace(RecyclerView.State state) {
            return 2;
        }
    }

    /* renamed from: com.wsw.cospa.activity.ZipFileManagerActivity$for, reason: invalid class name */
    public class Cfor implements BrightnessSettingWindow.onBrightnessSettingListener {
        public Cfor() {
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onComicBackgroundColor(Integer num) {
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            zipFileManagerActivity.mComicPreview.setBackgroundColor(zipFileManagerActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                ZipFileManagerActivity.this.m25876super();
            } else {
                ZipFileManagerActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onWindowBrightness(float f) {
            ZipFileManagerActivity.this.v_brightness.setAlpha(f);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ZipFileManagerActivity$if, reason: invalid class name */
    public class Cif implements MenuSettingDialog.onCallbackListener {
        public Cif() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public /* synthetic */ void m25419break(View view) {
            ZipFileManagerActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ZipFileManagerActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public /* synthetic */ void m25421catch(View view) {
            ZipFileManagerActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ZipFileManagerActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public /* synthetic */ void m25422class(View view) {
            ZipFileManagerActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ZipFileManagerActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public /* synthetic */ void m25424else(View view) {
            ZipFileManagerActivity.this.scroll_mode_event_up_down.setVisibility(8);
            ZipFileManagerActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public /* synthetic */ void m25426goto(View view) {
            ZipFileManagerActivity.this.scroll_mode_event_up_down.setVisibility(8);
            ZipFileManagerActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public /* synthetic */ void m25429this(View view) {
            ZipFileManagerActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ZipFileManagerActivity.this.ll_click_event.setVisibility(8);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onClickEventPosition() {
            ZipFileManagerActivity.this.y();
            int iF = ZipFileManagerActivity.this.F();
            if (iF == 1) {
                ZipFileManagerActivity.this.scroll_mode_event_up_down.setVisibility(0);
                ZipFileManagerActivity.this.scroll_mode_event_left_right.setVisibility(8);
                ZipFileManagerActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.instanceof
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21492do.m25424else(view);
                    }
                });
                ZipFileManagerActivity.this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.transient
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21515do.m25426goto(view);
                    }
                });
            } else if (iF == 2) {
                ZipFileManagerActivity.this.scroll_mode_event_up_down.setVisibility(8);
                ZipFileManagerActivity.this.scroll_mode_event_left_right.setVisibility(0);
                ZipFileManagerActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.b
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21472do.m25429this(view);
                    }
                });
                ZipFileManagerActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.synchronized
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21511do.m25419break(view);
                    }
                });
                ZipFileManagerActivity.this.event_right.setText("下一页");
                ZipFileManagerActivity.this.event_left.setText("上一页");
            } else if (iF == 3) {
                ZipFileManagerActivity.this.scroll_mode_event_up_down.setVisibility(8);
                ZipFileManagerActivity.this.scroll_mode_event_left_right.setVisibility(0);
                ZipFileManagerActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.implements
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21490do.m25421catch(view);
                    }
                });
                ZipFileManagerActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21470do.m25422class(view);
                    }
                });
                ZipFileManagerActivity.this.event_right.setText("上一页");
                ZipFileManagerActivity.this.event_left.setText("下一页");
            }
            ZipFileManagerActivity.this.ll_click_event.setVisibility(0);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onComicBackgroundColor(Integer num) {
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            zipFileManagerActivity.mComicPreview.setBackgroundColor(zipFileManagerActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onReadMode(int i) {
            ZipFileManagerActivity.this.C0(i);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onShowComicState() {
            if (v02.m8711if(ZipFileManagerActivity.this).m8713do(wq.m, false)) {
                ZipFileManagerActivity.this.comic_status_bar.setVisibility(8);
            } else {
                ZipFileManagerActivity.this.comic_status_bar.setVisibility(0);
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                ZipFileManagerActivity.this.m25876super();
            } else {
                ZipFileManagerActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchNavigationBar() {
            if (v02.m8711if(ZipFileManagerActivity.this).m8713do(wq.i, false)) {
                ZipFileManagerActivity.this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
            } else {
                ZipFileManagerActivity.this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchPagingReverse(boolean z) {
            v02.m8711if(ZipFileManagerActivity.this).m8712case(wq.E, z);
            ZipFileManagerActivity.this.finish();
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            ZipFileManagerActivity.y0(zipFileManagerActivity, zipFileManagerActivity.f21437goto, zipFileManagerActivity.f21453this);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchReaderPaging(boolean z) {
            v02.m8711if(ZipFileManagerActivity.this).m8712case(wq.D, z);
            ZipFileManagerActivity.this.finish();
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            ZipFileManagerActivity.y0(zipFileManagerActivity, zipFileManagerActivity.f21437goto, zipFileManagerActivity.f21453this);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchStatusBar() {
            if (v02.m8711if(ZipFileManagerActivity.this).m8713do(wq.h, false)) {
                ZipFileManagerActivity.this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            } else {
                ZipFileManagerActivity.this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchWhiteEdge(boolean z) {
            v02.m8711if(ZipFileManagerActivity.this).m8712case(wq.F, z);
            ZipFileManagerActivity.this.finish();
            ZipFileManagerActivity zipFileManagerActivity = ZipFileManagerActivity.this;
            ZipFileManagerActivity.y0(zipFileManagerActivity, zipFileManagerActivity.f21437goto, zipFileManagerActivity.f21453this);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ZipFileManagerActivity$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f21464do;

        /* renamed from: for, reason: not valid java name */
        public int f21465for;

        /* renamed from: if, reason: not valid java name */
        public int f21466if;

        private Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iM8715for = v02.m8711if(ZipFileManagerActivity.this).m8715for(wq.f7635volatile, 1);
            if (iM8715for != 1) {
                if (iM8715for == 2) {
                    ZipFileManagerActivity.this.p0();
                } else {
                    ZipFileManagerActivity.this.x();
                }
                float max = ZipFileManagerActivity.this.bsb_auto.getMax();
                float progressFloat = ZipFileManagerActivity.this.bsb_auto.getProgressFloat();
                ZipFileManagerActivity.this.f21440instanceof.removeCallbacks(ZipFileManagerActivity.this.f21452synchronized);
                ZipFileManagerActivity.this.f21440instanceof.postDelayed(ZipFileManagerActivity.this.f21452synchronized, (long) ((max - progressFloat) * 10.0f * 1000.0f));
                return;
            }
            if (this.f21464do >= this.f21466if || !ZipFileManagerActivity.this.mZoomRecyclerView.canScrollVertically(1)) {
                this.f21465for = 0;
                this.f21466if = 0;
                this.f21464do = 0;
                ZipFileManagerActivity.this.f21440instanceof.removeCallbacks(ZipFileManagerActivity.this.f21452synchronized);
                return;
            }
            this.f21464do += this.f21465for;
            ZipFileManagerActivity.this.mZoomRecyclerView.scrollBy(0, ZipFileManagerActivity.this.mZoomRecyclerView.getScrollY() + this.f21465for);
            ZipFileManagerActivity.this.f21440instanceof.removeCallbacks(ZipFileManagerActivity.this.f21452synchronized);
            ZipFileManagerActivity.this.f21440instanceof.postDelayed(ZipFileManagerActivity.this.f21452synchronized, 5L);
        }

        public /* synthetic */ Cnew(ZipFileManagerActivity zipFileManagerActivity, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.activity.ZipFileManagerActivity$try, reason: invalid class name */
    public class Ctry implements Comparator<Node> {
        private Ctry() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Node node, Node node2) {
            return ZipFileManagerActivity.this.x0(node.name).compareTo(ZipFileManagerActivity.this.x0(node2.name));
        }
    }

    public static void A(Activity activity) {
        try {
            Method declaredMethod = Activity.class.getDeclaredMethod("convertFromTranslucent", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(activity, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    private void A0() {
        if (this.f21443package) {
            this.f21443package = false;
            this.ll_auto.setVisibility(8);
            this.ll_seek_progress.setVisibility(8);
            this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f080107);
            Cnew cnew = this.f21452synchronized;
            cnew.f21466if = 0;
            this.f21440instanceof.removeCallbacks(cnew);
        }
    }

    private void B(int i) {
        if (i == 1) {
            s0();
            return;
        }
        if (i == 2) {
            p0();
            return;
        }
        if (i == 4) {
            m0();
        } else if (i == 5) {
            j0();
        } else {
            if (i != 11) {
                return;
            }
            B0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0(int i) {
        v02.m8711if(this).m8714else(wq.f7635volatile, i);
        recreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D0() {
        int iM3742do = j8.m3742do(this);
        this.statusBatteryText.setText(iM3742do + "");
        this.batteryView.setPower(iM3742do);
        this.statusTimeText.setText(l22.m4563for(System.currentTimeMillis(), "HH:mm"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int F() {
        return v02.m8711if(this).m8715for(wq.f7635volatile, 1);
    }

    private int G(float f, float f2) {
        getWindowManager().getDefaultDisplay().getSize(new Point());
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        float f3 = r0.x / 3.0f;
        float f4 = r0.y / 3.0f;
        if (iM8715for == 1) {
            if (f2 < f4) {
                return this.f21458while[0];
            }
            if (f2 > f4 && f2 < f4 * 2.0f) {
                return this.f21458while[1];
            }
            if (f2 > f4 * 2.0f) {
                return this.f21458while[2];
            }
        } else if (iM8715for == 3) {
            if (f < f3) {
                return this.f21458while[2];
            }
            if (f > f3 && f < f3 * 2.0f) {
                return this.f21458while[1];
            }
            if (f > f3 * 2.0f) {
                return this.f21458while[0];
            }
        } else {
            if (f < f3) {
                return this.f21458while[0];
            }
            if (f > f3 && f < f3 * 2.0f) {
                return this.f21458while[1];
            }
            if (f > f3 * 2.0f) {
                return this.f21458while[2];
            }
        }
        return 0;
    }

    private void I() throws IllegalStateException {
        boolean zM8713do;
        boolean zM8713do2;
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        this.f21458while = iM8715for == 1 ? mm.m4948new(this) : mm.m4945do(this);
        if (iM8715for == 1) {
            zM8713do = v02.m8711if(this).m8713do(wq.I0, true);
            this.scroll_mode_event_up_down.setVisibility(0);
            this.scroll_mode_event_left_right.setVisibility(8);
            this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.uj2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6914do.M(view);
                }
            });
            this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ck2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f817do.N(view);
                }
            });
            this.ll_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.jk2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f3132do.Y(view);
                }
            });
            this.ll_up_down_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.dk2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1078do.a0(view);
                }
            });
            this.event_top.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.gk2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2159do.b0(view);
                }
            });
            this.event_up_down_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ek2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1526do.c0(view);
                }
            });
            this.event_bottom.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vj2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f7229do.d0(view);
                }
            });
        } else {
            if (iM8715for == 2) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.J0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.mk2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f3935do.e0(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ak2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f188do.f0(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.lk2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f3690do.g0(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ik2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2799do.O(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.zj2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f8580do.P(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.kk2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f3404do.Q(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.nk2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f4254do.R(view);
                    }
                });
                this.event_right.setText("下一页");
                this.event_left.setText("上一页");
            } else if (iM8715for == 3) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.K0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.pk2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f5102do.S(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.xj2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f7972do.T(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wj2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f7545do.U(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ok2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f4666do.V(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.yj2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f8253do.W(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.fk2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f1886do.X(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.bk2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f467do.Z(view);
                    }
                });
                this.event_right.setText("上一页");
                this.event_left.setText("下一页");
            } else {
                zM8713do = true;
            }
            zM8713do = zM8713do2;
        }
        if (zM8713do) {
            this.ll_click_event.setVisibility(0);
        } else {
            this.ll_click_event.setVisibility(8);
        }
        if (iM8715for == 1) {
            this.mZoomRecyclerView.setVisibility(0);
            this.mRecyclerViewPager.setVisibility(8);
            this.mZoomRecyclerView.setScaleFactor(2.0f);
            this.mZoomRecyclerView.setDoubleTap(v02.m8711if(this).m8713do(wq.q, true));
            this.mZoomRecyclerView.setTapListenerListener(this);
        } else {
            this.mZoomRecyclerView.setVisibility(8);
            this.mRecyclerViewPager.setVisibility(0);
            if (v02.m8711if(this).m8713do(wq.p, false)) {
                this.mRecyclerViewPager.setScrollSpeed(1.0E-6f);
            } else {
                this.mRecyclerViewPager.setScrollSpeed(0.12f);
            }
            this.mRecyclerViewPager.setTriggerOffset(0.19999999f);
            this.mRecyclerViewPager.setScaleFactor(2.0f);
            this.mRecyclerViewPager.setDoubleTap(v02.m8711if(this).m8713do(wq.q, true));
            this.mRecyclerViewPager.setTapListenerListener(this);
        }
        Cdo cdo = new Cdo(this);
        this.f21439import = cdo;
        if (iM8715for == 2) {
            cdo.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f21439import);
            this.f21442native = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            this.f21442native.attachToRecyclerView(this.mRecyclerViewPager);
        } else if (iM8715for == 3) {
            cdo.setReverseLayout(true);
            this.f21439import.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f21439import);
            this.f21442native = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            this.f21442native.attachToRecyclerView(this.mRecyclerViewPager);
        } else {
            cdo.setOrientation(1);
            this.mZoomRecyclerView.setLayoutManager(this.f21439import);
            PagerSnapHelper pagerSnapHelper = this.f21442native;
            if (pagerSnapHelper != null) {
                pagerSnapHelper.attachToRecyclerView(null);
            }
        }
        this.f21456transient.initClickTips();
        this.f21456transient.updateReadModeColor(iM8715for);
        this.f21456transient.setOnCallbackListener(new Cif());
        this.f21438implements.setOnBrightnessSettingListener(new Cfor());
        RecyclerView recyclerView = iM8715for == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        recycledViewPool.setMaxRecycledViews(0, 10);
        recyclerView.setRecycledViewPool(recycledViewPool);
        LocalCompressAdapter localCompressAdapter = new LocalCompressAdapter(this, iM8715for);
        this.f21427abstract = localCompressAdapter;
        localCompressAdapter.setTapGestureListener(this);
        this.f21427abstract.m25775return(v02.m8711if(this).m8713do(wq.D, false));
        this.f21427abstract.m25776static(v02.m8711if(this).m8713do(wq.E, false));
        this.f21427abstract.m25778throws(v02.m8711if(this).m8713do(wq.F, false));
        this.f21427abstract.m25777switch(2.0f);
        this.f21427abstract.m25774public(v02.m8711if(this).m8713do(wq.q, true));
        this.f21427abstract.m25773native(true);
        recyclerView.setItemAnimator(null);
        recyclerView.setHasFixedSize(true);
        recyclerView.setItemViewCacheSize(10);
        recyclerView.setAdapter(this.f21427abstract);
    }

    private void J() {
        this.mSeekBarScroll.setReverse(v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 3);
        this.mSeekBarScroll.setOnProgressChangeListener(this);
    }

    private boolean L() {
        int itemCount = this.f21427abstract.getItemCount();
        return (itemCount == 0 || (this.f21439import.findFirstCompletelyVisibleItemPosition() == 0 && this.f21439import.findLastCompletelyVisibleItemPosition() == itemCount - 1)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h0(Node node, Node node2) {
        int iMin = Math.min(node.name.length(), node2.name.length());
        int i = 0;
        int i2 = 0;
        while (i < iMin && i2 < iMin) {
            if (node.name.charAt(i) <= '9' && node.name.charAt(i) >= '0' && node2.name.charAt(i2) <= '9' && node2.name.charAt(i2) >= '0') {
                String str = "";
                String str2 = "";
                while (i < node.name.length() && node.name.charAt(i) <= '9' && node.name.charAt(i) >= '0') {
                    str2 = str2 + node.name.charAt(i);
                    i++;
                }
                while (i2 < node2.name.length() && node2.name.charAt(i2) <= '9' && node2.name.charAt(i2) >= '0') {
                    str = str + node2.name.charAt(i2);
                    i2++;
                }
                int iW = w(str2);
                int iW2 = w(str);
                if (iW != iW2) {
                    return iW > iW2 ? 1 : -1;
                }
                if (str2.length() < str.length()) {
                    return 1;
                }
                if (str2.length() > str.length()) {
                    return -1;
                }
            } else {
                if (node.name.charAt(i) != node2.name.charAt(i2)) {
                    return node.name.charAt(i) > node2.name.charAt(i2) ? 1 : -1;
                }
                i++;
                i2++;
            }
        }
        return node.name.length() > node2.name.length() ? 1 : -1;
    }

    private void i0(Node node) {
        this.mFileManagerView.setVisibility(0);
        this.mComicPreview.setVisibility(8);
        this.tvTitle.setText(node.name);
        this.tvCurrentPath.setText(node.path);
        ArrayList arrayList = new ArrayList();
        q0(t0(node.path));
        Iterator<Map.Entry<String, Node>> it = node.children.entrySet().iterator();
        while (it.hasNext()) {
            Node value = it.next().getValue();
            if (node.isDir) {
                arrayList.add(value);
            } else {
                String strM499if = bb0.m499if(node.name);
                if ("png".equalsIgnoreCase(strM499if) || "jpg".equalsIgnoreCase(strM499if) || "webp".equalsIgnoreCase(strM499if) || "gif".equalsIgnoreCase(strM499if) || "bmp".equalsIgnoreCase(strM499if) || "zip".equalsIgnoreCase(strM499if) || "7z".equalsIgnoreCase(strM499if) || "rar".equalsIgnoreCase(strM499if)) {
                    arrayList.add(value);
                }
            }
        }
        o0(arrayList);
        this.f21435final.m25856catch(arrayList, this.f21428break);
    }

    private void j0() {
        k0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        Node nodeC = C();
        if (nodeC != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<Map.Entry<String, Node>> it = nodeC.children.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
            o0(arrayList);
            this.f21427abstract.m25772import(false, arrayList, false, this.f21428break);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        Node nodeD = D();
        if (nodeD != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<Map.Entry<String, Node>> it = nodeD.children.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
            o0(arrayList);
            this.f21427abstract.m25772import(false, arrayList, true, this.f21428break);
        }
    }

    private void m0() {
        l0();
    }

    public static void n0(LinearLayoutManager linearLayoutManager, RecyclerView recyclerView, int i) {
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (i <= iFindFirstVisibleItemPosition) {
            recyclerView.scrollToPosition(i);
            return;
        }
        if (i <= iFindLastVisibleItemPosition) {
            recyclerView.scrollBy(0, recyclerView.getChildAt(i - iFindFirstVisibleItemPosition).getTop());
        } else if (i > 0) {
            recyclerView.scrollToPosition(i - 1);
        } else {
            recyclerView.scrollToPosition(i);
        }
    }

    public static void o0(List<Node> list) {
        Collections.sort(list, new Comparator() { // from class: android.support.v4.hk2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ZipFileManagerActivity.h0((Node) obj, (Node) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if (iM8715for == 1) {
            if (this.f21439import.findLastVisibleItemPosition() == this.f21427abstract.getItemCount() - 1) {
                j0();
            }
            this.mZoomRecyclerView.smoothScrollBy(0, point.y);
            return;
        }
        int iE = E();
        if (iM8715for == 2) {
            if (iE == this.f21427abstract.getItemCount() - 1) {
                j0();
                return;
            } else {
                this.mRecyclerViewPager.smoothScrollToPosition(iE + 1);
                return;
            }
        }
        if (iE == 0) {
            m0();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iE - 1);
        }
    }

    private void r0() {
        this.f21432continue = false;
        Node node = this.f21430class.parent;
        this.mFileManagerView.setVisibility(0);
        this.mComicPreview.setVisibility(8);
        this.f21430class = node;
        this.tvTitle.setText(node.name);
        this.tvCurrentPath.setText(node.path);
        this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, Node>> it = node.children.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        o0(arrayList);
        this.f21435final.m25856catch(arrayList, this.f21428break);
    }

    /* JADX WARN: Path cross not found for [B:14:0x0025, B:23:0x0048], limit reached: 32 */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x003d -> B:23:0x0048). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int w(String str) {
        double d;
        char cCharAt;
        int i = 0;
        if (str == null || str.length() == 0) {
            return 0;
        }
        int length = str.length();
        double d2 = 0.0d;
        while (str.charAt(i) == ' ') {
            i++;
        }
        int i2 = 1;
        if (str.charAt(i) != '+') {
            if (str.charAt(i) == '-') {
                i2 = -1;
            } else {
                if (i < length || (cCharAt = str.charAt(i)) < '0' || cCharAt > '9') {
                    double d3 = i2;
                    Double.isNaN(d3);
                    d = d2 * d3;
                    if (d <= 2.147483647E9d) {
                        d = 2.147483647E9d;
                    } else if (d < -2.147483648E9d) {
                        d = -2.147483648E9d;
                    }
                    return (int) d;
                }
                double d4 = cCharAt - '0';
                Double.isNaN(d4);
                d2 = (d2 * 10.0d) + d4;
            }
        }
        i++;
        if (i < length) {
        }
        double d32 = i2;
        Double.isNaN(d32);
        d = d2 * d32;
        if (d <= 2.147483647E9d) {
        }
        return (int) d;
    }

    public static void y0(Context context, RipeFile ripeFile, Integer num) {
        Intent intent = new Intent(context, (Class<?>) ZipFileManagerActivity.class);
        intent.putExtra(wq.Cdo.f7671while, ripeFile);
        intent.putExtra(wq.Cdo.f7651goto, num);
        context.startActivity(intent);
    }

    private void z0() {
        if (this.f21443package) {
            return;
        }
        this.f21443package = true;
        this.ll_auto.setVisibility(0);
        this.ll_seek_progress.setVisibility(8);
        this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f08010c);
        if (v02.m8711if(this).m8715for(wq.f7635volatile, 1) != 1) {
            this.f21440instanceof.postDelayed(this.f21452synchronized, (long) ((this.bsb_auto.getMax() - this.bsb_auto.getProgressFloat()) * 10.0f * 1000.0f));
        } else {
            Cnew cnew = this.f21452synchronized;
            cnew.f21464do = 0;
            cnew.f21466if = Integer.MAX_VALUE;
            cnew.f21465for = (int) j10.m3660new(this, this.bsb_auto.getProgressFloat() * 2.0f);
            this.f21440instanceof.postDelayed(this.f21452synchronized, 5L);
        }
    }

    public void B0() {
        if (this.buttomLayout.isShow()) {
            this.buttomLayout.setVisibility(8);
        } else {
            this.buttomLayout.setVisibility(0);
        }
        y();
    }

    public Node C() {
        Node node;
        Node node2 = this.f21430class.parent;
        if (node2 == null || (node = node2.parent) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, Node>> it = node.children.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        o0(arrayList);
        String[] strArrSplit = this.f21449strictfp.getName().split(on0.f4694final);
        String name = this.f21449strictfp.getName();
        if (strArrSplit != null && strArrSplit.length > 2) {
            name = strArrSplit[strArrSplit.length - 2];
        }
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (((Node) arrayList.get(i2)).name.equals(name)) {
                i = i2;
            }
        }
        int i3 = i + 1;
        if (i3 < arrayList.size()) {
            return (Node) arrayList.get(i3);
        }
        return null;
    }

    public Node D() {
        Node node;
        Node node2 = this.f21430class.parent;
        if (node2 == null || (node = node2.parent) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, Node>> it = node.children.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        o0(arrayList);
        String[] strArrSplit = this.f21449strictfp.getName().split(on0.f4694final);
        String name = this.f21449strictfp.getName();
        if (strArrSplit != null && strArrSplit.length > 2) {
            name = strArrSplit[strArrSplit.length - 2];
        }
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (((Node) arrayList.get(i2)).name.equals(name)) {
                i = i2;
            }
        }
        int i3 = i - 1;
        if (i3 >= 0) {
            return (Node) arrayList.get(i3);
        }
        return null;
    }

    public int E() {
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if ((iM8715for != 2 && iM8715for != 3) || this.mRecyclerViewPager == null) {
            return this.f21439import.findFirstVisibleItemPosition();
        }
        int iM10242if = this.f21439import.canScrollHorizontally() ? zl1.m10242if(this.mRecyclerViewPager) : zl1.m10243new(this.mRecyclerViewPager);
        if (iM10242if < 0) {
            return 0;
        }
        return iM10242if;
    }

    public void H() throws IllegalStateException {
        int i = Build.VERSION.SDK_INT;
        if (i != 26) {
            p12.m5832case(this);
        }
        if (i >= 26) {
            A(this);
        }
        if (v02.m8711if(this).m8713do(wq.g, false)) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(1);
        }
        m25873else();
        this.f21454throw = Celse.k2(this);
        j10.m3664throw(this);
        MenuSettingDialog menuSettingDialog = new MenuSettingDialog(this);
        this.f21456transient = menuSettingDialog;
        menuSettingDialog.hideLongClickMenu(true);
        this.f21438implements = new BrightnessSettingWindow(this);
        if (v02.m8711if(this).m8713do(wq.m, false)) {
            this.comic_status_bar.setVisibility(8);
        } else {
            this.comic_status_bar.setVisibility(0);
        }
        if (v02.m8711if(this).m8713do(wq.k, false)) {
            m25876super();
        } else {
            m25875if();
        }
        this.mComicPreview.setBackgroundColor(getResources().getColor(v02.m8711if(this).m8715for(wq.Cdo.f7637abstract, R.color.arg_res_0x7f060141)));
        this.tvCatalog.setVisibility(8);
        this.autoPlayLayout.setOnClickListener(this);
        this.tvBrightness.setOnClickListener(this);
        this.tvSetting.setOnClickListener(this);
        this.mIndicatorRoot.setOnTouchListener(this);
        RecyclerView recyclerView = v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        recyclerView.addOnScrollListener(new CustomScrollListener());
        recyclerView.addOnItemTouchListener(this);
        this.buttomLayout.initChapterUrl(false);
        this.buttomLayout.initSkipChapter(false);
        this.buttomLayout.initSaveBookText(false);
        J();
        I();
    }

    public synchronized boolean K(String str) {
        for (String str2 : this.f21450super) {
            if (str.toUpperCase().endsWith("." + str2.toUpperCase())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        Intent intent = getIntent();
        this.f21437goto = (RipeFile) intent.getParcelableExtra(wq.Cdo.f7671while);
        this.f21453this = (Integer) intent.getSerializableExtra(wq.Cdo.f7651goto);
        this.mButtonBar.setVisibility(8);
        this.backButton.setText("返回");
        this.cancelButton.setText("取消");
        this.confirmButton.setText("确定");
        this.backButton.setOnClickListener(this);
        this.cancelButton.setOnClickListener(this);
        this.confirmButton.setOnClickListener(this);
        this.mFileManagerView.setVisibility(0);
        this.mComicPreview.setVisibility(8);
        q0(t0(this.f21437goto.getPath()));
        i0(this.f21429catch);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    public void hideProgress() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(0);
        this.f21447return = true;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0049;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        z();
        MenuSettingDialog menuSettingDialog = this.f21456transient;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.f21456transient.dismiss();
            y();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
            this.buttomLayout.setVisibility(8);
            y();
            return;
        }
        Node node = this.f21430class;
        if (node == null || node.name == this.f21429catch.name) {
            super.onBackPressed();
        } else {
            r0();
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        compoundButton.getId();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.arg_res_0x7f09009e /* 2131296414 */:
                if (!this.f21443package) {
                    z0();
                    break;
                } else {
                    A0();
                    break;
                }
            case R.id.arg_res_0x7f090463 /* 2131297379 */:
                w0();
                ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
                if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                    this.buttomLayout.setVisibility(8);
                }
                y();
                break;
            case R.id.arg_res_0x7f090466 /* 2131297382 */:
                z();
                ButtomMenuLayout buttomMenuLayout2 = this.buttomLayout;
                if (buttomMenuLayout2 != null && buttomMenuLayout2.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    y();
                }
                MenuSettingDialog menuSettingDialog = this.f21456transient;
                if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                    this.f21456transient.dismiss();
                    y();
                    break;
                }
                break;
            case R.id.arg_res_0x7f0904b0 /* 2131297456 */:
                this.f21456transient.show();
                z();
                ButtomMenuLayout buttomMenuLayout3 = this.buttomLayout;
                if (buttomMenuLayout3 != null && buttomMenuLayout3.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    y();
                    break;
                }
                break;
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f21440instanceof.removeCallbacks(this.f21452synchronized);
        Ccase ccase = this.f21434extends;
        if (ccase != null) {
            ccase.m25418if();
        }
        LocalCompressAdapter localCompressAdapter = this.f21427abstract;
        if (localCompressAdapter != null) {
            localCompressAdapter.m25779while();
        }
        this.f21456transient.dismiss();
        super.onDestroy();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            boolean z = true;
            if (action != 1) {
                if (action == 2) {
                    int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
                    if (!this.f21455throws) {
                        float f = scaledTouchSlop;
                        if (Math.abs(this.f21448static - motionEvent.getX()) <= f && Math.abs(this.f21451switch - motionEvent.getY()) <= f) {
                            z = false;
                        }
                        this.f21455throws = z;
                    }
                }
            } else if (!this.f21455throws) {
                int iM3648case = j10.m3648case(this);
                if (this.f21433default == null) {
                    float f2 = iM3648case;
                    this.f21433default = new RectF(j10.m3649catch() / 3.0f, f2 / 3.0f, (j10.m3649catch() * 2.0f) / 3.0f, (f2 * 2.0f) / 3.0f);
                }
                if (this.f21433default.contains(this.f21448static, this.f21451switch)) {
                    z();
                    MenuSettingDialog menuSettingDialog = this.f21456transient;
                    if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                        this.f21456transient.dismiss();
                        y();
                    }
                    return true;
                }
            }
        } else {
            this.f21448static = (int) motionEvent.getX();
            this.f21451switch = (int) motionEvent.getY();
            this.f21455throws = false;
        }
        return false;
    }

    @Override // com.wsw.cospa.adapter.ZipFileManagerAadapter.OnItemCheckedListener
    public void onItemChecked(Node node, boolean z, int i) {
    }

    @Override // com.wsw.cospa.adapter.ZipFileManagerAadapter.OnItemClickListener
    public void onItemClick(View view, Node node, int i) {
        Node node2;
        this.f21430class = node;
        if (node.isDir) {
            this.f21432continue = false;
            i0(node);
            return;
        }
        this.f21432continue = true;
        if (K(node.name)) {
            y();
            this.mFileManagerView.setVisibility(8);
            this.mComicPreview.setVisibility(0);
            String str = node.name;
            Node node3 = node.parent;
            if (node3 != null && (node2 = node3.parent) != null) {
                str = node2.name;
            }
            this.buttomLayout.initData(str);
            ArrayList arrayList = new ArrayList();
            Iterator<Map.Entry<String, Node>> it = node3.children.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getValue());
            }
            o0(arrayList);
            this.f21427abstract.m25772import(true, arrayList, false, this.f21428break);
            hideProgress();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        LocalCompressAdapter localCompressAdapter = this.f21427abstract;
        if (localCompressAdapter != null && localCompressAdapter.getItemCount() != 0) {
            int i2 = i != 24 ? i != 25 ? 0 : this.f21458while[4] : this.f21458while[3];
            boolean zM8713do = v02.m8711if(this).m8713do(wq.B, false);
            if (i2 != 0 && zM8713do) {
                B(i2);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.wsw.cospa.widget.view.OnTapGestureListener
    public void onLongPress(float f, float f2) {
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        Ccase ccase = this.f21434extends;
        if (ccase != null) {
            ccase.m25418if();
        }
    }

    @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
    public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        RecyclerView recyclerView = iM8715for == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        if (z) {
            if (iM8715for == 1) {
                n0(this.f21439import, recyclerView, (E() + i) - this.f21446public);
            } else {
                n0(this.f21439import, recyclerView, (E() + i) - this.f21446public);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Ccase ccase = new Ccase();
        this.f21434extends = ccase;
        ccase.m25417do();
        if (this.f21432continue) {
            y();
        }
    }

    @Override // com.wsw.cospa.widget.view.OnTapGestureListener
    public void onSingleTap(float f, float f2) {
        z();
        MenuSettingDialog menuSettingDialog = this.f21456transient;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.f21456transient.dismiss();
            y();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout == null || !buttomMenuLayout.isShow()) {
            B(G(f, f2));
        } else {
            this.buttomLayout.setVisibility(8);
            y();
        }
    }

    @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
    public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
    }

    @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
    public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.f21432continue) {
            y();
        }
    }

    public void q0(List<ZipEntry> list) {
        for (ZipEntry zipEntry : list) {
            String name = zipEntry.getName();
            if (zipEntry.isDirectory() && name.endsWith(on0.f4694final)) {
                name = name.substring(0, name.length() - 1);
            }
            if (name.startsWith(on0.f4694final)) {
                name = name.substring(1);
            }
            String[] strArrSplit = name.split(on0.f4694final);
            Node node = new Node();
            node.name = strArrSplit[strArrSplit.length - 1];
            node.time = zipEntry.getTime();
            node.size = zipEntry.getSize();
            node.zipEntry = zipEntry;
            node.isDir = zipEntry.isDirectory();
            if (strArrSplit.length == 1) {
                node.path = on0.f4694final + node.name;
                Node node2 = this.f21429catch;
                node.parent = node2;
                node2.children.put(node.name, node);
            } else {
                Node node3 = this.f21429catch;
                for (int i = 0; i < strArrSplit.length - 1; i++) {
                    String str = strArrSplit[i];
                    if (node3.children.containsKey(str)) {
                        node3 = node3.children.get(str);
                    } else {
                        Node node4 = new Node();
                        node4.parent = node3;
                        node4.name = str;
                        node4.path = node3.path + on0.f4694final + node4.name;
                        node4.isDir = true;
                        node3.children.put(str, node4);
                        node3 = node4;
                    }
                }
                node.parent = node3;
                node.path = node3.path + on0.f4694final + node.name;
                if (node.isDir) {
                    node3.children.put(node.name, node);
                } else {
                    String strM499if = bb0.m499if(node.name);
                    if ("png".equalsIgnoreCase(strM499if) || "jpg".equalsIgnoreCase(strM499if) || "webp".equalsIgnoreCase(strM499if) || "gif".equalsIgnoreCase(strM499if) || "bmp".equalsIgnoreCase(strM499if) || "zip".equalsIgnoreCase(strM499if) || "7z".equalsIgnoreCase(strM499if) || "rar".equalsIgnoreCase(strM499if)) {
                        node3.children.put(node.name, node);
                    }
                }
            }
        }
    }

    public void s0() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iE = E();
        if (v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 1) {
            this.mZoomRecyclerView.smoothScrollBy(0, -point.y);
            if (iE == 0) {
                m0();
                return;
            }
            return;
        }
        if (iE == 0) {
            m0();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iE - 1);
        }
    }

    public void showProgress() {
        this.mIndicatorView.setVisibility(0);
        this.contentView.setVisibility(8);
        this.error_view.setVisibility(8);
    }

    public List<ZipEntry> t0(String str) throws IOException {
        ArrayList arrayList = new ArrayList();
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                this.f21428break = new ZipFile(str, Charset.forName("GBK"));
            } else {
                this.f21428break = new ZipFile(str);
            }
            Node node = this.f21429catch;
            node.path = str;
            node.name = this.f21428break.getName();
            this.f21429catch.size = this.f21428break.size();
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
            while (true) {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("readZipFile: name ");
                sb.append(nextEntry.getName());
                arrayList.add(nextEntry);
            }
        } catch (Exception unused) {
            ZipFile zipFile = this.f21428break;
            if (zipFile != null) {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("readZipFile: name ");
                    sb2.append(zipEntryNextElement.getName());
                    arrayList.add(zipEntryNextElement);
                }
            }
        }
        return arrayList;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() throws IllegalStateException {
        p12.m5832case(this);
        Csynchronized.m27098for(this, this.mToolbar);
        H();
        this.f21431const = new LinearLayoutManager(this);
        this.f21435final = new ZipFileManagerAadapter(this, true, true, false, true);
        this.mRecyclerView.setLayoutManager(this.f21431const);
        this.mRecyclerView.setAdapter(this.f21435final);
        this.f21435final.setOnItemClickListener(this);
        this.f21435final.setOnItemCheckedListener(this);
    }

    public void u0() {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText("漫画已下架或是付费章节！");
        this.f21447return = false;
    }

    public void v0(String str) {
        this.mFileManagerView.setVisibility(8);
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText(str);
        this.f21447return = false;
    }

    public void w0() {
        BrightnessSettingWindow brightnessSettingWindow;
        if (isFinishing()) {
            return;
        }
        BrightnessSettingWindow brightnessSettingWindow2 = this.f21438implements;
        if ((brightnessSettingWindow2 == null || !brightnessSettingWindow2.isShowing()) && (brightnessSettingWindow = this.f21438implements) != null) {
            brightnessSettingWindow.showAtLocation(this.mComicPreview, 80, 0, 0);
        }
    }

    public void x() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iE = E();
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if (iM8715for == 1) {
            this.mZoomRecyclerView.smoothScrollBy(0, -point.y);
            if (iE == 0) {
                m0();
                return;
            }
            return;
        }
        if (iM8715for == 2) {
            if (iE == 0) {
                m0();
                return;
            } else {
                this.mRecyclerViewPager.smoothScrollToPosition(iE - 1);
                return;
            }
        }
        if (iE == this.f21427abstract.getItemCount() - 1) {
            j0();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iE + 1);
        }
    }

    public String x0(String str) {
        Matcher matcher = Pattern.compile("\\d+").matcher(str);
        return matcher.find() ? l22.m4553case("%04d", Long.valueOf(Long.valueOf(matcher.group(0)).longValue())) : str;
    }

    public void y() {
        boolean zM8713do = v02.m8711if(this).m8713do(wq.h, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.i, false);
        if (!zM8713do && zM8713do2) {
            this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f21454throw.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    public void z() {
        BrightnessSettingWindow brightnessSettingWindow = this.f21438implements;
        if (brightnessSettingWindow == null || !brightnessSettingWindow.isShowing()) {
            return;
        }
        this.f21438implements.dismiss();
    }
}
