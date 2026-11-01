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
import android.support.v4.cq;
import android.support.v4.j10;
import android.support.v4.j8;
import android.support.v4.jz1;
import android.support.v4.l22;
import android.support.v4.m7;
import android.support.v4.mm;
import android.support.v4.mp1;
import android.support.v4.nm1;
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
import com.uber.autodispose.SingleSubscribeProxy;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.LocalPreviewAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.FileSnapshot;
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
import io.reactivex.SingleEmitter;
import io.reactivex.SingleObserver;
import io.reactivex.SingleOnSubscribe;
import io.reactivex.disposables.Disposable;
import java.io.File;
import java.io.FileFilter;
import java.lang.reflect.Method;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.adw.library.widgets.discreteseekbar.DiscreteSeekBar;

/* loaded from: classes2.dex */
public class LocalPreviewActivity extends BaseActivity implements FileFilter, View.OnClickListener, CompoundButton.OnCheckedChangeListener, OnTapGestureListener, View.OnTouchListener, DiscreteSeekBar.OnProgressChangeListener, RecyclerView.OnItemTouchListener {
    private static final String f = LocalPreviewActivity.class.getSimpleName();
    private MenuSettingDialog a;

    /* renamed from: abstract, reason: not valid java name */
    public Integer f21224abstract;

    @BindView(R.id.arg_res_0x7f09009e)
    public LinearLayout autoPlayLayout;
    private BrightnessSettingWindow b;

    @BindView(R.id.arg_res_0x7f0903da)
    public BatteryView batteryView;

    /* renamed from: break, reason: not valid java name */
    private int[] f21225break;

    @BindView(R.id.arg_res_0x7f0900c4)
    public BubbleSeekBar bsb_auto;

    @BindView(R.id.arg_res_0x7f0900d8)
    public ButtomMenuLayout buttomLayout;
    private File c;

    /* renamed from: catch, reason: not valid java name */
    private PreCacheLayoutManager f21226catch;

    /* renamed from: class, reason: not valid java name */
    private PagerSnapHelper f21227class;

    @BindView(R.id.arg_res_0x7f09010e)
    public LinearLayout comic_status_bar;

    @BindView(R.id.arg_res_0x7f090115)
    public RelativeLayout contentView;

    /* renamed from: continue, reason: not valid java name */
    private FileSnapshot f21229continue;

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

    /* renamed from: finally, reason: not valid java name */
    private boolean f21233finally;

    /* renamed from: goto, reason: not valid java name */
    private LocalPreviewAdapter f21234goto;

    /* renamed from: implements, reason: not valid java name */
    private Disposable f21235implements;

    /* renamed from: instanceof, reason: not valid java name */
    private RipeFile f21237instanceof;

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

    /* renamed from: native, reason: not valid java name */
    private Ccatch f21239native;

    @BindView(R.id.arg_res_0x7f0902fb)
    public TextView nextChapter;

    @BindView(R.id.arg_res_0x7f090332)
    public TextView preChapter;

    /* renamed from: private, reason: not valid java name */
    public RipeFile f21241private;

    /* renamed from: protected, reason: not valid java name */
    private Disposable f21242protected;

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

    /* renamed from: synchronized, reason: not valid java name */
    private boolean f21249synchronized;

    /* renamed from: this, reason: not valid java name */
    private com.gyf.immersionbar.Celse f21250this;

    /* renamed from: transient, reason: not valid java name */
    private Disposable f21253transient;

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

    /* renamed from: const, reason: not valid java name */
    private int f21228const = 0;

    /* renamed from: final, reason: not valid java name */
    public boolean f21232final = true;

    /* renamed from: super, reason: not valid java name */
    private int f21247super = 0;

    /* renamed from: throw, reason: not valid java name */
    private int f21251throw = 0;

    /* renamed from: while, reason: not valid java name */
    private boolean f21255while = false;

    /* renamed from: import, reason: not valid java name */
    private RectF f21236import = null;

    /* renamed from: public, reason: not valid java name */
    private int f21243public = -1;

    /* renamed from: return, reason: not valid java name */
    private boolean f21244return = false;

    /* renamed from: static, reason: not valid java name */
    private final long f21245static = 5;

    /* renamed from: switch, reason: not valid java name */
    private boolean f21248switch = false;

    /* renamed from: throws, reason: not valid java name */
    private boolean f21252throws = true;

    /* renamed from: default, reason: not valid java name */
    private boolean f21230default = true;

    /* renamed from: extends, reason: not valid java name */
    private int f21231extends = 0;

    /* renamed from: package, reason: not valid java name */
    private String[] f21240package = {"png", "jpg", "jpeg", "webp", "gif"};

    /* renamed from: strictfp, reason: not valid java name */
    private final Stack<FileSnapshot> f21246strictfp = new Stack<>();

    /* renamed from: volatile, reason: not valid java name */
    private final Comparator f21254volatile = Collator.getInstance(Locale.CHINA);

    /* renamed from: interface, reason: not valid java name */
    private final cq f21238interface = new cq();
    private Handler d = new Handler();
    private Cthis e = new Cthis(this, null);

    public class CustomScrollListener extends RecyclerView.OnScrollListener {
        public CustomScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i != 1) {
                return;
            }
            ButtomMenuLayout buttomMenuLayout = LocalPreviewActivity.this.buttomLayout;
            if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                LocalPreviewActivity.this.buttomLayout.setVisibility(8);
                LocalPreviewActivity.this.C();
            }
            if (LocalPreviewActivity.this.a != null && LocalPreviewActivity.this.a.isShowing()) {
                LocalPreviewActivity.this.a.dismiss();
                LocalPreviewActivity.this.C();
            }
            LocalPreviewActivity.this.D();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            recyclerView.computeVerticalScrollOffset();
            int iFindFirstVisibleItemPosition = LocalPreviewActivity.this.f21226catch.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = LocalPreviewActivity.this.f21226catch.findLastVisibleItemPosition();
            int itemCount = LocalPreviewActivity.this.f21234goto.getItemCount();
            int iM8715for = v02.m8711if(LocalPreviewActivity.this).m8715for(wq.f7635volatile, 1);
            if (iFindFirstVisibleItemPosition <= 0) {
                if (iM8715for == 1 && i2 < -10 && LocalPreviewActivity.this.f21252throws) {
                    LocalPreviewActivity.this.q0();
                    LocalPreviewActivity.this.f21252throws = false;
                } else if ((iM8715for == 2 || iM8715for == 3) && i < -10 && LocalPreviewActivity.this.f21252throws) {
                    LocalPreviewActivity.this.q0();
                    LocalPreviewActivity.this.f21252throws = false;
                }
            } else if (iFindLastVisibleItemPosition >= itemCount - 3) {
                if (iM8715for == 1 && i2 > 10 && LocalPreviewActivity.this.f21230default) {
                    LocalPreviewActivity.this.p0();
                    LocalPreviewActivity.this.f21230default = false;
                } else if ((iM8715for == 2 || iM8715for == 3) && i > 0 && LocalPreviewActivity.this.f21230default) {
                    LocalPreviewActivity.this.p0();
                    LocalPreviewActivity.this.f21230default = false;
                }
            }
            if (itemCount <= 0 || iFindFirstVisibleItemPosition > itemCount - 1) {
                return;
            }
            RipeFile ripeFileM25809final = LocalPreviewActivity.this.f21234goto.m25809final(iFindFirstVisibleItemPosition);
            int i3 = LocalPreviewActivity.this.f21243public;
            int maxPage = ripeFileM25809final.getMaxPage();
            int indexPape = ripeFileM25809final.getIndexPape();
            LocalPreviewActivity.this.f21243public = ripeFileM25809final.getIndexPape();
            LocalPreviewActivity.this.mSeekBarScroll.setMax(maxPage);
            LocalPreviewActivity.this.mSeekBarScroll.setProgress(indexPape);
            LocalPreviewActivity.this.mHeadTitleRight.setText(String.format("%d/%d", Integer.valueOf(indexPape), Integer.valueOf(maxPage)));
            LocalPreviewActivity.this.statusChapterText.setText(ripeFileM25809final.getParentName());
            String[] strArrSplit = ripeFileM25809final.getParentPath().split(on0.f4694final);
            String parentPath = ripeFileM25809final.getParentPath();
            if (strArrSplit != null && strArrSplit.length > 2) {
                parentPath = strArrSplit[strArrSplit.length - 2];
            }
            LocalPreviewActivity.this.f21241private.setCurrPagePath(ripeFileM25809final.getPath());
            LocalPreviewActivity.this.buttomLayout.initData(parentPath);
            LocalPreviewActivity.this.f21237instanceof = ripeFileM25809final;
            if (i3 != LocalPreviewActivity.this.f21243public) {
                LocalPreviewActivity.this.f21252throws = true;
                LocalPreviewActivity.this.f21230default = true;
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$break, reason: invalid class name */
    public class Cbreak implements Comparator<RipeFile> {

        /* renamed from: do, reason: not valid java name */
        public int f21257do;

        public Cbreak(int i) {
            this.f21257do = i;
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(RipeFile ripeFile, RipeFile ripeFile2) {
            File file = ripeFile.getFile();
            File file2 = ripeFile2.getFile();
            if (file.isDirectory() && file2.isFile()) {
                return -1;
            }
            if (file2.isDirectory() && file.isFile()) {
                return 1;
            }
            int i = this.f21257do;
            return i == 0 ? LocalPreviewActivity.this.A0(file.getName()).compareTo(LocalPreviewActivity.this.A0(file2.getName())) : i == 1 ? LocalPreviewActivity.this.A0(file2.getName()).compareTo(LocalPreviewActivity.this.A0(file.getName())) : i == 2 ? Long.compare(file.lastModified(), file2.lastModified()) : i == 3 ? Long.compare(file2.lastModified(), file.lastModified()) : i == 4 ? Long.compare(file.length(), file2.length()) : LocalPreviewActivity.this.A0(file.getName()).compareTo(LocalPreviewActivity.this.A0(file2.getName()));
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$case, reason: invalid class name */
    public class Ccase extends PreCacheLayoutManager {
        public Ccase(Context context) {
            super(context);
        }

        @Override // com.wsw.cospa.widget.view.PreCacheLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
        public int getExtraLayoutSpace(RecyclerView.State state) {
            return 2;
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$catch, reason: invalid class name */
    public class Ccatch extends BroadcastReceiver {
        public Ccatch() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m25182do() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            localPreviewActivity.registerReceiver(localPreviewActivity.f21239native, intentFilter);
        }

        /* renamed from: if, reason: not valid java name */
        public void m25183if() {
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            localPreviewActivity.unregisterReceiver(localPreviewActivity.f21239native);
            LocalPreviewActivity.this.f21239native = null;
        }

        @Override // android.content.BroadcastReceiver
        @SuppressLint({"DefaultLocale"})
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.TIME_TICK".equals(intent.getAction())) {
                LocalPreviewActivity.this.I0();
            } else if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                LocalPreviewActivity.this.I0();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$do, reason: invalid class name */
    public class Cdo implements SingleObserver<RipeFile> {
        public Cdo() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(RipeFile ripeFile) {
            if (ripeFile != null) {
                LocalPreviewActivity.this.v0(ripeFile, false, false);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            LocalPreviewActivity.this.f21238interface.add(LocalPreviewActivity.this.f21253transient = disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$else, reason: invalid class name */
    public class Celse implements MenuSettingDialog.onCallbackListener {
        public Celse() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public /* synthetic */ void m25185break(View view) {
            LocalPreviewActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalPreviewActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public /* synthetic */ void m25187catch(View view) {
            LocalPreviewActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalPreviewActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public /* synthetic */ void m25188class(View view) {
            LocalPreviewActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalPreviewActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: else, reason: not valid java name */
        public /* synthetic */ void m25190else(View view) {
            LocalPreviewActivity.this.scroll_mode_event_up_down.setVisibility(8);
            LocalPreviewActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public /* synthetic */ void m25192goto(View view) {
            LocalPreviewActivity.this.scroll_mode_event_up_down.setVisibility(8);
            LocalPreviewActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public /* synthetic */ void m25195this(View view) {
            LocalPreviewActivity.this.scroll_mode_event_left_right.setVisibility(8);
            LocalPreviewActivity.this.ll_click_event.setVisibility(8);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onClickEventPosition() {
            LocalPreviewActivity.this.C();
            int iM = LocalPreviewActivity.this.M();
            if (iM == 1) {
                LocalPreviewActivity.this.scroll_mode_event_up_down.setVisibility(0);
                LocalPreviewActivity.this.scroll_mode_event_left_right.setVisibility(8);
                LocalPreviewActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.finally
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21486do.m25190else(view);
                    }
                });
                LocalPreviewActivity.this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.continue
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21479do.m25192goto(view);
                    }
                });
            } else if (iM == 2) {
                LocalPreviewActivity.this.scroll_mode_event_up_down.setVisibility(8);
                LocalPreviewActivity.this.scroll_mode_event_left_right.setVisibility(0);
                LocalPreviewActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.package
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21500do.m25195this(view);
                    }
                });
                LocalPreviewActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.extends
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21484do.m25185break(view);
                    }
                });
                LocalPreviewActivity.this.event_right.setText("下一页");
                LocalPreviewActivity.this.event_left.setText("上一页");
            } else if (iM == 3) {
                LocalPreviewActivity.this.scroll_mode_event_up_down.setVisibility(8);
                LocalPreviewActivity.this.scroll_mode_event_left_right.setVisibility(0);
                LocalPreviewActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.abstract
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21471do.m25187catch(view);
                    }
                });
                LocalPreviewActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.private
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21501do.m25188class(view);
                    }
                });
                LocalPreviewActivity.this.event_right.setText("上一页");
                LocalPreviewActivity.this.event_left.setText("下一页");
            }
            LocalPreviewActivity.this.ll_click_event.setVisibility(0);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onComicBackgroundColor(Integer num) {
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            localPreviewActivity.rootView.setBackgroundColor(localPreviewActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onReadMode(int i) {
            LocalPreviewActivity.this.H0(i);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onShowComicState() {
            if (v02.m8711if(LocalPreviewActivity.this).m8713do(wq.m, false)) {
                LocalPreviewActivity.this.comic_status_bar.setVisibility(8);
            } else {
                LocalPreviewActivity.this.comic_status_bar.setVisibility(0);
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                LocalPreviewActivity.this.m25876super();
            } else {
                LocalPreviewActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchNavigationBar() {
            if (v02.m8711if(LocalPreviewActivity.this).m8713do(wq.i, false)) {
                LocalPreviewActivity.this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
            } else {
                LocalPreviewActivity.this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchPagingReverse(boolean z) {
            v02.m8711if(LocalPreviewActivity.this).m8712case(wq.E, z);
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            if (localPreviewActivity.f21241private == null || localPreviewActivity.f21224abstract == null) {
                return;
            }
            localPreviewActivity.overridePendingTransition(0, 0);
            LocalPreviewActivity.this.finish();
            if (!LocalPreviewActivity.this.f21249synchronized) {
                Intent intent = new Intent(CartoonApplication.m24690do(), (Class<?>) LocalPreviewActivity.class);
                intent.putExtra(wq.Cdo.f7671while, LocalPreviewActivity.this.f21241private);
                intent.putExtra(wq.Cdo.f7651goto, LocalPreviewActivity.this.f21224abstract);
                intent.addFlags(268435456);
                CartoonApplication.m24690do().startActivity(intent);
                return;
            }
            Intent intent2 = new Intent(CartoonApplication.m24690do(), (Class<?>) LocalPreviewActivity.class);
            intent2.putExtra(wq.Cdo.f7671while, LocalPreviewActivity.this.f21241private);
            intent2.putExtra(wq.Cdo.f7651goto, LocalPreviewActivity.this.f21224abstract);
            intent2.putExtra(wq.Cdo.f7657package, LocalPreviewActivity.this.f21249synchronized);
            intent2.addFlags(268435456);
            CartoonApplication.m24690do().startActivity(intent2);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchReaderPaging(boolean z) {
            v02.m8711if(LocalPreviewActivity.this).m8712case(wq.D, z);
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            if (localPreviewActivity.f21241private == null || localPreviewActivity.f21224abstract == null) {
                return;
            }
            localPreviewActivity.overridePendingTransition(0, 0);
            LocalPreviewActivity.this.finish();
            if (!LocalPreviewActivity.this.f21249synchronized) {
                Intent intent = new Intent(CartoonApplication.m24690do(), (Class<?>) LocalPreviewActivity.class);
                intent.putExtra(wq.Cdo.f7671while, LocalPreviewActivity.this.f21241private);
                intent.putExtra(wq.Cdo.f7651goto, LocalPreviewActivity.this.f21224abstract);
                intent.addFlags(268435456);
                CartoonApplication.m24690do().startActivity(intent);
                return;
            }
            Intent intent2 = new Intent(CartoonApplication.m24690do(), (Class<?>) LocalPreviewActivity.class);
            intent2.putExtra(wq.Cdo.f7671while, LocalPreviewActivity.this.f21241private);
            intent2.putExtra(wq.Cdo.f7651goto, LocalPreviewActivity.this.f21224abstract);
            intent2.putExtra(wq.Cdo.f7657package, LocalPreviewActivity.this.f21249synchronized);
            intent2.addFlags(268435456);
            CartoonApplication.m24690do().startActivity(intent2);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchStatusBar() {
            if (v02.m8711if(LocalPreviewActivity.this).m8713do(wq.h, false)) {
                LocalPreviewActivity.this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            } else {
                LocalPreviewActivity.this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchWhiteEdge(boolean z) {
            v02.m8711if(LocalPreviewActivity.this).m8712case(wq.F, z);
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            if (localPreviewActivity.f21241private == null || localPreviewActivity.f21224abstract == null) {
                return;
            }
            localPreviewActivity.overridePendingTransition(0, 0);
            LocalPreviewActivity.this.finish();
            if (!LocalPreviewActivity.this.f21249synchronized) {
                Intent intent = new Intent(CartoonApplication.m24690do(), (Class<?>) LocalPreviewActivity.class);
                intent.putExtra(wq.Cdo.f7671while, LocalPreviewActivity.this.f21241private);
                intent.putExtra(wq.Cdo.f7651goto, LocalPreviewActivity.this.f21224abstract);
                intent.addFlags(268435456);
                CartoonApplication.m24690do().startActivity(intent);
                return;
            }
            Intent intent2 = new Intent(CartoonApplication.m24690do(), (Class<?>) LocalPreviewActivity.class);
            intent2.putExtra(wq.Cdo.f7671while, LocalPreviewActivity.this.f21241private);
            intent2.putExtra(wq.Cdo.f7651goto, LocalPreviewActivity.this.f21224abstract);
            intent2.putExtra(wq.Cdo.f7657package, LocalPreviewActivity.this.f21249synchronized);
            intent2.addFlags(268435456);
            CartoonApplication.m24690do().startActivity(intent2);
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$for, reason: invalid class name */
    public class Cfor implements SingleObserver<RipeFile> {
        public Cfor() {
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(RipeFile ripeFile) {
            if (ripeFile != null) {
                LocalPreviewActivity.this.v0(ripeFile, false, true);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            LocalPreviewActivity.this.f21238interface.add(LocalPreviewActivity.this.f21235implements = disposable);
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$goto, reason: invalid class name */
    public class Cgoto implements BrightnessSettingWindow.onBrightnessSettingListener {
        public Cgoto() {
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onComicBackgroundColor(Integer num) {
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            localPreviewActivity.rootView.setBackgroundColor(localPreviewActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                LocalPreviewActivity.this.m25876super();
            } else {
                LocalPreviewActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onWindowBrightness(float f) {
            LocalPreviewActivity.this.v_brightness.setAlpha(f);
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$if, reason: invalid class name */
    public class Cif implements SingleOnSubscribe<RipeFile> {
        public Cif() {
        }

        @Override // io.reactivex.SingleOnSubscribe
        public void subscribe(SingleEmitter<RipeFile> singleEmitter) throws Exception {
            LocalPreviewActivity.this.I(LocalPreviewActivity.this.f21229continue.getParent().getFile());
            if (LocalPreviewActivity.this.c == null) {
                singleEmitter.onError(new Exception("next chapter not find"));
                return;
            }
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            List<RipeFile> listG = localPreviewActivity.G(localPreviewActivity.c);
            int i = 0;
            for (int i2 = 0; i2 < listG.size(); i2++) {
                if (listG.get(i2).getPath().equals(LocalPreviewActivity.this.f21237instanceof.getParentPath())) {
                    i = i2;
                }
            }
            int i3 = i + 1;
            if (i3 < listG.size()) {
                singleEmitter.onSuccess(listG.get(i3));
            } else {
                singleEmitter.onError(new Exception("next chapter not find"));
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$new, reason: invalid class name */
    public class Cnew implements SingleOnSubscribe<RipeFile> {
        public Cnew() {
        }

        @Override // io.reactivex.SingleOnSubscribe
        public void subscribe(SingleEmitter<RipeFile> singleEmitter) throws Exception {
            LocalPreviewActivity.this.I(LocalPreviewActivity.this.f21229continue.getParent().getFile());
            if (LocalPreviewActivity.this.c == null) {
                singleEmitter.onError(new Exception("pre chapter not find"));
                return;
            }
            LocalPreviewActivity localPreviewActivity = LocalPreviewActivity.this;
            List<RipeFile> listG = localPreviewActivity.G(localPreviewActivity.c);
            int i = 0;
            for (int i2 = 0; i2 < listG.size(); i2++) {
                if (listG.get(i2).getPath().equals(LocalPreviewActivity.this.f21237instanceof.getParentPath())) {
                    i = i2;
                }
            }
            int i3 = i - 1;
            if (i3 >= 0) {
                singleEmitter.onSuccess(listG.get(i3));
            } else {
                singleEmitter.onError(new Exception("pre chapter not find"));
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$this, reason: invalid class name */
    public class Cthis implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f21267do;

        /* renamed from: for, reason: not valid java name */
        public int f21268for;

        /* renamed from: if, reason: not valid java name */
        public int f21269if;

        private Cthis() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iM8715for = v02.m8711if(LocalPreviewActivity.this).m8715for(wq.f7635volatile, 1);
            if (iM8715for != 1) {
                if (iM8715for == 2) {
                    LocalPreviewActivity.this.t0();
                } else {
                    LocalPreviewActivity.this.B();
                }
                float max = LocalPreviewActivity.this.bsb_auto.getMax();
                float progressFloat = LocalPreviewActivity.this.bsb_auto.getProgressFloat();
                LocalPreviewActivity.this.d.removeCallbacks(LocalPreviewActivity.this.e);
                LocalPreviewActivity.this.d.postDelayed(LocalPreviewActivity.this.e, (long) ((max - progressFloat) * 10.0f * 1000.0f));
                return;
            }
            if (this.f21267do >= this.f21269if || !LocalPreviewActivity.this.mZoomRecyclerView.canScrollVertically(1)) {
                this.f21268for = 0;
                this.f21269if = 0;
                this.f21267do = 0;
                LocalPreviewActivity.this.d.removeCallbacks(LocalPreviewActivity.this.e);
                return;
            }
            this.f21267do += this.f21268for;
            LocalPreviewActivity.this.mZoomRecyclerView.scrollBy(0, LocalPreviewActivity.this.mZoomRecyclerView.getScrollY() + this.f21268for);
            LocalPreviewActivity.this.d.removeCallbacks(LocalPreviewActivity.this.e);
            LocalPreviewActivity.this.d.postDelayed(LocalPreviewActivity.this.e, 5L);
        }

        public /* synthetic */ Cthis(LocalPreviewActivity localPreviewActivity, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.activity.LocalPreviewActivity$try, reason: invalid class name */
    public class Ctry implements SingleObserver<FileSnapshot> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ boolean f21271do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ boolean f21273if;

        public Ctry(boolean z, boolean z2) {
            this.f21271do = z;
            this.f21273if = z2;
        }

        @Override // io.reactivex.SingleObserver
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onSuccess(FileSnapshot fileSnapshot) {
            File[] fileArrListFiles;
            try {
                LocalPreviewActivity.this.updateChapterName(fileSnapshot.getParent().getName());
                LocalPreviewActivity.this.hideProgress();
                ArrayList arrayList = new ArrayList();
                if (LocalPreviewActivity.this.f21249synchronized && this.f21271do) {
                    LocalPreviewActivity.this.I(fileSnapshot.getParent().getFile());
                    if (LocalPreviewActivity.this.c == null || !LocalPreviewActivity.this.c.exists() || (fileArrListFiles = LocalPreviewActivity.this.c.listFiles(LocalPreviewActivity.this)) == null || fileArrListFiles.length <= 0) {
                        LocalPreviewActivity.this.x0();
                    } else {
                        for (int i = 0; i < fileArrListFiles.length; i++) {
                            File file = fileArrListFiles[i];
                            if (!file.isDirectory()) {
                                RipeFile ripeFile = new RipeFile();
                                ripeFile.setFile(file);
                                ripeFile.setIndexPape(i + 1);
                                ripeFile.setMaxPage(fileArrListFiles.length);
                                ripeFile.setParentName(LocalPreviewActivity.this.c.getName());
                                ripeFile.setParentPath(LocalPreviewActivity.this.c.getPath());
                                arrayList.add(ripeFile);
                            }
                        }
                    }
                } else {
                    List<RipeFile> files = fileSnapshot.getFiles();
                    if (files == null || files.size() <= 0) {
                        LocalPreviewActivity.this.x0();
                    } else {
                        for (RipeFile ripeFile2 : files) {
                            if (!ripeFile2.isDirectory()) {
                                arrayList.add(ripeFile2);
                            }
                        }
                    }
                }
                LocalPreviewActivity.this.f21234goto.m25806continue(false, arrayList, this.f21273if);
                if (this.f21271do) {
                    LocalPreviewActivity.s0(LocalPreviewActivity.this.f21226catch, v02.m8711if(LocalPreviewActivity.this).m8715for(wq.f7635volatile, 1) == 1 ? LocalPreviewActivity.this.mZoomRecyclerView : LocalPreviewActivity.this.mRecyclerViewPager, LocalPreviewActivity.this.f21224abstract.intValue());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            LocalPreviewActivity.this.f21238interface.add(LocalPreviewActivity.this.f21242protected = disposable);
        }
    }

    private void B0(List<RipeFile> list, int i) {
        if (list != null) {
            Collections.sort(list, new Cbreak(i));
            this.f21233finally = false;
        }
    }

    public static void C0(Context context, RipeFile ripeFile, Integer num) {
        Intent intent = new Intent(context, (Class<?>) LocalPreviewActivity.class);
        intent.putExtra(wq.Cdo.f7671while, ripeFile);
        intent.putExtra(wq.Cdo.f7651goto, num);
        context.startActivity(intent);
    }

    public static void D0(Context context, RipeFile ripeFile, Integer num, boolean z) {
        Intent intent = new Intent(context, (Class<?>) LocalPreviewActivity.class);
        intent.putExtra(wq.Cdo.f7671while, ripeFile);
        intent.putExtra(wq.Cdo.f7651goto, num);
        intent.putExtra(wq.Cdo.f7657package, z);
        context.startActivity(intent);
    }

    public static void E(Activity activity) {
        try {
            Method declaredMethod = Activity.class.getDeclaredMethod("convertFromTranslucent", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(activity, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    private void E0() {
        if (this.f21244return) {
            return;
        }
        this.f21244return = true;
        this.ll_auto.setVisibility(0);
        this.ll_seek_progress.setVisibility(8);
        this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f08010c);
        if (v02.m8711if(this).m8715for(wq.f7635volatile, 1) != 1) {
            this.d.postDelayed(this.e, (long) ((this.bsb_auto.getMax() - this.bsb_auto.getProgressFloat()) * 10.0f * 1000.0f));
        } else {
            Cthis cthis = this.e;
            cthis.f21267do = 0;
            cthis.f21269if = Integer.MAX_VALUE;
            cthis.f21268for = (int) j10.m3660new(this, this.bsb_auto.getProgressFloat() * 2.0f);
            this.d.postDelayed(this.e, 5L);
        }
    }

    private void F(int i) {
        if (i == 1) {
            u0();
            return;
        }
        if (i == 2) {
            t0();
            return;
        }
        if (i == 4) {
            r0();
        } else if (i == 5) {
            o0();
        } else {
            if (i != 11) {
                return;
            }
            G0();
        }
    }

    private void F0() {
        if (this.f21244return) {
            this.f21244return = false;
            this.ll_auto.setVisibility(8);
            this.ll_seek_progress.setVisibility(8);
            this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f080107);
            Cthis cthis = this.e;
            cthis.f21269if = 0;
            this.d.removeCallbacks(cthis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0(int i) {
        v02.m8711if(this).m8714else(wq.f7635volatile, i);
        recreate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0() {
        int iM3742do = j8.m3742do(this);
        this.statusBatteryText.setText(iM3742do + "");
        this.batteryView.setPower(iM3742do);
        this.statusTimeText.setText(l22.m4563for(System.currentTimeMillis(), "HH:mm"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int M() {
        return v02.m8711if(this).m8715for(wq.f7635volatile, 1);
    }

    private int N(float f2, float f3) {
        getWindowManager().getDefaultDisplay().getSize(new Point());
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        float f4 = r0.x / 3.0f;
        float f5 = r0.y / 3.0f;
        if (iM8715for == 1) {
            if (f3 < f5) {
                return this.f21225break[0];
            }
            if (f3 > f5 && f3 < f5 * 2.0f) {
                return this.f21225break[1];
            }
            if (f3 > f5 * 2.0f) {
                return this.f21225break[2];
            }
        } else if (iM8715for == 3) {
            if (f2 < f4) {
                return this.f21225break[2];
            }
            if (f2 > f4 && f2 < f4 * 2.0f) {
                return this.f21225break[1];
            }
            if (f2 > f4 * 2.0f) {
                return this.f21225break[0];
            }
        } else {
            if (f2 < f4) {
                return this.f21225break[0];
            }
            if (f2 > f4 && f2 < f4 * 2.0f) {
                return this.f21225break[1];
            }
            if (f2 > f4 * 2.0f) {
                return this.f21225break[2];
            }
        }
        return 0;
    }

    private void O() throws IllegalStateException {
        boolean zM8713do;
        boolean zM8713do2;
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        this.f21225break = iM8715for == 1 ? mm.m4948new(this) : mm.m4945do(this);
        if (iM8715for == 1) {
            zM8713do = v02.m8711if(this).m8713do(wq.I0, true);
            this.scroll_mode_event_up_down.setVisibility(0);
            this.scroll_mode_event_left_right.setVisibility(8);
            this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.pu0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f5194do.R(view);
                }
            });
            this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.xu0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8025do.c0(view);
                }
            });
            this.ll_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vu0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f7345do.f0(view);
                }
            });
            this.ll_up_down_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.gv0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2256do.g0(view);
                }
            });
            this.event_top.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.yu0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8329do.h0(view);
                }
            });
            this.event_up_down_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.uu0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6985do.i0(view);
                }
            });
            this.event_bottom.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.cv0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f876do.j0(view);
                }
            });
        } else {
            if (iM8715for == 2) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.J0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f7700do.k0(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ru0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f5933do.l0(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ev0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f1590do.S(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.qu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f5523do.T(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.iv0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2902do.U(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ou0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f4747do.V(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.hv0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2517do.W(view);
                    }
                });
                this.event_right.setText("下一页");
                this.event_left.setText("上一页");
            } else if (iM8715for == 3) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.K0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.fv0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2007do.X(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.tu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f6699do.Y(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.av0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f249do.Z(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.su0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f6307do.a0(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.jv0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f3228do.b0(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.zu0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f8647do.d0(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.dv0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f1138do.e0(view);
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
        Ccase ccase = new Ccase(this);
        this.f21226catch = ccase;
        if (iM8715for == 2) {
            ccase.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f21226catch);
            this.f21227class = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            this.f21227class.attachToRecyclerView(this.mRecyclerViewPager);
        } else if (iM8715for == 3) {
            ccase.setReverseLayout(true);
            this.f21226catch.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f21226catch);
            this.f21227class = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            this.f21227class.attachToRecyclerView(this.mRecyclerViewPager);
        } else {
            ccase.setOrientation(1);
            this.mZoomRecyclerView.setLayoutManager(this.f21226catch);
            PagerSnapHelper pagerSnapHelper = this.f21227class;
            if (pagerSnapHelper != null) {
                pagerSnapHelper.attachToRecyclerView(null);
            }
        }
        this.a.initClickTips();
        this.a.updateReadModeColor(iM8715for);
        this.a.setOnCallbackListener(new Celse());
        this.b.setOnBrightnessSettingListener(new Cgoto());
        RecyclerView recyclerView = iM8715for == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        recycledViewPool.setMaxRecycledViews(0, 10);
        recyclerView.setRecycledViewPool(recycledViewPool);
        LocalPreviewAdapter localPreviewAdapter = new LocalPreviewAdapter(this, iM8715for);
        this.f21234goto = localPreviewAdapter;
        localPreviewAdapter.setTapGestureListener(this);
        this.f21234goto.m25811interface(v02.m8711if(this).m8713do(wq.D, false));
        this.f21234goto.m25812protected(v02.m8711if(this).m8713do(wq.E, false));
        this.f21234goto.m25810implements(v02.m8711if(this).m8713do(wq.F, false));
        this.f21234goto.m25815transient(2.0f);
        this.f21234goto.m25816volatile(v02.m8711if(this).m8713do(wq.q, true));
        this.f21234goto.m25813strictfp(true);
        recyclerView.setItemAnimator(null);
        recyclerView.setHasFixedSize(true);
        recyclerView.setItemViewCacheSize(10);
        recyclerView.setAdapter(this.f21234goto);
    }

    private void P() {
        this.mSeekBarScroll.setReverse(v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 3);
        this.mSeekBarScroll.setOnProgressChangeListener(this);
    }

    private boolean Q() {
        int itemCount = this.f21234goto.getItemCount();
        return (itemCount == 0 || (this.f21226catch.findFirstCompletelyVisibleItemPosition() == 0 && this.f21226catch.findLastCompletelyVisibleItemPosition() == itemCount - 1)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m0(RipeFile ripeFile, SingleEmitter singleEmitter) throws Exception {
        FileSnapshot fileSnapshotN0 = n0(ripeFile);
        if (fileSnapshotN0 == null) {
            singleEmitter.onError(new Exception("snapshot push failed!"));
            return;
        }
        this.f21246strictfp.push(this.f21229continue);
        this.f21229continue = fileSnapshotN0;
        singleEmitter.onSuccess(fileSnapshotN0);
    }

    private FileSnapshot n0(RipeFile ripeFile) {
        if (ripeFile != null && ripeFile.exists() && ripeFile.isDirectory()) {
            return H(ripeFile.getFile().listFiles(this), ripeFile);
        }
        return null;
    }

    private void o0() {
        p0();
    }

    private void r0() {
        q0();
    }

    public static void s0(LinearLayoutManager linearLayoutManager, RecyclerView recyclerView, int i) {
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
    public void t0() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        if (v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 1) {
            if (this.f21226catch.findLastVisibleItemPosition() == this.f21234goto.getItemCount() - 1) {
                o0();
            }
            this.mZoomRecyclerView.smoothScrollBy(0, point.y);
        } else {
            int iL = L();
            if (iL == this.f21234goto.getItemCount() - 1) {
                o0();
            } else {
                this.mRecyclerViewPager.smoothScrollToPosition(iL + 1);
            }
        }
    }

    public String A0(String str) {
        Matcher matcher = Pattern.compile("\\d+").matcher(str);
        return matcher.find() ? l22.m4553case("%04d", Long.valueOf(Long.valueOf(matcher.group(0)).longValue())) : str;
    }

    public void B() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iL = L();
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if (iM8715for == 1) {
            this.mZoomRecyclerView.smoothScrollBy(0, -point.y);
            if (iL == 0) {
                r0();
                return;
            }
            return;
        }
        if (iM8715for == 2) {
            if (iL == 0) {
                r0();
                return;
            } else {
                this.mRecyclerViewPager.smoothScrollToPosition(iL - 1);
                return;
            }
        }
        if (iL == this.f21234goto.getItemCount() - 1) {
            o0();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iL + 1);
        }
    }

    public void C() {
        boolean zM8713do = v02.m8711if(this).m8713do(wq.h, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.i, false);
        if (!zM8713do && zM8713do2) {
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    public void D() {
        BrightnessSettingWindow brightnessSettingWindow = this.b;
        if (brightnessSettingWindow == null || !brightnessSettingWindow.isShowing()) {
            return;
        }
        this.b.dismiss();
    }

    public List<RipeFile> G(File file) {
        File parentFile;
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        if (file != null) {
            try {
                if (file.exists() && (parentFile = file.getParentFile()) != null && parentFile.exists() && (fileArrListFiles = parentFile.listFiles(this)) != null && fileArrListFiles.length > 0) {
                    List listAsList = Arrays.asList(fileArrListFiles);
                    int i = 0;
                    int i2 = 0;
                    while (i2 < listAsList.size()) {
                        File file2 = (File) listAsList.get(i2);
                        File parentFile2 = file2.getParentFile();
                        RipeFile ripeFile = new RipeFile();
                        ripeFile.setFile(file2);
                        i2++;
                        ripeFile.setIndexPape(i2);
                        ripeFile.setMaxPage(listAsList.size());
                        if (parentFile2 != null && parentFile2.exists()) {
                            ripeFile.setParentName(parentFile2.getName());
                            ripeFile.setParentPath(parentFile2.getPath());
                        }
                        arrayList.add(ripeFile);
                    }
                    B0(arrayList, this.f21231extends);
                    while (i < arrayList.size()) {
                        RipeFile ripeFile2 = arrayList.get(i);
                        i++;
                        ripeFile2.setIndexPape(i);
                        ripeFile2.setMaxPage(listAsList.size());
                    }
                    return arrayList;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    public void G0() {
        if (this.buttomLayout.isShow()) {
            this.buttomLayout.setVisibility(8);
        } else {
            this.buttomLayout.setVisibility(0);
        }
        C();
    }

    public FileSnapshot H(File[] fileArr, RipeFile ripeFile) {
        if (fileArr == null || fileArr.length <= 0) {
            return null;
        }
        FileSnapshot fileSnapshot = new FileSnapshot();
        fileSnapshot.setParent(ripeFile);
        ArrayList arrayList = new ArrayList();
        List listAsList = Arrays.asList(fileArr);
        int i = 0;
        int i2 = 0;
        while (i2 < listAsList.size()) {
            File file = (File) listAsList.get(i2);
            RipeFile ripeFile2 = new RipeFile();
            ripeFile2.setFile(file);
            i2++;
            ripeFile2.setIndexPape(i2);
            ripeFile2.setMaxPage(listAsList.size());
            ripeFile2.setParentName(ripeFile.getName());
            ripeFile2.setParentPath(ripeFile.getPath());
            arrayList.add(ripeFile2);
        }
        B0(arrayList, this.f21231extends);
        while (i < arrayList.size()) {
            RipeFile ripeFile3 = arrayList.get(i);
            i++;
            ripeFile3.setIndexPape(i);
            ripeFile3.setMaxPage(listAsList.size());
        }
        fileSnapshot.setFiles(arrayList);
        return fileSnapshot;
    }

    public void I(File file) {
        File[] fileArrListFiles;
        try {
            String currPagePath = this.f21241private.getCurrPagePath();
            if (file == null || !file.exists() || (fileArrListFiles = file.listFiles(this)) == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                String absolutePath = file2.getAbsolutePath();
                if (currPagePath.contains(absolutePath) && !currPagePath.equals(absolutePath)) {
                    I(file2);
                } else if (currPagePath.contains(absolutePath) && currPagePath.equals(absolutePath) && !file2.isDirectory()) {
                    this.c = file;
                    return;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void J() {
        Disposable disposable = this.f21253transient;
        if (disposable != null) {
            this.f21238interface.remove(disposable);
        }
        ((SingleSubscribeProxy) jz1.m4138switch(new Cif()).h0(io.reactivex.schedulers.Cdo.m29768else()).Q(io.reactivex.android.schedulers.Cdo.m29358for()).m4155new(mp1.m4975do(this))).subscribe(new Cdo());
    }

    public void K() {
        Disposable disposable = this.f21235implements;
        if (disposable != null) {
            this.f21238interface.remove(disposable);
        }
        ((SingleSubscribeProxy) jz1.m4138switch(new Cnew()).h0(io.reactivex.schedulers.Cdo.m29768else()).Q(io.reactivex.android.schedulers.Cdo.m29358for()).m4155new(mp1.m4975do(this))).subscribe(new Cfor());
    }

    public int L() {
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if ((iM8715for != 2 && iM8715for != 3) || this.mRecyclerViewPager == null) {
            return this.f21226catch.findFirstVisibleItemPosition();
        }
        int iM10242if = this.f21226catch.canScrollHorizontally() ? zl1.m10242if(this.mRecyclerViewPager) : zl1.m10243new(this.mRecyclerViewPager);
        if (iM10242if < 0) {
            return 0;
        }
        return iM10242if;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        String name = file.getName();
        if (name.startsWith(".")) {
            return false;
        }
        if (file.isDirectory() && (file.list() == null || file.list().length == 0)) {
            return false;
        }
        if (file.isDirectory()) {
            return true;
        }
        for (String str : this.f21240package) {
            if (name.toUpperCase().endsWith("." + str.toUpperCase())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        Intent intent = getIntent();
        this.f21241private = (RipeFile) intent.getParcelableExtra(wq.Cdo.f7671while);
        this.f21224abstract = (Integer) intent.getSerializableExtra(wq.Cdo.f7651goto);
        this.f21249synchronized = intent.getBooleanExtra(wq.Cdo.f7657package, false);
        showProgress();
        v0(this.f21241private, true, false);
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
        this.f21232final = true;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c003a;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        D();
        MenuSettingDialog menuSettingDialog = this.a;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.a.dismiss();
            C();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout == null || !buttomMenuLayout.isShow()) {
            finish();
        } else {
            this.buttomLayout.setVisibility(8);
            C();
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
                if (!this.f21244return) {
                    E0();
                    break;
                } else {
                    F0();
                    break;
                }
            case R.id.arg_res_0x7f090354 /* 2131297108 */:
                H0(3);
                break;
            case R.id.arg_res_0x7f090356 /* 2131297110 */:
                H0(2);
                break;
            case R.id.arg_res_0x7f090357 /* 2131297111 */:
                H0(1);
                break;
            case R.id.arg_res_0x7f090463 /* 2131297379 */:
                z0();
                ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
                if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                    this.buttomLayout.setVisibility(8);
                }
                C();
                break;
            case R.id.arg_res_0x7f090466 /* 2131297382 */:
                D();
                ButtomMenuLayout buttomMenuLayout2 = this.buttomLayout;
                if (buttomMenuLayout2 != null && buttomMenuLayout2.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    C();
                }
                MenuSettingDialog menuSettingDialog = this.a;
                if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                    this.a.dismiss();
                    C();
                    break;
                }
                break;
            case R.id.arg_res_0x7f0904b0 /* 2131297456 */:
                this.a.show();
                D();
                ButtomMenuLayout buttomMenuLayout3 = this.buttomLayout;
                if (buttomMenuLayout3 != null && buttomMenuLayout3.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    C();
                    break;
                }
                break;
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            this.d.removeCallbacks(this.e);
            Ccatch ccatch = this.f21239native;
            if (ccatch != null) {
                ccatch.m25183if();
            }
            this.a.dismiss();
            super.onDestroy();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            boolean z = true;
            if (action != 1) {
                if (action == 2) {
                    int scaledTouchSlop = ViewConfiguration.get(this).getScaledTouchSlop();
                    if (!this.f21255while) {
                        float f2 = scaledTouchSlop;
                        if (Math.abs(this.f21247super - motionEvent.getX()) <= f2 && Math.abs(this.f21251throw - motionEvent.getY()) <= f2) {
                            z = false;
                        }
                        this.f21255while = z;
                    }
                }
            } else if (!this.f21255while) {
                int iM3648case = j10.m3648case(this);
                if (this.f21236import == null) {
                    this.f21236import = new RectF(j10.m3649catch() / 3, iM3648case / 3, (j10.m3649catch() * 2) / 3, (iM3648case * 2) / 3);
                }
                if (this.f21236import.contains(this.f21247super, this.f21251throw)) {
                    D();
                    MenuSettingDialog menuSettingDialog = this.a;
                    if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                        this.a.dismiss();
                        C();
                    }
                    return true;
                }
            }
        } else {
            this.f21247super = (int) motionEvent.getX();
            this.f21251throw = (int) motionEvent.getY();
            this.f21255while = false;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        LocalPreviewAdapter localPreviewAdapter = this.f21234goto;
        if (localPreviewAdapter != null && localPreviewAdapter.getItemCount() != 0) {
            int i2 = i != 24 ? i != 25 ? 0 : this.f21225break[4] : this.f21225break[3];
            boolean zM8713do = v02.m8711if(this).m8713do(wq.B, false);
            if (i2 != 0 && zM8713do) {
                F(i2);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.wsw.cospa.widget.view.OnTapGestureListener
    public void onLongPress(float f2, float f3) {
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
        w0();
        super.onPause();
        Ccatch ccatch = this.f21239native;
        if (ccatch != null) {
            ccatch.m25183if();
        }
    }

    @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
    public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        RecyclerView recyclerView = iM8715for == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        if (z) {
            if (iM8715for == 1) {
                s0(this.f21226catch, recyclerView, (L() + i) - this.f21228const);
            } else {
                s0(this.f21226catch, recyclerView, (L() + i) - this.f21228const);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Ccatch ccatch = new Ccatch();
        this.f21239native = ccatch;
        ccatch.m25182do();
        C();
    }

    @Override // com.wsw.cospa.widget.view.OnTapGestureListener
    public void onSingleTap(float f2, float f3) {
        D();
        MenuSettingDialog menuSettingDialog = this.a;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.a.dismiss();
            C();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout == null || !buttomMenuLayout.isShow()) {
            F(N(f2, f3));
        } else {
            this.buttomLayout.setVisibility(8);
            C();
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
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f21250this.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    public void p0() {
        J();
    }

    public void q0() {
        K();
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
            E(this);
        }
        if (v02.m8711if(this).m8713do(wq.g, false)) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(1);
        }
        m25873else();
        this.f21250this = com.gyf.immersionbar.Celse.k2(this);
        j10.m3664throw(this);
        MenuSettingDialog menuSettingDialog = new MenuSettingDialog(this);
        this.a = menuSettingDialog;
        menuSettingDialog.hideLongClickMenu(true);
        this.b = new BrightnessSettingWindow(this);
        if (v02.m8711if(this).m8713do(wq.n, false)) {
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
        P();
        O();
    }

    public void u0() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iL = L();
        if (v02.m8711if(this).m8715for(wq.f7635volatile, 1) == 1) {
            this.mZoomRecyclerView.smoothScrollBy(0, -point.y);
            if (iL == 0) {
                r0();
                return;
            }
            return;
        }
        if (iL == 0) {
            r0();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iL - 1);
        }
    }

    public void updateChapterName(String str) {
        this.statusChapterText.setText(str);
    }

    public void v0(final RipeFile ripeFile, boolean z, boolean z2) {
        Disposable disposable = this.f21242protected;
        if (disposable != null) {
            this.f21238interface.remove(disposable);
        }
        ((SingleSubscribeProxy) jz1.m4138switch(new SingleOnSubscribe() { // from class: android.support.v4.bv0
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) throws Exception {
                this.f542do.m0(ripeFile, singleEmitter);
            }
        }).h0(io.reactivex.schedulers.Cdo.m29768else()).Q(io.reactivex.android.schedulers.Cdo.m29358for()).m4155new(mp1.m4975do(this))).subscribe(new Ctry(z, z2));
    }

    public void w0() {
        try {
            this.f21241private.getPath();
            RipeFile ripeFileLoad = com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3133catch().load(this.f21241private.getRootPath());
            ripeFileLoad.setCurrPagePath(this.f21241private.getCurrPagePath());
            ripeFileLoad.setIndexPape(this.f21237instanceof.getIndexPape());
            ripeFileLoad.setMaxPage(this.f21237instanceof.getMaxPage());
            ripeFileLoad.setRootPath(this.f21241private.getRootPath());
            com.wsw.cospa.dao.Cnew.m26132case().m26138try().m3133catch().insertOrReplaceInTx(ripeFileLoad);
            nm1.m5277case().mo970if(ripeFileLoad);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void x0() {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText("文件不存在,请检查本地文件");
        this.f21232final = false;
    }

    public void y0(String str) {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText(str);
        this.f21232final = false;
    }

    public void z0() {
        BrightnessSettingWindow brightnessSettingWindow;
        if (isFinishing()) {
            return;
        }
        BrightnessSettingWindow brightnessSettingWindow2 = this.b;
        if ((brightnessSettingWindow2 == null || !brightnessSettingWindow2.isShowing()) && (brightnessSettingWindow = this.b) != null) {
            brightnessSettingWindow.showAtLocation(this.rootView, 80, 0, 0);
        }
    }
}
