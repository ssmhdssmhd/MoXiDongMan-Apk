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
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.LocalCompressAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.Node;
import com.wsw.cospa.bean.RipeFile;
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
import java.lang.reflect.Method;
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
import org.adw.library.widgets.discreteseekbar.DiscreteSeekBar;

/* loaded from: classes2.dex */
public class LocalCompressActivity extends BaseActivity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, OnTapGestureListener, View.OnTouchListener, DiscreteSeekBar.OnProgressChangeListener, RecyclerView.OnItemTouchListener {

    /* renamed from: strictfp, reason: not valid java name */
    private static final String f21187strictfp = LocalCompressActivity.class.getSimpleName();

    @BindView(R.id.arg_res_0x7f09009e)
    public LinearLayout autoPlayLayout;

    @BindView(R.id.arg_res_0x7f0903da)
    public BatteryView batteryView;

    /* renamed from: break, reason: not valid java name */
    private PreCacheLayoutManager f21189break;

    @BindView(R.id.arg_res_0x7f0900c4)
    public BubbleSeekBar bsb_auto;

    @BindView(R.id.arg_res_0x7f0900d8)
    public ButtomMenuLayout buttomLayout;

    /* renamed from: catch, reason: not valid java name */
    private PagerSnapHelper f21190catch;

    @BindView(R.id.arg_res_0x7f09010e)
    public LinearLayout comic_status_bar;

    @BindView(R.id.arg_res_0x7f090115)
    public RelativeLayout contentView;

    /* renamed from: default, reason: not valid java name */
    private ZipFile f21194default;

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
    private LocalCompressAdapter f21195extends;

    /* renamed from: goto, reason: not valid java name */
    private com.gyf.immersionbar.Celse f21198goto;

    /* renamed from: import, reason: not valid java name */
    private Ccase f21199import;

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

    @BindView(R.id.arg_res_0x7f0901de)
    public TextView mHeadTitleRight;

    @BindView(R.id.arg_res_0x7f0902a1)
    public RelativeLayout mIndicatorRoot;

    @BindView(R.id.arg_res_0x7f0902a2)
    public AVLoadingIndicatorView mIndicatorView;

    @BindView(R.id.arg_res_0x7f0902a5)
    public RecyclerViewPager mRecyclerViewPager;

    @BindView(R.id.arg_res_0x7f0902a8)
    public ReverseSeekBar mSeekBarScroll;

    @BindView(R.id.arg_res_0x7f0902ae)
    public ZoomableRecyclerView mZoomRecyclerView;

    @BindView(R.id.arg_res_0x7f0902fb)
    public TextView nextChapter;

    /* renamed from: package, reason: not valid java name */
    private MenuSettingDialog f21201package;

    @BindView(R.id.arg_res_0x7f090332)
    public TextView preChapter;

    /* renamed from: private, reason: not valid java name */
    private BrightnessSettingWindow f21202private;

    @BindView(R.id.arg_res_0x7f09036e)
    public RelativeLayout rootView;

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

    /* renamed from: switch, reason: not valid java name */
    public RipeFile f21207switch;

    /* renamed from: this, reason: not valid java name */
    private int[] f21208this;

    /* renamed from: throws, reason: not valid java name */
    public Integer f21210throws;

    @BindView(R.id.arg_res_0x7f090461)
    public TextView tvAutoPlay;

    @BindView(R.id.arg_res_0x7f090463)
    public TextView tvBrightness;

    @BindView(R.id.arg_res_0x7f090466)
    public TextView tvCatalog;

    @BindView(R.id.arg_res_0x7f09016b)
    public TextView tvErrorView;

    @BindView(R.id.arg_res_0x7f0904a7)
    public TextView tvRetry;

    @BindView(R.id.arg_res_0x7f0904b0)
    public TextView tvSetting;

    @BindView(R.id.arg_res_0x7f0904d9)
    public View v_brightness;

    /* renamed from: class, reason: not valid java name */
    private int f21191class = 0;

    /* renamed from: const, reason: not valid java name */
    public boolean f21192const = true;

    /* renamed from: final, reason: not valid java name */
    private int f21196final = 0;

    /* renamed from: super, reason: not valid java name */
    private int f21206super = 0;

    /* renamed from: throw, reason: not valid java name */
    private boolean f21209throw = false;

    /* renamed from: while, reason: not valid java name */
    private RectF f21211while = null;

    /* renamed from: native, reason: not valid java name */
    private int f21200native = -1;

    /* renamed from: public, reason: not valid java name */
    private boolean f21203public = false;

    /* renamed from: return, reason: not valid java name */
    private final long f21204return = 5;

    /* renamed from: static, reason: not valid java name */
    private String[] f21205static = {"png", "jpg", "jpeg", "webp", "gif", "zip", "rar"};

    /* renamed from: finally, reason: not valid java name */
    private Node f21197finally = new Node();

    /* renamed from: abstract, reason: not valid java name */
    private Handler f21188abstract = new Handler();

    /* renamed from: continue, reason: not valid java name */
    private Cnew f21193continue = new Cnew(this, null);

    public class CustomScrollListener extends RecyclerView.OnScrollListener {
        public CustomScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i != 1) {
                return;
            }
            ButtomMenuLayout buttomMenuLayout = LocalCompressActivity.this.buttomLayout;
            if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                LocalCompressActivity.this.buttomLayout.setVisibility(8);
                LocalCompressActivity.this.m();
            }
            if (LocalCompressActivity.this.f21201package != null && LocalCompressActivity.this.f21201package.isShowing()) {
                LocalCompressActivity.this.f21201package.dismiss();
                LocalCompressActivity.this.m();
            }
            LocalCompressActivity.this.n();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            recyclerView.computeVerticalScrollOffset();
            int iFindFirstVisibleItemPosition = LocalCompressActivity.this.f21189break.findFirstVisibleItemPosition();
            int itemCount = LocalCompressActivity.this.f21195extends.getItemCount();
            if (itemCount <= 0 || iFindFirstVisibleItemPosition > itemCount - 1) {
                return;
            }
            ZipEntry zipEntryM25771if = LocalCompressActivity.this.f21195extends.m25771if(iFindFirstVisibleItemPosition);
            LocalCompressActivity localCompressActivity = LocalCompressActivity.this;
            localCompressActivity.mSeekBarScroll.setMax(localCompressActivity.f21195extends.getItemCount());
            int i3 = iFindFirstVisibleItemPosition + 1;
            LocalCompressActivity.this.mSeekBarScroll.setProgress(i3);
            LocalCompressActivity.this.mHeadTitleRight.setText(String.format("%d/%d", Integer.valueOf(i3), Integer.valueOf(LocalCompressActivity.this.f21195extends.getItemCount())));
            LocalCompressActivity.this.statusChapterText.setText(zipEntryM25771if.getName());
            LocalCompressActivity localCompressActivity2 = LocalCompressActivity.this;
            localCompressActivity2.buttomLayout.initData(localCompressActivity2.f21207switch.getName());
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalCompressActivity$case, reason: invalid class name */
    public class Ccase extends BroadcastReceiver {
        public Ccase() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m25143do() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            LocalCompressActivity localCompressActivity = LocalCompressActivity.this;
            localCompressActivity.registerReceiver(localCompressActivity.f21199import, intentFilter);
        }

        /* renamed from: if, reason: not valid java name */
        public void m25144if() {
            LocalCompressActivity localCompressActivity = LocalCompressActivity.this;
            localCompressActivity.unregisterReceiver(localCompressActivity.f21199import);
            LocalCompressActivity.this.f21199import = null;
        }

        @Override // android.content.BroadcastReceiver
        @SuppressLint({"DefaultLocale"})
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.TIME_TICK".equals(intent.getAction())) {
                LocalCompressActivity.this.k0();
            } else if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                LocalCompressActivity.this.k0();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalCompressActivity$do, reason: invalid class name */
    public class Cdo extends PreCacheLayoutManager {
        public Cdo(Context context) {
            super(context);
        }

        @Override // com.wsw.cospa.widget.view.PreCacheLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
        public int getExtraLayoutSpace(RecyclerView.State state) {
            return 2;
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalCompressActivity$else, reason: invalid class name */
    public class Celse implements Comparator<ZipEntry> {
        private Celse() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(ZipEntry zipEntry, ZipEntry zipEntry2) {
            return LocalCompressActivity.this.c0(zipEntry.getName()).compareTo(LocalCompressActivity.this.c0(zipEntry2.getName()));
        }

        public /* synthetic */ Celse(LocalCompressActivity localCompressActivity, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalCompressActivity$for, reason: invalid class name */
    public class Cfor implements BrightnessSettingWindow.onBrightnessSettingListener {
        public Cfor() {
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onComicBackgroundColor(Integer num) {
            LocalCompressActivity localCompressActivity = LocalCompressActivity.this;
            localCompressActivity.rootView.setBackgroundColor(localCompressActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                LocalCompressActivity.this.m25876super();
            } else {
                LocalCompressActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onWindowBrightness(float f) {
            LocalCompressActivity.this.v_brightness.setAlpha(f);
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalCompressActivity$if, reason: invalid class name */
    public class Cif implements MenuSettingDialog.onCallbackListener {
        public Cif() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public /* synthetic */ void m25146break(View view) {
            LocalCompressActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalCompressActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public /* synthetic */ void m25148catch(View view) {
            LocalCompressActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalCompressActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public /* synthetic */ void m25149class(View view) {
            LocalCompressActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalCompressActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public /* synthetic */ void m25151else(View view) {
            LocalCompressActivity.this.scroll_mode_event_up_down.setVisibility(8);
            LocalCompressActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public /* synthetic */ void m25153goto(View view) {
            LocalCompressActivity.this.scroll_mode_event_up_down.setVisibility(8);
            LocalCompressActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public /* synthetic */ void m25156this(View view) {
            LocalCompressActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalCompressActivity.this.ll_click_event.setVisibility(8);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onClickEventPosition() {
            LocalCompressActivity.this.m();
            int iR = LocalCompressActivity.this.r();
            if (iR == 1) {
                LocalCompressActivity.this.scroll_mode_event_up_down.setVisibility(0);
                LocalCompressActivity.this.scroll_mode_event_left_right.setVisibility(8);
                LocalCompressActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.static
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21505do.m25151else(view);
                    }
                });
                LocalCompressActivity.this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.default
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21480do.m25153goto(view);
                    }
                });
            } else if (iR == 2) {
                LocalCompressActivity.this.scroll_mode_event_up_down.setVisibility(8);
                LocalCompressActivity.this.scroll_mode_event_left_right.setVisibility(0);
                LocalCompressActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.throws
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21514do.m25156this(view);
                    }
                });
                LocalCompressActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.switch
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21510do.m25146break(view);
                    }
                });
                LocalCompressActivity.this.event_right.setText("下一页");
                LocalCompressActivity.this.event_left.setText("上一页");
            } else if (iR == 3) {
                LocalCompressActivity.this.scroll_mode_event_up_down.setVisibility(8);
                LocalCompressActivity.this.scroll_mode_event_left_right.setVisibility(0);
                LocalCompressActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.public
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21503do.m25148catch(view);
                    }
                });
                LocalCompressActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.return
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21504do.m25149class(view);
                    }
                });
                LocalCompressActivity.this.event_right.setText("上一页");
                LocalCompressActivity.this.event_left.setText("下一页");
            }
            LocalCompressActivity.this.ll_click_event.setVisibility(0);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onComicBackgroundColor(Integer num) {
            LocalCompressActivity localCompressActivity = LocalCompressActivity.this;
            localCompressActivity.rootView.setBackgroundColor(localCompressActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onReadMode(int i) {
            LocalCompressActivity.this.j0(i);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onShowComicState() {
            if (v02.m8711if(LocalCompressActivity.this).m8713do(wq.m, false)) {
                LocalCompressActivity.this.comic_status_bar.setVisibility(8);
            } else {
                LocalCompressActivity.this.comic_status_bar.setVisibility(0);
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                LocalCompressActivity.this.m25876super();
            } else {
                LocalCompressActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchNavigationBar() {
            if (v02.m8711if(LocalCompressActivity.this).m8713do(wq.i, false)) {
                LocalCompressActivity.this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
            } else {
                LocalCompressActivity.this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchPagingReverse(boolean z) {
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchReaderPaging(boolean z) {
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchStatusBar() {
            if (v02.m8711if(LocalCompressActivity.this).m8713do(wq.h, false)) {
                LocalCompressActivity.this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            } else {
                LocalCompressActivity.this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchWhiteEdge(boolean z) {
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalCompressActivity$new, reason: invalid class name */
    public class Cnew implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f21218do;

        /* renamed from: for, reason: not valid java name */
        public int f21219for;

        /* renamed from: if, reason: not valid java name */
        public int f21220if;

        private Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iM8715for = v02.m8711if(LocalCompressActivity.this).m8715for(wq.f7635volatile, 1);
            if (iM8715for != 1) {
                if (iM8715for == 2) {
                    LocalCompressActivity.this.V();
                } else {
                    LocalCompressActivity.this.l();
                }
                float max = LocalCompressActivity.this.bsb_auto.getMax();
                float progressFloat = LocalCompressActivity.this.bsb_auto.getProgressFloat();
                LocalCompressActivity.this.f21188abstract.removeCallbacks(LocalCompressActivity.this.f21193continue);
                LocalCompressActivity.this.f21188abstract.postDelayed(LocalCompressActivity.this.f21193continue, (long) ((max - progressFloat) * 10.0f * 1000.0f));
                return;
            }
            if (this.f21218do >= this.f21220if || !LocalCompressActivity.this.mZoomRecyclerView.canScrollVertically(1)) {
                this.f21219for = 0;
                this.f21220if = 0;
                this.f21218do = 0;
                LocalCompressActivity.this.f21188abstract.removeCallbacks(LocalCompressActivity.this.f21193continue);
                return;
            }
            this.f21218do += this.f21219for;
            LocalCompressActivity.this.mZoomRecyclerView.scrollBy(0, LocalCompressActivity.this.mZoomRecyclerView.getScrollY() + this.f21219for);
            LocalCompressActivity.this.f21188abstract.removeCallbacks(LocalCompressActivity.this.f21193continue);
            LocalCompressActivity.this.f21188abstract.postDelayed(LocalCompressActivity.this.f21193continue, 5L);
        }

        public /* synthetic */ Cnew(LocalCompressActivity localCompressActivity, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalCompressActivity$try, reason: invalid class name */
    public class Ctry implements Comparator<Node> {
        private Ctry() {
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(Node node, Node node2) {
            return LocalCompressActivity.this.c0(node.name).compareTo(LocalCompressActivity.this.c0(node2.name));
        }

        public /* synthetic */ Ctry(LocalCompressActivity localCompressActivity, Cdo cdo) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
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

    private void R(Node node) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, Node>> it = node.children.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Node value = it.next().getValue();
            arrayList.add(value);
            if (!value.isDir) {
                z = true;
            }
        }
        e0(arrayList);
        if (z) {
            this.f21195extends.m25772import(true, arrayList, false, this.f21194default);
        }
    }

    private void S() {
    }

    private void T() {
    }

    public static void U(LinearLayoutManager linearLayoutManager, RecyclerView recyclerView, int i) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void V() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if (iM8715for == 1) {
            if (this.f21189break.findLastVisibleItemPosition() == this.f21195extends.getItemCount() - 1) {
                S();
            }
            this.mZoomRecyclerView.smoothScrollBy(0, point.y);
            return;
        }
        int iQ = q();
        if (iM8715for == 2) {
            if (iQ == this.f21195extends.getItemCount() - 1) {
                S();
                return;
            } else {
                this.mRecyclerViewPager.smoothScrollToPosition(iQ + 1);
                return;
            }
        }
        if (iQ == 0) {
            T();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iQ - 1);
        }
    }

    private void d0(List<ZipEntry> list) {
        if (list != null) {
            Collections.sort(list, new Celse(this, null));
        }
    }

    private void e0(List<Node> list) {
        if (list != null) {
            Collections.sort(list, new Ctry(this, null));
        }
    }

    public static void f0(Context context, String str, RipeFile ripeFile, Integer num) {
        Intent intent = new Intent(context, (Class<?>) LocalCompressActivity.class);
        intent.putExtra(wq.Cdo.f7671while, ripeFile);
        intent.putExtra(wq.Cdo.f7651goto, num);
        context.startActivity(intent);
    }

    private void g0() {
        if (this.f21203public) {
            return;
        }
        this.f21203public = true;
        this.ll_auto.setVisibility(0);
        this.ll_seek_progress.setVisibility(8);
        this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f08010c);
        if (v02.m8711if(this).m8715for(wq.f7635volatile, 1) != 1) {
            this.f21188abstract.postDelayed(this.f21193continue, (long) ((this.bsb_auto.getMax() - this.bsb_auto.getProgressFloat()) * 10.0f * 1000.0f));
        } else {
            Cnew cnew = this.f21193continue;
            cnew.f21218do = 0;
            cnew.f21220if = Integer.MAX_VALUE;
            cnew.f21219for = (int) j10.m3660new(this, this.bsb_auto.getProgressFloat() * 2.0f);
            this.f21188abstract.postDelayed(this.f21193continue, 5L);
        }
    }

    private void h0() {
        if (this.f21203public) {
            this.f21203public = false;
            this.ll_auto.setVisibility(8);
            this.ll_seek_progress.setVisibility(8);
            this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f080107);
            Cnew cnew = this.f21193continue;
            cnew.f21220if = 0;
            this.f21188abstract.removeCallbacks(cnew);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(int i) {
        v02.m8711if(this).m8714else(wq.f7635volatile, i);
        recreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0() {
        int iM3742do = j8.m3742do(this);
        this.statusBatteryText.setText(iM3742do + "");
        this.batteryView.setPower(iM3742do);
        this.statusTimeText.setText(l22.m4563for(System.currentTimeMillis(), "HH:mm"));
    }

    public static void o(Activity activity) {
        try {
            Method declaredMethod = Activity.class.getDeclaredMethod("convertFromTranslucent", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(activity, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    private void p(int i) {
        if (i == 1) {
            X();
            return;
        }
        if (i == 2) {
            V();
            return;
        }
        if (i == 4) {
            T();
        } else if (i == 5) {
            S();
        } else {
            if (i != 11) {
                return;
            }
            i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int r() {
        return v02.m8711if(this).m8715for(wq.f7635volatile, 1);
    }

    private int s(float f, float f2) {
        getWindowManager().getDefaultDisplay().getSize(new Point());
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        float f3 = r0.x / 3.0f;
        float f4 = r0.y / 3.0f;
        if (iM8715for == 1) {
            if (f2 < f4) {
                return this.f21208this[0];
            }
            if (f2 > f4 && f2 < f4 * 2.0f) {
                return this.f21208this[1];
            }
            if (f2 > f4 * 2.0f) {
                return this.f21208this[2];
            }
        } else if (iM8715for == 3) {
            if (f < f3) {
                return this.f21208this[2];
            }
            if (f > f3 && f < f3 * 2.0f) {
                return this.f21208this[1];
            }
            if (f > f3 * 2.0f) {
                return this.f21208this[0];
            }
        } else {
            if (f < f3) {
                return this.f21208this[0];
            }
            if (f > f3 && f < f3 * 2.0f) {
                return this.f21208this[1];
            }
            if (f > f3 * 2.0f) {
                return this.f21208this[2];
            }
        }
        return 0;
    }

    private void t() throws IllegalStateException {
        boolean zM8713do;
        boolean zM8713do2;
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        this.f21208this = iM8715for == 1 ? mm.m4948new(this) : mm.m4945do(this);
        if (iM8715for == 1) {
            zM8713do = v02.m8711if(this).m8713do(wq.I0, true);
            this.scroll_mode_event_up_down.setVisibility(0);
            this.scroll_mode_event_left_right.setVisibility(8);
            this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.xt0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8020do.w(view);
                }
            });
            this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.au0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f245do.x(view);
                }
            });
            this.ll_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.rt0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f5927do.I(view);
                }
            });
            this.ll_up_down_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.fu0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1997do.K(view);
                }
            });
            this.event_top.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wt0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f7691do.L(view);
                }
            });
            this.event_up_down_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.st0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6248do.M(view);
                }
            });
            this.event_bottom.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.yt0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8326do.N(view);
                }
            });
        } else {
            if (iM8715for == 2) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.J0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.lu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f3769do.O(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.zt0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f8640do.P(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.iu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2884do.Q(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.bu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f537do.y(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.gu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2246do.z(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ut0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f6981do.A(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.hu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2512do.B(view);
                    }
                });
                this.event_right.setText("下一页");
                this.event_left.setText("上一页");
            } else if (iM8715for == 3) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.K0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vt0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f7342do.C(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ju0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f3223do.D(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.cu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f868do.E(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ku0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f3485do.F(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.tt0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f6692do.G(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.du0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f1133do.H(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.eu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f1588do.J(view);
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
        this.f21189break = cdo;
        if (iM8715for == 2) {
            cdo.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f21189break);
            this.f21190catch = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            this.f21190catch.attachToRecyclerView(this.mRecyclerViewPager);
        } else if (iM8715for == 3) {
            cdo.setReverseLayout(true);
            this.f21189break.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f21189break);
            this.f21190catch = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            this.f21190catch.attachToRecyclerView(this.mRecyclerViewPager);
        } else {
            cdo.setOrientation(1);
            this.mZoomRecyclerView.setLayoutManager(this.f21189break);
            PagerSnapHelper pagerSnapHelper = this.f21190catch;
            if (pagerSnapHelper != null) {
                pagerSnapHelper.attachToRecyclerView(null);
            }
        }
        this.f21201package.initClickTips();
        this.f21201package.updateReadModeColor(iM8715for);
        this.f21201package.setOnCallbackListener(new Cif());
        this.f21202private.setOnBrightnessSettingListener(new Cfor());
        RecyclerView recyclerView = iM8715for == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        recycledViewPool.setMaxRecycledViews(0, 10);
        recyclerView.setRecycledViewPool(recycledViewPool);
        LocalCompressAdapter localCompressAdapter = new LocalCompressAdapter(this, iM8715for);
        this.f21195extends = localCompressAdapter;
        localCompressAdapter.setTapGestureListener(this);
        this.f21195extends.m25775return(v02.m8711if(this).m8713do(wq.D, false));
        this.f21195extends.m25776static(v02.m8711if(this).m8713do(wq.E, false));
        this.f21195extends.m25778throws(v02.m8711if(this).m8713do(wq.F, false));
        this.f21195extends.m25777switch(2.0f);
        this.f21195extends.m25774public(v02.m8711if(this).m8713do(wq.q, true));
        this.f21195extends.m25773native(true);
        recyclerView.setItemAnimator(null);
        recyclerView.setHasFixedSize(true);
        recyclerView.setItemViewCacheSize(10);
        recyclerView.setAdapter(this.f21195extends);
    }

    private void u() {
        this.mSeekBarScroll.setReverse(v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 3);
        this.mSeekBarScroll.setOnProgressChangeListener(this);
    }

    private boolean v() {
        int itemCount = this.f21195extends.getItemCount();
        return (itemCount == 0 || (this.f21189break.findFirstCompletelyVisibleItemPosition() == 0 && this.f21189break.findLastCompletelyVisibleItemPosition() == itemCount - 1)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    public void W(List<ZipEntry> list) {
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
                Node node2 = this.f21197finally;
                node.parent = node2;
                node2.children.put(node.name, node);
            } else {
                Node node3 = this.f21197finally;
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
                node3.children.put(node.name, node);
            }
        }
    }

    public void X() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iQ = q();
        if (v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 1) {
            this.mZoomRecyclerView.smoothScrollBy(0, -point.y);
            if (iQ == 0) {
                T();
                return;
            }
            return;
        }
        if (iQ == 0) {
            T();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iQ - 1);
        }
    }

    public List<ZipEntry> Y(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            ZipFile zipFile = new ZipFile(str);
            this.f21194default = zipFile;
            Node node = this.f21197finally;
            node.path = str;
            node.name = zipFile.getName();
            this.f21197finally.size = this.f21194default.size();
            Enumeration<? extends ZipEntry> enumerationEntries = this.f21194default.entries();
            while (enumerationEntries.hasMoreElements()) {
                arrayList.add(enumerationEntries.nextElement());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public void Z() {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText("漫画已下架或是付费章节！");
        this.f21192const = false;
    }

    public void a0(String str) {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText(str);
        this.f21192const = false;
    }

    public void b0() {
        BrightnessSettingWindow brightnessSettingWindow;
        if (isFinishing()) {
            return;
        }
        BrightnessSettingWindow brightnessSettingWindow2 = this.f21202private;
        if ((brightnessSettingWindow2 == null || !brightnessSettingWindow2.isShowing()) && (brightnessSettingWindow = this.f21202private) != null) {
            brightnessSettingWindow.showAtLocation(this.rootView, 80, 0, 0);
        }
    }

    public String c0(String str) {
        Matcher matcher = Pattern.compile("\\d+").matcher(str);
        return matcher.find() ? l22.m4553case("%04d", Long.valueOf(Long.valueOf(matcher.group(0)).longValue())) : str;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        Intent intent = getIntent();
        this.f21207switch = (RipeFile) intent.getParcelableExtra(wq.Cdo.f7671while);
        this.f21210throws = (Integer) intent.getSerializableExtra(wq.Cdo.f7651goto);
        showProgress();
        W(Y(this.f21207switch.getPath()));
        R(this.f21197finally);
        hideProgress();
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
        this.f21192const = true;
    }

    public void i0() {
        if (this.buttomLayout.isShow()) {
            this.buttomLayout.setVisibility(8);
        } else {
            this.buttomLayout.setVisibility(0);
        }
        m();
    }

    public void l() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iQ = q();
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if (iM8715for == 1) {
            this.mZoomRecyclerView.smoothScrollBy(0, -point.y);
            if (iQ == 0) {
                T();
                return;
            }
            return;
        }
        if (iM8715for == 2) {
            if (iQ == 0) {
                T();
                return;
            } else {
                this.mRecyclerViewPager.smoothScrollToPosition(iQ - 1);
                return;
            }
        }
        if (iQ == this.f21195extends.getItemCount() - 1) {
            S();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iQ + 1);
        }
    }

    public void m() {
        boolean zM8713do = v02.m8711if(this).m8713do(wq.h, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.i, false);
        if (!zM8713do && zM8713do2) {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    public void n() {
        BrightnessSettingWindow brightnessSettingWindow = this.f21202private;
        if (brightnessSettingWindow == null || !brightnessSettingWindow.isShowing()) {
            return;
        }
        this.f21202private.dismiss();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c003a;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        n();
        MenuSettingDialog menuSettingDialog = this.f21201package;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.f21201package.dismiss();
            m();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout == null || !buttomMenuLayout.isShow()) {
            finish();
        } else {
            this.buttomLayout.setVisibility(8);
            m();
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
                if (!this.f21203public) {
                    g0();
                    break;
                } else {
                    h0();
                    break;
                }
            case R.id.arg_res_0x7f090463 /* 2131297379 */:
                b0();
                ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
                if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                    this.buttomLayout.setVisibility(8);
                }
                m();
                break;
            case R.id.arg_res_0x7f090466 /* 2131297382 */:
                n();
                ButtomMenuLayout buttomMenuLayout2 = this.buttomLayout;
                if (buttomMenuLayout2 != null && buttomMenuLayout2.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    m();
                }
                MenuSettingDialog menuSettingDialog = this.f21201package;
                if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                    this.f21201package.dismiss();
                    m();
                    break;
                }
                break;
            case R.id.arg_res_0x7f0904b0 /* 2131297456 */:
                this.f21201package.show();
                n();
                ButtomMenuLayout buttomMenuLayout3 = this.buttomLayout;
                if (buttomMenuLayout3 != null && buttomMenuLayout3.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    m();
                    break;
                }
                break;
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f21188abstract.removeCallbacks(this.f21193continue);
        Ccase ccase = this.f21199import;
        if (ccase != null) {
            ccase.m25144if();
        }
        LocalCompressAdapter localCompressAdapter = this.f21195extends;
        if (localCompressAdapter != null) {
            localCompressAdapter.m25779while();
        }
        this.f21201package.dismiss();
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
                    if (!this.f21209throw) {
                        float f = scaledTouchSlop;
                        if (Math.abs(this.f21196final - motionEvent.getX()) <= f && Math.abs(this.f21206super - motionEvent.getY()) <= f) {
                            z = false;
                        }
                        this.f21209throw = z;
                    }
                }
            } else if (!this.f21209throw) {
                int iM3648case = j10.m3648case(this);
                if (this.f21211while == null) {
                    this.f21211while = new RectF(j10.m3649catch() / 3, iM3648case / 3, (j10.m3649catch() * 2) / 3, (iM3648case * 2) / 3);
                }
                if (this.f21211while.contains(this.f21196final, this.f21206super)) {
                    n();
                    MenuSettingDialog menuSettingDialog = this.f21201package;
                    if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                        this.f21201package.dismiss();
                        m();
                    }
                    return true;
                }
            }
        } else {
            this.f21196final = (int) motionEvent.getX();
            this.f21206super = (int) motionEvent.getY();
            this.f21209throw = false;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        LocalCompressAdapter localCompressAdapter = this.f21195extends;
        if (localCompressAdapter != null && localCompressAdapter.getItemCount() != 0) {
            int i2 = i != 24 ? i != 25 ? 0 : this.f21208this[4] : this.f21208this[3];
            boolean zM8713do = v02.m8711if(this).m8713do(wq.B, false);
            if (i2 != 0 && zM8713do) {
                p(i2);
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
        Ccase ccase = this.f21199import;
        if (ccase != null) {
            ccase.m25144if();
        }
    }

    @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
    public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        RecyclerView recyclerView = iM8715for == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        if (z) {
            if (iM8715for == 1) {
                U(this.f21189break, recyclerView, (q() + i) - this.f21191class);
            } else {
                U(this.f21189break, recyclerView, (q() + i) - this.f21191class);
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
        this.f21199import = ccase;
        ccase.m25143do();
        m();
    }

    @Override // com.wsw.cospa.widget.view.OnTapGestureListener
    public void onSingleTap(float f, float f2) {
        n();
        MenuSettingDialog menuSettingDialog = this.f21201package;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.f21201package.dismiss();
            m();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout == null || !buttomMenuLayout.isShow()) {
            p(s(f, f2));
        } else {
            this.buttomLayout.setVisibility(8);
            m();
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
        boolean zM8713do = v02.m8711if(this).m8713do(wq.h, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.i, false);
        if (!zM8713do && zM8713do2) {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f21198goto.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    public int q() {
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if ((iM8715for != 2 && iM8715for != 3) || this.mRecyclerViewPager == null) {
            return this.f21189break.findFirstVisibleItemPosition();
        }
        int iM10242if = this.f21189break.canScrollHorizontally() ? zl1.m10242if(this.mRecyclerViewPager) : zl1.m10243new(this.mRecyclerViewPager);
        if (iM10242if < 0) {
            return 0;
        }
        return iM10242if;
    }

    public void showProgress() {
        this.mIndicatorView.setVisibility(0);
        this.contentView.setVisibility(8);
        this.error_view.setVisibility(8);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() throws IllegalStateException {
        int i = Build.VERSION.SDK_INT;
        if (i != 26) {
            p12.m5832case(this);
        }
        if (i >= 26) {
            o(this);
        }
        if (v02.m8711if(this).m8713do(wq.g, false)) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(1);
        }
        m25873else();
        this.f21198goto = com.gyf.immersionbar.Celse.k2(this);
        j10.m3664throw(this);
        MenuSettingDialog menuSettingDialog = new MenuSettingDialog(this);
        this.f21201package = menuSettingDialog;
        menuSettingDialog.hideLongClickMenu(true);
        this.f21202private = new BrightnessSettingWindow(this);
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
        this.rootView.setBackgroundColor(getResources().getColor(v02.m8711if(this).m8715for(wq.Cdo.f7637abstract, R.color.arg_res_0x7f060141)));
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
        u();
        t();
    }
}
