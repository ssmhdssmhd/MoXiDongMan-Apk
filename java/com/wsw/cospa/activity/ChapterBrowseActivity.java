package com.wsw.cospa.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.Build;
import android.os.Handler;
import android.support.v4.b0;
import android.support.v4.bz1;
import android.support.v4.ed1;
import android.support.v4.ep1;
import android.support.v4.hm1;
import android.support.v4.im1;
import android.support.v4.j10;
import android.support.v4.j8;
import android.support.v4.jh0;
import android.support.v4.l22;
import android.support.v4.mm;
import android.support.v4.mp1;
import android.support.v4.oa1;
import android.support.v4.p12;
import android.support.v4.rd1;
import android.support.v4.tl0;
import android.support.v4.v02;
import android.support.v4.v72;
import android.support.v4.vv0;
import android.support.v4.wi0;
import android.support.v4.wq;
import android.support.v4.xh1;
import android.support.v4.y8;
import android.support.v4.zl1;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
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
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.bumptech.glide.Glide;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.scwang.smartrefresh.header.TaurusHeader;
import com.uber.autodispose.ObservableSubscribeProxy;
import com.wang.avi.AVLoadingIndicatorView;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.ChapterBrowseAdapter;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.ComicShelfBean;
import com.wsw.cospa.bean.ComicShelfGroupBean;
import com.wsw.cospa.bean.SearchComicBean;
import com.wsw.cospa.contract.ChapterBrowseContract;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.utils.Cthis;
import com.wsw.cospa.utils.Cwhile;
import com.wsw.cospa.utils.SaveImageCall;
import com.wsw.cospa.widget.BrightnessSettingWindow;
import com.wsw.cospa.widget.ChangeSourceDialog;
import com.wsw.cospa.widget.MenuSettingDialog;
import com.wsw.cospa.widget.OriginChooseDialog;
import com.wsw.cospa.widget.view.BatteryView;
import com.wsw.cospa.widget.view.ButtomMenuLayout;
import com.wsw.cospa.widget.view.ChapterBottomSheet;
import com.wsw.cospa.widget.view.OnTapGestureListener;
import com.wsw.cospa.widget.view.PreCacheLayoutManager;
import com.wsw.cospa.widget.view.RecyclerViewPager;
import com.wsw.cospa.widget.view.ReverseSeekBar;
import com.wsw.cospa.widget.view.ZoomableRecyclerView;
import com.xw.repo.BubbleSeekBar;
import fi.iki.elonen.NanoHTTPD;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.functions.Consumer;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.adw.library.widgets.discreteseekbar.DiscreteSeekBar;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class ChapterBrowseActivity extends BaseActivity<com.wsw.cospa.presenter.Cdo> implements ChapterBrowseContract.View, View.OnClickListener, RecyclerView.OnItemTouchListener, OnTapGestureListener, BubbleSeekBar.OnProgressChangedListener, CompoundButton.OnCheckedChangeListener, DiscreteSeekBar.OnProgressChangeListener, View.OnTouchListener {

    /* renamed from: synchronized, reason: not valid java name */
    private static final String f20931synchronized = ChapterBrowseActivity.class.getSimpleName();

    @BindView(R.id.arg_res_0x7f09009e)
    public LinearLayout autoPlayLayout;

    @BindView(R.id.arg_res_0x7f0903da)
    public BatteryView batteryView;

    /* renamed from: break, reason: not valid java name */
    private ChapterListBean f20933break;

    @BindView(R.id.arg_res_0x7f0900c4)
    public BubbleSeekBar bsb_auto;

    @BindView(R.id.arg_res_0x7f0900d8)
    public ButtomMenuLayout buttomLayout;

    /* renamed from: catch, reason: not valid java name */
    private ComicShelfBean f20934catch;

    /* renamed from: class, reason: not valid java name */
    private ChapterBrowseAdapter f20935class;

    @BindView(R.id.arg_res_0x7f09010e)
    public LinearLayout comic_status_bar;

    /* renamed from: const, reason: not valid java name */
    private Cgoto f20936const;

    @BindView(R.id.arg_res_0x7f090115)
    public RelativeLayout contentView;

    /* renamed from: continue, reason: not valid java name */
    private ChangeSourceDialog f20937continue;

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
    private PreCacheLayoutManager f20939extends;

    /* renamed from: finally, reason: not valid java name */
    private int[] f20941finally;

    /* renamed from: goto, reason: not valid java name */
    private Intent f20942goto;

    /* renamed from: interface, reason: not valid java name */
    private ChapterBottomSheet f20946interface;

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

    @BindView(R.id.arg_res_0x7f090332)
    public TextView preChapter;

    /* renamed from: protected, reason: not valid java name */
    private MenuSettingDialog f20950protected;

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

    /* renamed from: strictfp, reason: not valid java name */
    private xh1 f20954strictfp;

    /* renamed from: this, reason: not valid java name */
    private ChapterListBean f20957this;

    /* renamed from: transient, reason: not valid java name */
    private BrightnessSettingWindow f20960transient;

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

    @BindView(R.id.arg_res_0x7f0904a9)
    public TextView tvSaveBook;

    @BindView(R.id.arg_res_0x7f0904b0)
    public TextView tvSetting;

    @BindView(R.id.arg_res_0x7f0904d9)
    public View v_brightness;

    /* renamed from: volatile, reason: not valid java name */
    private com.gyf.immersionbar.Celse f20961volatile;

    /* renamed from: final, reason: not valid java name */
    private int f20940final = -1;

    /* renamed from: super, reason: not valid java name */
    private int f20955super = -1;

    /* renamed from: throw, reason: not valid java name */
    private boolean f20958throw = false;

    /* renamed from: while, reason: not valid java name */
    private final long f20962while = 5;

    /* renamed from: import, reason: not valid java name */
    private boolean f20944import = false;

    /* renamed from: native, reason: not valid java name */
    private boolean f20947native = false;

    /* renamed from: public, reason: not valid java name */
    private boolean f20951public = false;

    /* renamed from: return, reason: not valid java name */
    public boolean f20952return = true;

    /* renamed from: static, reason: not valid java name */
    private int f20953static = 0;

    /* renamed from: switch, reason: not valid java name */
    private int f20956switch = 0;

    /* renamed from: throws, reason: not valid java name */
    private boolean f20959throws = false;

    /* renamed from: default, reason: not valid java name */
    private RectF f20938default = null;

    /* renamed from: package, reason: not valid java name */
    private int f20948package = 0;

    /* renamed from: private, reason: not valid java name */
    private int f20949private = 0;

    /* renamed from: abstract, reason: not valid java name */
    private int f20932abstract = 0;

    /* renamed from: implements, reason: not valid java name */
    private Handler f20943implements = new Handler();

    /* renamed from: instanceof, reason: not valid java name */
    private Celse f20945instanceof = new Celse(this, null);

    public class CustomScrollListener extends RecyclerView.OnScrollListener {
        public CustomScrollListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 1) {
                if (ChapterBrowseActivity.this.f20946interface != null && ChapterBrowseActivity.this.f20946interface.isShow()) {
                    ChapterBrowseActivity.this.f20946interface.dismiss();
                    ChapterBrowseActivity.this.e0();
                }
                ButtomMenuLayout buttomMenuLayout = ChapterBrowseActivity.this.buttomLayout;
                if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                    ChapterBrowseActivity.this.buttomLayout.setVisibility(8);
                    ChapterBrowseActivity.this.e0();
                }
                if (ChapterBrowseActivity.this.f20950protected != null && ChapterBrowseActivity.this.f20950protected.isShowing()) {
                    ChapterBrowseActivity.this.f20950protected.dismiss();
                    ChapterBrowseActivity.this.e0();
                }
                ChapterBrowseActivity.this.f0();
                return;
            }
            if (i != 2) {
                return;
            }
            int iM0 = ChapterBrowseActivity.this.m0();
            boolean zT0 = ChapterBrowseActivity.this.t0();
            if (ChapterBrowseActivity.this.f20935class.getItemCount() <= 2) {
                if (ChapterBrowseActivity.this.f20940final != 0) {
                    ChapterBrowseActivity chapterBrowseActivity = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity.f21911if).mo25913class(chapterBrowseActivity.f20957this);
                    ChapterBrowseActivity.this.f20951public = true;
                }
                if (ChapterBrowseActivity.this.f20940final != ChapterBrowseActivity.this.f20934catch.getChapterListSize().intValue() - 1) {
                    ChapterBrowseActivity chapterBrowseActivity2 = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity2.f21911if).mo25912catch(chapterBrowseActivity2.f20933break);
                    ChapterBrowseActivity.this.f20951public = true;
                }
            } else if (zT0 && ChapterBrowseActivity.this.f20935class != null && ChapterBrowseActivity.this.f20939extends != null && iM0 == 1) {
                int iFindFirstVisibleItemPosition = ChapterBrowseActivity.this.f20939extends.findFirstVisibleItemPosition();
                int iFindLastVisibleItemPosition = ChapterBrowseActivity.this.f20939extends.findLastVisibleItemPosition();
                ComicContentImgBean comicContentImgBeanM25487default = ChapterBrowseActivity.this.f20935class.m25487default(iFindFirstVisibleItemPosition);
                ComicContentImgBean comicContentImgBeanM25487default2 = ChapterBrowseActivity.this.f20935class.m25487default(iFindLastVisibleItemPosition);
                int unused = ChapterBrowseActivity.this.f20940final;
                ChapterBrowseActivity.this.f20940final = comicContentImgBeanM25487default.getChapterIndex();
                int unused2 = ChapterBrowseActivity.this.f20955super;
                ChapterBrowseActivity.this.f20955super = comicContentImgBeanM25487default2.getChapterIndex();
                ChapterBrowseActivity.this.f20951public = false;
                if (!ChapterBrowseActivity.this.f20951public) {
                    if (iFindLastVisibleItemPosition == ChapterBrowseActivity.this.f20935class.getItemCount() - 1) {
                        ChapterBrowseActivity chapterBrowseActivity3 = ChapterBrowseActivity.this;
                        ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity3.f21911if).mo25912catch(chapterBrowseActivity3.f20933break);
                        ChapterBrowseActivity.this.f20951public = true;
                    }
                    if (iFindFirstVisibleItemPosition == 0 && zT0) {
                        ChapterBrowseActivity chapterBrowseActivity4 = ChapterBrowseActivity.this;
                        ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity4.f21911if).mo25913class(chapterBrowseActivity4.f20957this);
                        ChapterBrowseActivity.this.f20951public = true;
                    }
                }
            }
            if (iM0 == 2 || iM0 == 3) {
                int iFindFirstVisibleItemPosition2 = ChapterBrowseActivity.this.f20939extends.findFirstVisibleItemPosition();
                int iFindLastVisibleItemPosition2 = ChapterBrowseActivity.this.f20939extends.findLastVisibleItemPosition();
                ChapterBrowseActivity.this.f20951public = false;
                if (ChapterBrowseActivity.this.f20951public) {
                    return;
                }
                if (iFindLastVisibleItemPosition2 == ChapterBrowseActivity.this.f20935class.getItemCount() - 1) {
                    ChapterBrowseActivity chapterBrowseActivity5 = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity5.f21911if).mo25912catch(chapterBrowseActivity5.f20933break);
                    ChapterBrowseActivity.this.f20951public = true;
                }
                if (iFindFirstVisibleItemPosition2 != 0 || zT0) {
                    return;
                }
                ChapterBrowseActivity chapterBrowseActivity6 = ChapterBrowseActivity.this;
                ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity6.f21911if).mo25913class(chapterBrowseActivity6.f20957this);
                ChapterBrowseActivity.this.f20951public = true;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            int top;
            super.onScrolled(recyclerView, i, i2);
            recyclerView.computeVerticalScrollOffset();
            int iFindFirstVisibleItemPosition = ChapterBrowseActivity.this.f20939extends.findFirstVisibleItemPosition();
            int iFindLastVisibleItemPosition = ChapterBrowseActivity.this.f20939extends.findLastVisibleItemPosition();
            int itemCount = ChapterBrowseActivity.this.f20935class.getItemCount();
            int iM0 = ChapterBrowseActivity.this.m0();
            if (iM0 == 1) {
                View childAt = ChapterBrowseActivity.this.f20939extends.getChildAt(0);
                Objects.requireNonNull(childAt);
                top = childAt.getTop();
            } else {
                top = 0;
            }
            if ((iM0 == 2 || iM0 == 3) && i == 0) {
                if (iFindLastVisibleItemPosition == ChapterBrowseActivity.this.f20935class.getItemCount() - 1) {
                    ChapterBrowseActivity chapterBrowseActivity = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity.f21911if).mo25912catch(chapterBrowseActivity.f20933break);
                    ChapterBrowseActivity.this.f20947native = true;
                }
                if (iFindFirstVisibleItemPosition == 0) {
                    ChapterBrowseActivity chapterBrowseActivity2 = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity2.f21911if).mo25913class(chapterBrowseActivity2.f20957this);
                    ChapterBrowseActivity.this.f20944import = true;
                }
            }
            if (iFindFirstVisibleItemPosition <= 1) {
                if (iM0 == 1 && i2 < -10 && !ChapterBrowseActivity.this.f20944import) {
                    ChapterBrowseActivity chapterBrowseActivity3 = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity3.f21911if).mo25913class(chapterBrowseActivity3.f20957this);
                    ChapterBrowseActivity.this.f20944import = true;
                } else if ((iM0 == 2 || iM0 == 3) && i < -10 && !ChapterBrowseActivity.this.f20944import) {
                    ChapterBrowseActivity chapterBrowseActivity4 = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity4.f21911if).mo25913class(chapterBrowseActivity4.f20957this);
                    ChapterBrowseActivity.this.f20944import = true;
                }
            } else if (iFindLastVisibleItemPosition >= itemCount - 2) {
                if (iM0 == 1 && i2 > 10 && !ChapterBrowseActivity.this.f20947native) {
                    ChapterBrowseActivity chapterBrowseActivity5 = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity5.f21911if).mo25912catch(chapterBrowseActivity5.f20957this);
                    ChapterBrowseActivity.this.f20947native = true;
                } else if ((iM0 == 2 || iM0 == 3) && i > 0 && !ChapterBrowseActivity.this.f20947native) {
                    ChapterBrowseActivity chapterBrowseActivity6 = ChapterBrowseActivity.this;
                    ((com.wsw.cospa.presenter.Cdo) chapterBrowseActivity6.f21911if).mo25912catch(chapterBrowseActivity6.f20957this);
                    ChapterBrowseActivity.this.f20947native = true;
                }
            }
            if (((iM0 != 1 || top == ChapterBrowseActivity.this.f20932abstract) && itemCount <= 0) || iFindFirstVisibleItemPosition < 0 || iFindFirstVisibleItemPosition > itemCount - 1) {
                return;
            }
            ComicContentImgBean comicContentImgBeanM25487default = ChapterBrowseActivity.this.f20935class.m25487default(iFindFirstVisibleItemPosition);
            ComicContentImgBean comicContentImgBeanM25487default2 = ChapterBrowseActivity.this.f20935class.m25487default(iFindLastVisibleItemPosition);
            int i3 = ChapterBrowseActivity.this.f20940final;
            ChapterBrowseActivity.this.f20940final = comicContentImgBeanM25487default.getChapterIndex();
            int i4 = ChapterBrowseActivity.this.f20955super;
            ChapterBrowseActivity.this.f20955super = comicContentImgBeanM25487default2.getChapterIndex();
            ChapterBrowseActivity.this.f20948package = comicContentImgBeanM25487default.getIndexPape();
            ChapterBrowseActivity.this.f20949private = comicContentImgBeanM25487default.getMaxPage();
            ChapterBrowseActivity.this.mSeekBarScroll.setMax(comicContentImgBeanM25487default.getMaxPage());
            ChapterBrowseActivity.this.mSeekBarScroll.setProgress(comicContentImgBeanM25487default.getIndexPape());
            int indexPape = comicContentImgBeanM25487default.getIndexPape();
            if (iM0 == 1) {
                indexPape = ChapterBrowseActivity.g0(comicContentImgBeanM25487default.getIndexPape(), top * (-1));
            }
            ChapterBrowseActivity.this.f20934catch.setDurChapterPage(Integer.valueOf(indexPape));
            ChapterBrowseActivity.this.f20934catch.setDurChapter(Integer.valueOf(comicContentImgBeanM25487default.getChapterIndex()));
            ChapterBrowseActivity.this.f20934catch.setDurChapterName(comicContentImgBeanM25487default.getChapterText());
            ChapterBrowseActivity.this.mHeadTitleRight.setText(String.format("%d/%d", Integer.valueOf(comicContentImgBeanM25487default.getIndexPape()), Integer.valueOf(comicContentImgBeanM25487default.getMaxPage())));
            ChapterBrowseActivity.this.statusChapterText.setText(comicContentImgBeanM25487default.getChapterText());
            ChapterBrowseActivity.this.buttomLayout.updateChapterUrl(comicContentImgBeanM25487default.getChapterContentUrl());
            ChapterBrowseActivity.this.f20946interface.refresh(ChapterBrowseActivity.this.f20940final);
            ChapterBrowseActivity chapterBrowseActivity7 = ChapterBrowseActivity.this;
            chapterBrowseActivity7.f20957this = chapterBrowseActivity7.f20934catch.getChapterList(ChapterBrowseActivity.this.f20940final);
            ChapterBrowseActivity chapterBrowseActivity8 = ChapterBrowseActivity.this;
            chapterBrowseActivity8.f20933break = chapterBrowseActivity8.f20934catch.getChapterList(ChapterBrowseActivity.this.f20955super);
            if (i3 != ChapterBrowseActivity.this.f20940final) {
                ChapterBrowseActivity.this.f20944import = false;
            }
            if (i4 != ChapterBrowseActivity.this.f20955super) {
                ChapterBrowseActivity.this.f20947native = false;
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$case, reason: invalid class name */
    public class Ccase implements SaveImageCall {
        public Ccase() {
        }

        @Override // com.wsw.cospa.utils.SaveImageCall
        public void onFault() {
            if (ChapterBrowseActivity.this.f20954strictfp != null) {
                ChapterBrowseActivity.this.f20954strictfp.dismiss();
            }
            v72.m8769if("保存失败，请重试");
        }

        @Override // com.wsw.cospa.utils.SaveImageCall
        public void onSucce() {
            if (ChapterBrowseActivity.this.f20954strictfp != null) {
                ChapterBrowseActivity.this.f20954strictfp.dismiss();
            }
            v72.m8769if("保存成功");
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$do, reason: invalid class name */
    public class Cdo extends PreCacheLayoutManager {
        public Cdo(Context context) {
            super(context);
        }

        @Override // com.wsw.cospa.widget.view.PreCacheLayoutManager, androidx.recyclerview.widget.LinearLayoutManager
        public int getExtraLayoutSpace(RecyclerView.State state) {
            return 2;
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$else, reason: invalid class name */
    public class Celse implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public int f20966do;

        /* renamed from: for, reason: not valid java name */
        public int f20967for;

        /* renamed from: if, reason: not valid java name */
        public int f20968if;

        private Celse() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int iM0 = ChapterBrowseActivity.this.m0();
            if (iM0 != 1) {
                if (iM0 == 2) {
                    ChapterBrowseActivity.this.p1();
                } else {
                    ChapterBrowseActivity.this.d0();
                }
                float max = ChapterBrowseActivity.this.bsb_auto.getMax();
                float progressFloat = ChapterBrowseActivity.this.bsb_auto.getProgressFloat();
                ChapterBrowseActivity.this.f20943implements.removeCallbacks(ChapterBrowseActivity.this.f20945instanceof);
                ChapterBrowseActivity.this.f20943implements.postDelayed(ChapterBrowseActivity.this.f20945instanceof, (long) ((max - progressFloat) * 10.0f * 1000.0f));
                return;
            }
            if (this.f20966do >= this.f20968if || !ChapterBrowseActivity.this.mZoomRecyclerView.canScrollVertically(1)) {
                this.f20967for = 0;
                this.f20968if = 0;
                this.f20966do = 0;
                ChapterBrowseActivity.this.f20943implements.removeCallbacks(ChapterBrowseActivity.this.f20945instanceof);
                return;
            }
            this.f20966do += this.f20967for;
            ChapterBrowseActivity.this.mZoomRecyclerView.scrollBy(0, ChapterBrowseActivity.this.mZoomRecyclerView.getScrollY() + this.f20967for);
            ChapterBrowseActivity.this.f20943implements.removeCallbacks(ChapterBrowseActivity.this.f20945instanceof);
            ChapterBrowseActivity.this.f20943implements.postDelayed(ChapterBrowseActivity.this.f20945instanceof, 5L);
        }

        public /* synthetic */ Celse(ChapterBrowseActivity chapterBrowseActivity, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$for, reason: invalid class name */
    public class Cfor implements BrightnessSettingWindow.onBrightnessSettingListener {
        public Cfor() {
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onComicBackgroundColor(Integer num) {
            ChapterBrowseActivity chapterBrowseActivity = ChapterBrowseActivity.this;
            chapterBrowseActivity.rootView.setBackgroundColor(chapterBrowseActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                ChapterBrowseActivity.this.m25876super();
            } else {
                ChapterBrowseActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.BrightnessSettingWindow.onBrightnessSettingListener
        public void onWindowBrightness(float f) {
            ChapterBrowseActivity.this.v_brightness.setAlpha(f);
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$goto, reason: invalid class name */
    public class Cgoto extends BroadcastReceiver {
        public Cgoto() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m24860do() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            ChapterBrowseActivity chapterBrowseActivity = ChapterBrowseActivity.this;
            chapterBrowseActivity.registerReceiver(chapterBrowseActivity.f20936const, intentFilter);
        }

        /* renamed from: if, reason: not valid java name */
        public void m24861if() {
            ChapterBrowseActivity chapterBrowseActivity = ChapterBrowseActivity.this;
            chapterBrowseActivity.unregisterReceiver(chapterBrowseActivity.f20936const);
            ChapterBrowseActivity.this.f20936const = null;
        }

        @Override // android.content.BroadcastReceiver
        @SuppressLint({"DefaultLocale"})
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.TIME_TICK".equals(intent.getAction())) {
                ChapterBrowseActivity.this.D1();
            } else if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                ChapterBrowseActivity.this.D1();
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$if, reason: invalid class name */
    public class Cif implements MenuSettingDialog.onCallbackListener {
        public Cif() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public /* synthetic */ void m24862break(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_up_down.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public /* synthetic */ void m24864catch(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_up_down.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name */
        public /* synthetic */ void m24865class(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_up_down.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: const, reason: not valid java name */
        public /* synthetic */ void m24866const(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: final, reason: not valid java name */
        public /* synthetic */ void m24869final(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: import, reason: not valid java name */
        public /* synthetic */ void m24873import(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: super, reason: not valid java name */
        public /* synthetic */ void m24875super(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: throw, reason: not valid java name */
        public /* synthetic */ void m24877throw(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: while, reason: not valid java name */
        public /* synthetic */ void m24879while(View view) {
            ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(8);
            ChapterBrowseActivity.this.ll_click_event.setVisibility(8);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onClickEventPosition() {
            ChapterBrowseActivity.this.e0();
            int iM0 = ChapterBrowseActivity.this.m0();
            if (iM0 == 1) {
                ChapterBrowseActivity.this.scroll_mode_event_up_down.setVisibility(0);
                ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(8);
                ChapterBrowseActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.goto
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21488do.m24862break(view);
                    }
                });
                ChapterBrowseActivity.this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.class
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21477do.m24864catch(view);
                    }
                });
                ChapterBrowseActivity.this.ll_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.super
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21509do.m24865class(view);
                    }
                });
            } else if (iM0 == 2) {
                ChapterBrowseActivity.this.scroll_mode_event_up_down.setVisibility(8);
                ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(0);
                ChapterBrowseActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.break
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21473do.m24866const(view);
                    }
                });
                ChapterBrowseActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.final
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21485do.m24869final(view);
                    }
                });
                ChapterBrowseActivity.this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.catch
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21476do.m24875super(view);
                    }
                });
                ChapterBrowseActivity.this.event_right.setText("下一页");
                ChapterBrowseActivity.this.event_left.setText("上一页");
            } else if (iM0 == 3) {
                ChapterBrowseActivity.this.scroll_mode_event_up_down.setVisibility(8);
                ChapterBrowseActivity.this.scroll_mode_event_left_right.setVisibility(0);
                ChapterBrowseActivity.this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.this
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21512do.m24877throw(view);
                    }
                });
                ChapterBrowseActivity.this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.throw
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21513do.m24879while(view);
                    }
                });
                ChapterBrowseActivity.this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.activity.const
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f21478do.m24873import(view);
                    }
                });
                ChapterBrowseActivity.this.event_right.setText("上一页");
                ChapterBrowseActivity.this.event_left.setText("下一页");
            }
            ChapterBrowseActivity.this.ll_click_event.setVisibility(0);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onComicBackgroundColor(Integer num) {
            ChapterBrowseActivity chapterBrowseActivity = ChapterBrowseActivity.this;
            chapterBrowseActivity.rootView.setBackgroundColor(chapterBrowseActivity.getResources().getColor(num.intValue()));
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onReadMode(int i) {
            ChapterBrowseActivity.this.C1(i);
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onShowComicState() {
            if (v02.m8711if(ChapterBrowseActivity.this).m8713do(wq.m, false)) {
                ChapterBrowseActivity.this.comic_status_bar.setVisibility(8);
            } else {
                ChapterBrowseActivity.this.comic_status_bar.setVisibility(0);
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchEyeCareMode(boolean z) {
            if (z) {
                ChapterBrowseActivity.this.m25876super();
            } else {
                ChapterBrowseActivity.this.m25875if();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchNavigationBar() {
            if (v02.m8711if(ChapterBrowseActivity.this).m8713do(wq.i, false)) {
                ChapterBrowseActivity.this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
            } else {
                ChapterBrowseActivity.this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchPagingReverse(boolean z) {
            v02.m8711if(ChapterBrowseActivity.this).m8712case(wq.E, z);
            if (ChapterBrowseActivity.this.f20934catch != null) {
                String str = String.valueOf(System.currentTimeMillis()) + "_chapter";
                String str2 = String.valueOf(System.currentTimeMillis()) + "_shelf";
                y8.m9768for().m9771new(str2, ChapterBrowseActivity.this.f20934catch);
                y8.m9768for().m9771new(str, ChapterBrowseActivity.this.f20934catch.getChapterList(ChapterBrowseActivity.this.f20934catch.getDurChapter()));
                ChapterBrowseActivity.w1(ChapterBrowseActivity.this, str, str2);
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchReaderPaging(boolean z) {
            v02.m8711if(ChapterBrowseActivity.this).m8712case(wq.D, z);
            if (ChapterBrowseActivity.this.f20934catch != null) {
                String str = String.valueOf(System.currentTimeMillis()) + "_chapter";
                String str2 = String.valueOf(System.currentTimeMillis()) + "_shelf";
                y8.m9768for().m9771new(str2, ChapterBrowseActivity.this.f20934catch);
                y8.m9768for().m9771new(str, ChapterBrowseActivity.this.f20934catch.getChapterList(ChapterBrowseActivity.this.f20934catch.getDurChapter()));
                ChapterBrowseActivity.w1(ChapterBrowseActivity.this, str, str2);
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchStatusBar() {
            if (v02.m8711if(ChapterBrowseActivity.this).m8713do(wq.h, false)) {
                ChapterBrowseActivity.this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
            } else {
                ChapterBrowseActivity.this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
            }
        }

        @Override // com.wsw.cospa.widget.MenuSettingDialog.onCallbackListener
        public void onSwitchWhiteEdge(boolean z) {
            v02.m8711if(ChapterBrowseActivity.this).m8712case(wq.F, z);
            if (ChapterBrowseActivity.this.f20934catch != null) {
                String str = String.valueOf(System.currentTimeMillis()) + "_chapter";
                String str2 = String.valueOf(System.currentTimeMillis()) + "_shelf";
                y8.m9768for().m9771new(str2, ChapterBrowseActivity.this.f20934catch);
                y8.m9768for().m9771new(str, ChapterBrowseActivity.this.f20934catch.getChapterList(ChapterBrowseActivity.this.f20934catch.getDurChapter()));
                ChapterBrowseActivity.w1(ChapterBrowseActivity.this, str, str2);
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$new, reason: invalid class name */
    public class Cnew extends bz1<ComicShelfBean> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicShelfBean f20973do;

        public Cnew(ComicShelfBean comicShelfBean) {
            this.f20973do = comicShelfBean;
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            if (comicShelfBean == null || !this.f20973do.equals(comicShelfBean)) {
                ChapterBrowseActivity.this.tvSaveBook.setVisibility(0);
            } else {
                ChapterBrowseActivity.this.tvSaveBook.setVisibility(8);
            }
        }
    }

    /* renamed from: com.wsw.cospa.activity.ChapterBrowseActivity$try, reason: invalid class name */
    public class Ctry extends bz1<ComicShelfBean> {
        public Ctry() {
        }

        @Override // io.reactivex.Observer
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onNext(ComicShelfBean comicShelfBean) {
            y8.m9768for().m9771new(wq.Cdo.f7652if, ChapterBrowseActivity.this.f20934catch);
            if (comicShelfBean != null) {
                ChapterBrowseActivity chapterBrowseActivity = ChapterBrowseActivity.this;
                ComicDetailActivity.S(chapterBrowseActivity, true, chapterBrowseActivity.f20934catch.getNoteUrl());
            } else {
                ChapterBrowseActivity chapterBrowseActivity2 = ChapterBrowseActivity.this;
                ComicDetailActivity.S(chapterBrowseActivity2, false, chapterBrowseActivity2.f20934catch.getNoteUrl());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    private void A1() {
        if (this.f20958throw) {
            this.f20958throw = false;
            this.ll_auto.setVisibility(8);
            this.ll_seek_progress.setVisibility(0);
            this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f080107);
            Celse celse = this.f20945instanceof;
            celse.f20968if = 0;
            this.f20943implements.removeCallbacks(celse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C1(int i) {
        ComicShelfBean comicShelfBean = this.f20934catch;
        if (comicShelfBean != null) {
            comicShelfBean.setReadMode(Integer.valueOf(i));
        }
        r1();
        v02.m8711if(this).m8714else(wq.f7635volatile, i);
        recreate();
        if (this.f20934catch != null) {
            String str = System.currentTimeMillis() + "_chapter";
            y8.m9768for().m9771new(System.currentTimeMillis() + "_shelf", this.f20934catch);
            y8 y8VarM9768for = y8.m9768for();
            ComicShelfBean comicShelfBean2 = this.f20934catch;
            y8VarM9768for.m9771new(str, comicShelfBean2.getChapterList(comicShelfBean2.getDurChapter()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D1() {
        int iM3742do = j8.m3742do(this);
        this.statusBatteryText.setText(iM3742do + "");
        this.batteryView.setPower(iM3742do);
        this.statusTimeText.setText(l22.m4563for(System.currentTimeMillis(), "HH:mm"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void E0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.J0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N0(View view) {
        this.scroll_mode_event_left_right.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.K0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Q0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void R0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void S0(View view) {
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25916final(this.f20957this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T0(View view) {
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25920throw(this.f20957this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void U0(View view) {
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25918super(this.f20957this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void V0(int i, DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        cc.shinichi.library.Cdo.m10382break().m10383abstract(this).a(i).m10400instanceof(i0()).m10410strictfp(false).m10419volatile(true).k(TaurusHeader.a).l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void W0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        s1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void X0(ComicContentImgBean comicContentImgBean, DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (ed1.m1798do(this)) {
            Cthis.m27105class(this, comicContentImgBean);
        } else {
            v72.m8769if("请去设置打开文件读写权限");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Y0(ComicContentImgBean comicContentImgBean, DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        ClipboardManager clipboardManager = (ClipboardManager) getSystemService("clipboard");
        if (comicContentImgBean == null || TextUtils.isEmpty(comicContentImgBean.getImgurl())) {
            return;
        }
        clipboardManager.setPrimaryClip(ClipData.newPlainText(comicContentImgBean.getImgurl(), comicContentImgBean.getImgurl()));
        v72.m8769if("复制成功");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Z0(SearchComicBean searchComicBean) {
        this.f20937continue.dismiss();
        finish();
        ComicDetailActivity.R(this, false, searchComicBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a1(DialogInterface dialogInterface) {
        if (v02.m8711if(this).m8713do(wq.h, false)) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        } else {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b1() {
        hm1.m3062case().mo970if(new Object[0]);
        im1.m3512case().mo970if(this.f20934catch);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c1(ComicShelfBean comicShelfBean) {
        try {
            if (comicShelfBean != null) {
                this.f20934catch.setFinalDate(Long.valueOf(System.currentTimeMillis()));
                this.f20934catch.setHasUpdate(Boolean.FALSE);
                com.wsw.cospa.dao.Cdo.n(this.f20934catch);
                wi0.m9165try(new Runnable() { // from class: android.support.v4.si
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6156do.b1();
                    }
                });
            } else {
                im1.m3512case().mo970if(this.f20934catch);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d1() {
        final ComicShelfBean comicShelfBeanM26100finally = com.wsw.cospa.dao.Cdo.m26100finally(this.f20934catch.getNoteUrl());
        com.wsw.cospa.utils.Ccase.m26722this().m26728throw().execute(new Runnable() { // from class: android.support.v4.wi
            @Override // java.lang.Runnable
            public final void run() {
                this.f7532do.c1(comicShelfBeanM26100finally);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e1() {
        hm1.m3062case().mo970if(new Object[0]);
        im1.m3512case().mo970if(this.f20934catch);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f1(ObservableEmitter observableEmitter) throws Exception {
        this.f20934catch.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        this.f20934catch.setHasUpdate(Boolean.FALSE);
        com.wsw.cospa.dao.Cdo.n(this.f20934catch);
        wi0.m9165try(new Runnable() { // from class: android.support.v4.vi
            @Override // java.lang.Runnable
            public final void run() {
                this.f7221do.e1();
            }
        });
        observableEmitter.onNext(Boolean.TRUE);
    }

    public static int g0(int i, int i2) {
        return (i & 4095) | ((i2 << 12) & (-4096));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g1(Boolean bool) throws Exception {
        r0(this.f20934catch);
    }

    public static void h0(Activity activity) {
        try {
            Method declaredMethod = Activity.class.getDeclaredMethod("convertFromTranslucent", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(activity, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h1(QMUIDialog.Cfor cfor, List list, DialogInterface dialogInterface, int i) {
        int iA = cfor.a();
        if (iA == 0) {
            ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.ki
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    this.f3387do.f1(observableEmitter);
                }
            }).subscribeOn(io.reactivex.schedulers.Cdo.m29772new()).subscribeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.pi
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f4975do.g1((Boolean) obj);
                }
            });
        } else {
            c0((ComicShelfGroupBean) list.get(iA - 1));
        }
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i1() {
        hm1.m3062case().mo970if(new Object[0]);
        im1.m3512case().mo970if(this.f20934catch);
    }

    private void j0(int i) {
        if (i == 1) {
            q1();
            return;
        }
        if (i == 2) {
            p1();
            return;
        }
        if (i == 4) {
            if (this.f20944import) {
                return;
            }
            m1();
            this.f20944import = true;
            return;
        }
        if (i != 5) {
            if (i != 11) {
                return;
            }
            B1();
        } else {
            if (this.f20947native) {
                return;
            }
            l1();
            this.f20947native = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j1(ObservableEmitter observableEmitter) throws Exception {
        this.f20934catch.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        this.f20934catch.setHasUpdate(Boolean.FALSE);
        com.wsw.cospa.dao.Cdo.n(this.f20934catch);
        wi0.m9165try(new Runnable() { // from class: android.support.v4.ri
            @Override // java.lang.Runnable
            public final void run() {
                this.f5812do.i1();
            }
        });
        observableEmitter.onNext(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k1(Boolean bool) throws Exception {
        r0(this.f20934catch);
    }

    private void l1() {
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25912catch(this.f20957this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int m0() {
        ComicShelfBean comicShelfBean = this.f20934catch;
        return (comicShelfBean == null || comicShelfBean.getReadMode() == null || this.f20934catch.getReadMode().intValue() == 0) ? v02.m8711if(this).m8715for(wq.f7635volatile, 1) : this.f20934catch.getReadMode().intValue();
    }

    private void m1() {
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25913class(this.f20957this);
    }

    private int n0(ComicShelfBean comicShelfBean) {
        return (comicShelfBean == null || comicShelfBean.getReadMode() == null || comicShelfBean.getReadMode().intValue() == 0) ? v02.m8711if(this).m8715for(wq.f7635volatile, 1) : comicShelfBean.getReadMode().intValue();
    }

    private int o0(float f, float f2) {
        getWindowManager().getDefaultDisplay().getSize(new Point());
        int iM0 = m0();
        float f3 = r0.x / 3.0f;
        float f4 = r0.y / 3.0f;
        if (iM0 == 1) {
            if (f2 < f4) {
                return this.f20941finally[0];
            }
            if (f2 > f4 && f2 < f4 * 2.0f) {
                return this.f20941finally[1];
            }
            if (f2 > f4 * 2.0f) {
                return this.f20941finally[2];
            }
        } else if (iM0 == 3) {
            if (f < f3) {
                return this.f20941finally[2];
            }
            if (f > f3 && f < f3 * 2.0f) {
                return this.f20941finally[1];
            }
            if (f > f3 * 2.0f) {
                return this.f20941finally[0];
            }
        } else {
            if (f < f3) {
                return this.f20941finally[0];
            }
            if (f > f3 && f < f3 * 2.0f) {
                return this.f20941finally[1];
            }
            if (f > f3 * 2.0f) {
                return this.f20941finally[2];
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p1() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        if (m0() == 1) {
            if (this.f20939extends.findLastVisibleItemPosition() == this.f20935class.getItemCount() - 1 && !this.f20947native) {
                ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25912catch(this.f20933break);
                this.f20947native = true;
                return;
            } else {
                ZoomableRecyclerView zoomableRecyclerView = this.mZoomRecyclerView;
                if (zoomableRecyclerView != null) {
                    zoomableRecyclerView.smoothScrollBy(0, point.y / 2);
                    return;
                }
                return;
            }
        }
        int iK0 = k0();
        if (iK0 == this.f20935class.getItemCount() - 1 && !this.f20947native) {
            l1();
            this.f20947native = true;
        } else {
            RecyclerViewPager recyclerViewPager = this.mRecyclerViewPager;
            if (recyclerViewPager != null) {
                recyclerViewPager.smoothScrollToPosition(iK0 + 1);
            }
        }
    }

    private void q0() throws IllegalStateException {
        boolean zM8713do;
        boolean zM8713do2;
        int iM0 = m0();
        this.f20950protected.initClickTips();
        if (iM0 == 1) {
            zM8713do = v02.m8711if(this).m8713do(wq.I0, true);
            this.scroll_mode_event_up_down.setVisibility(0);
            this.scroll_mode_event_left_right.setVisibility(8);
            this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ai
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f178do.O0(view);
                }
            });
            this.iv_close_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.bi
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f446do.P0(view);
                }
            });
            this.ll_up_down_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.bj
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f457do.Q0(view);
                }
            });
            this.ll_up_down_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ei
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1501do.R0(view);
                }
            });
            this.event_top.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.uh
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f6886do.x0(view);
                }
            });
            this.event_up_down_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.nh
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f4229do.y0(view);
                }
            });
            this.event_bottom.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.yh
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8222do.z0(view);
                }
            });
        } else {
            if (iM0 == 2) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.J0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.di
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f1047do.A0(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.fi
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f1827do.B0(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.gi
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2143do.C0(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.oh
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f4613do.D0(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.cj
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f801do.E0(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ph
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f4964do.F0(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.rh
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f5790do.G0(view);
                    }
                });
                this.event_right.setText("下一页");
                this.event_left.setText("上一页");
            } else if (iM0 == 3) {
                zM8713do2 = v02.m8711if(this).m8713do(wq.K0, true);
                this.scroll_mode_event_up_down.setVisibility(8);
                this.scroll_mode_event_left_right.setVisibility(0);
                this.ll_click_event.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.aj
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f183do.H0(view);
                    }
                });
                this.iv_close_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.zi
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f8564do.I0(view);
                    }
                });
                this.ll_left_right_tips.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vh
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f7214do.J0(view);
                    }
                });
                this.ll_left_right_content.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.hi
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2417do.K0(view);
                    }
                });
                this.event_left.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.zh
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f8552do.L0(view);
                    }
                });
                this.event_middle.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.qh
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f5415do.M0(view);
                    }
                });
                this.event_right.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.sh
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f6151do.N0(view);
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
        if (iM0 == 1) {
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
        this.f20939extends = cdo;
        cdo.setRecycleChildrenOnDetach(true);
        if (iM0 == 2) {
            this.f20939extends.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f20939extends);
            PagerSnapHelper pagerSnapHelper = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            pagerSnapHelper.attachToRecyclerView(this.mRecyclerViewPager);
        } else if (iM0 == 3) {
            this.f20939extends.setReverseLayout(true);
            this.f20939extends.setOrientation(0);
            this.mRecyclerViewPager.setLayoutManager(this.f20939extends);
            PagerSnapHelper pagerSnapHelper2 = new PagerSnapHelper();
            this.mRecyclerViewPager.setOnFlingListener(null);
            pagerSnapHelper2.attachToRecyclerView(this.mRecyclerViewPager);
        } else {
            this.f20939extends.setOrientation(1);
            this.mZoomRecyclerView.setLayoutManager(this.f20939extends);
        }
        this.f20950protected.updateReadModeColor(iM0);
        this.f20950protected.setOnCallbackListener(new Cif());
        this.f20960transient.setOnBrightnessSettingListener(new Cfor());
        RecyclerView recyclerView = iM0 == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        recycledViewPool.setMaxRecycledViews(0, 10);
        recyclerView.setRecycledViewPool(recycledViewPool);
        ChapterBrowseAdapter chapterBrowseAdapter = new ChapterBrowseAdapter(this, iM0, Cwhile.m27177goto(this.f20934catch.getTag()));
        this.f20935class = chapterBrowseAdapter;
        chapterBrowseAdapter.setTapGestureListener(this);
        this.f20935class.r(v02.m8711if(this).m8713do(wq.D, false));
        this.f20935class.s(v02.m8711if(this).m8713do(wq.E, false));
        this.f20935class.u(v02.m8711if(this).m8713do(wq.F, false));
        this.f20935class.t(2.0f);
        this.f20935class.q(v02.m8711if(this).m8713do(wq.q, true));
        this.f20935class.o(true);
        ((DefaultItemAnimator) recyclerView.getItemAnimator()).setSupportsChangeAnimations(false);
        recyclerView.setHasFixedSize(true);
        recyclerView.setItemViewCacheSize(10);
        recyclerView.setAdapter(this.f20935class);
    }

    @SuppressLint({"AutoDispose"})
    private void r0(ComicShelfBean comicShelfBean) {
        if (comicShelfBean != null) {
            com.wsw.cospa.dao.Cdo.m26098extends(comicShelfBean.getNoteUrl()).compose(b0.f302do).subscribe(new Cnew(comicShelfBean));
        } else {
            this.tvSaveBook.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t0() {
        int itemCount = this.f20935class.getItemCount();
        return (itemCount == 0 || (this.f20939extends.findFirstCompletelyVisibleItemPosition() == 0 && this.f20939extends.findLastCompletelyVisibleItemPosition() == itemCount - 1)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0() {
        im1.m3512case().mo970if(this.f20934catch);
        hm1.m3062case().mo970if(new Object[0]);
    }

    public static int[] u1(int i) {
        return new int[]{i & 4095, (i & (-4096)) >> 12};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v0(ComicShelfGroupBean comicShelfGroupBean, ObservableEmitter observableEmitter) throws Exception {
        this.f20934catch.setGroupId(comicShelfGroupBean.getId().longValue());
        this.f20934catch.setGroupBean(comicShelfGroupBean);
        this.f20934catch.setFinalDate(Long.valueOf(System.currentTimeMillis()));
        this.f20934catch.setHasUpdate(Boolean.FALSE);
        com.wsw.cospa.dao.Cdo.n(this.f20934catch);
        wi0.m9165try(new Runnable() { // from class: android.support.v4.qi
            @Override // java.lang.Runnable
            public final void run() {
                this.f5426do.u0();
            }
        });
        observableEmitter.onNext(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(Boolean bool) throws Exception {
        r0(this.f20934catch);
    }

    public static void w1(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) ChapterBrowseActivity.class);
        intent.putExtra(wq.Cdo.f7646else, str);
        intent.putExtra(wq.Cdo.f7652if, str2);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    public static void x1(Context context, String str, String str2, int i) {
        Intent intent = new Intent(context, (Class<?>) ChapterBrowseActivity.class);
        intent.putExtra(wq.Cdo.f7646else, str);
        intent.putExtra(wq.Cdo.f7652if, str2);
        intent.putExtra(wq.Cdo.f7651goto, i);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    public static void y1(Context context, String str, String str2, int i) {
        Intent intent = new Intent(context, (Class<?>) ChapterBrowseActivity.class);
        intent.putExtra(wq.Cdo.f7646else, str);
        intent.putExtra(wq.Cdo.f7652if, str2);
        intent.putExtra(wq.Cdo.f7651goto, i);
        intent.addFlags(oa1.f4492abstract);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(View view) {
        this.scroll_mode_event_up_down.setVisibility(8);
        this.ll_click_event.setVisibility(8);
        v02.m8711if(this).m8712case(wq.I0, false);
    }

    private void z1() {
        if (this.f20958throw) {
            return;
        }
        this.f20958throw = true;
        this.ll_auto.setVisibility(0);
        this.ll_seek_progress.setVisibility(8);
        this.ivAutoPlay.setImageResource(R.drawable.arg_res_0x7f08010c);
        if (m0() != 1) {
            float max = this.bsb_auto.getMax();
            float progressFloat = this.bsb_auto.getProgressFloat();
            this.f20943implements.removeCallbacks(this.f20945instanceof);
            this.f20943implements.postDelayed(this.f20945instanceof, (long) ((max - progressFloat) * 10.0f * 1000.0f));
            return;
        }
        Celse celse = this.f20945instanceof;
        celse.f20966do = 0;
        celse.f20968if = Integer.MAX_VALUE;
        celse.f20967for = (int) j10.m3660new(this, this.bsb_auto.getProgressFloat() * 2.0f);
        this.f20943implements.removeCallbacks(this.f20945instanceof);
        this.f20943implements.postDelayed(this.f20945instanceof, 5L);
    }

    public void B1() {
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout != null) {
            if (buttomMenuLayout.isShow()) {
                this.buttomLayout.setVisibility(8);
            } else {
                this.buttomLayout.setVisibility(0);
            }
        }
        e0();
    }

    public void c0(final ComicShelfGroupBean comicShelfGroupBean) {
        ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.mi
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                this.f3918do.v0(comicShelfGroupBean, observableEmitter);
            }
        }).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.ni
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                this.f4231do.w0((Boolean) obj);
            }
        });
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
        Intent intent = getIntent();
        this.f20942goto = intent;
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25919this(this, intent);
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25911break();
        s0();
    }

    public void d0() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iK0 = k0();
        int iM8715for = v02.m8711if(this).m8715for(wq.f7635volatile, 1);
        if (iM8715for == 1) {
            this.mZoomRecyclerView.smoothScrollBy(0, -point.y);
            if (iK0 == 0) {
                m1();
                return;
            }
            return;
        }
        if (iM8715for == 2) {
            if (iK0 == 0) {
                m1();
                return;
            } else {
                this.mRecyclerViewPager.smoothScrollToPosition(iK0 - 1);
                return;
            }
        }
        if (iK0 == this.f20935class.getItemCount() - 1) {
            l1();
        } else {
            this.mRecyclerViewPager.smoothScrollToPosition(iK0 + 1);
        }
    }

    public void e0() {
        boolean zM8713do = v02.m8711if(this).m8713do(wq.h, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.i, false);
        if (!zM8713do && zM8713do2) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    public void f0() {
        BrightnessSettingWindow brightnessSettingWindow = this.f20960transient;
        if (brightnessSettingWindow == null || !brightnessSettingWindow.isShowing()) {
            return;
        }
        this.f20960transient.dismiss();
    }

    @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
    public void getProgressOnActionUp(BubbleSeekBar bubbleSeekBar, int i, float f) {
        if (bubbleSeekBar.getId() == R.id.arg_res_0x7f0900c4) {
            this.f20945instanceof.f20967for = (int) j10.m3660new(this, f * 2.0f);
        }
    }

    @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
    public void getProgressOnFinally(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z) {
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void hideProgress() {
        this.error_view.setVisibility(8);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(0);
        this.f20952return = true;
    }

    public List<tl0> i0() {
        ArrayList arrayList = new ArrayList();
        try {
            List<ComicContentImgBean> listM25497switch = this.f20935class.m25497switch();
            for (int i = 0; i < listM25497switch.size(); i++) {
                ComicContentImgBean comicContentImgBean = listM25497switch.get(i);
                tl0 tl0Var = new tl0();
                tl0Var.setThumbnailUrl(comicContentImgBean.getImgurl());
                tl0Var.setOriginUrl(comicContentImgBean.getImgurl());
                Map<String, String> variableMap = comicContentImgBean.getVariableMap();
                if (variableMap != null && !variableMap.isEmpty()) {
                    tl0Var.setHeaderMap(variableMap);
                }
                arrayList.add(tl0Var);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void initComicBook(ChapterListBean chapterListBean, ComicShelfBean comicShelfBean) throws IllegalStateException {
        this.f20957this = chapterListBean;
        this.f20934catch = comicShelfBean;
        this.f20950protected.setComicShelf(comicShelfBean);
        q0();
        r0(comicShelfBean);
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void initComicName(String str) {
        this.buttomLayout.initData(str);
    }

    public int k0() {
        int iM0 = m0();
        if (iM0 != 2 && iM0 != 3) {
            return this.f20939extends.findFirstVisibleItemPosition();
        }
        int iM10242if = this.f20939extends.canScrollHorizontally() ? zl1.m10242if(this.mRecyclerViewPager) : zl1.m10243new(this.mRecyclerViewPager);
        if (iM10242if < 0) {
            return 0;
        }
        return iM10242if;
    }

    public int l0() {
        return this.f20932abstract;
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void loadChapter(List<ComicContentImgBean> list) {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter != null) {
            chapterBrowseAdapter.m(true, list, false);
        }
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void loadNextChapter(List<ComicContentImgBean> list) {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter != null) {
            chapterBrowseAdapter.m(false, list, false);
        }
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void loadPreChapter(List<ComicContentImgBean> list) {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter != null) {
            chapterBrowseAdapter.m(false, list, true);
        }
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void moveToPosition(int i) {
        o1(this.f20939extends, m0() == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager, i);
    }

    public void n1() {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter == null || chapterBrowseAdapter.getItemCount() <= 0 || v02.m8711if(this).m8713do(wq.j, false)) {
            return;
        }
        final int iM10242if = m0() == 1 ? zl1.m10242if(this.mZoomRecyclerView) : zl1.m10242if(this.mRecyclerViewPager);
        final ComicContentImgBean comicContentImgBeanM25487default = this.f20935class.m25487default(iM10242if);
        QMUIDialog.Ccase ccase = new QMUIDialog.Ccase(this);
        ccase.m24055volatile("操作");
        ccase.m23995synchronized("查看原图", new DialogInterface.OnClickListener() { // from class: android.support.v4.xh
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f7935do.V0(iM10242if, dialogInterface, i);
            }
        });
        ccase.m23995synchronized("保存图片", new DialogInterface.OnClickListener() { // from class: android.support.v4.mh
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f3914do.W0(dialogInterface, i);
            }
        });
        ccase.m23995synchronized("分享图片", new DialogInterface.OnClickListener() { // from class: android.support.v4.ti
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f6570do.X0(comicContentImgBeanM25487default, dialogInterface, i);
            }
        });
        ccase.m23995synchronized("复制链接", new DialogInterface.OnClickListener() { // from class: android.support.v4.xi
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f7951do.Y0(comicContentImgBeanM25487default, dialogInterface, i);
            }
        });
        ccase.m24051this().show();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0026;
    }

    public void o1(LinearLayoutManager linearLayoutManager, RecyclerView recyclerView, int i) {
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (i <= iFindFirstVisibleItemPosition) {
            recyclerView.scrollToPosition(i);
        } else if (i <= iFindLastVisibleItemPosition) {
            recyclerView.scrollBy(0, recyclerView.getChildAt(i - iFindFirstVisibleItemPosition).getTop());
        } else if (i > 0) {
            recyclerView.scrollToPosition(i - 1);
        } else {
            recyclerView.scrollToPosition(i);
        }
        if (m0() == 1) {
            int intExtra = (getIntent().getIntExtra(wq.Cdo.f7666this, 0) * (-1)) >> 12;
            this.f20932abstract = intExtra;
            recyclerView.scrollBy(0, -intExtra);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        f0();
        ChapterBottomSheet chapterBottomSheet = this.f20946interface;
        if (chapterBottomSheet != null && chapterBottomSheet.isShow()) {
            this.f20946interface.dismiss();
            e0();
            return;
        }
        MenuSettingDialog menuSettingDialog = this.f20950protected;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.f20950protected.dismiss();
            e0();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout == null || !buttomMenuLayout.isShow()) {
            finish();
        } else {
            this.buttomLayout.setVisibility(8);
            e0();
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
                if (!this.f20958throw) {
                    z1();
                    break;
                } else {
                    A1();
                    break;
                }
            case R.id.arg_res_0x7f090463 /* 2131297379 */:
                v1();
                ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
                if (buttomMenuLayout != null && buttomMenuLayout.isShow()) {
                    this.buttomLayout.setVisibility(8);
                }
                e0();
                break;
            case R.id.arg_res_0x7f090466 /* 2131297382 */:
                this.f20946interface.show();
                f0();
                ButtomMenuLayout buttomMenuLayout2 = this.buttomLayout;
                if (buttomMenuLayout2 != null && buttomMenuLayout2.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    e0();
                }
                MenuSettingDialog menuSettingDialog = this.f20950protected;
                if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                    this.f20950protected.dismiss();
                    e0();
                    break;
                }
                break;
            case R.id.arg_res_0x7f0904a9 /* 2131297449 */:
                t1();
                break;
            case R.id.arg_res_0x7f0904b0 /* 2131297456 */:
                this.f20950protected.show();
                ChapterBottomSheet chapterBottomSheet = this.f20946interface;
                if (chapterBottomSheet != null && chapterBottomSheet.isShow()) {
                    this.f20946interface.dismiss();
                    e0();
                }
                f0();
                ButtomMenuLayout buttomMenuLayout3 = this.buttomLayout;
                if (buttomMenuLayout3 != null && buttomMenuLayout3.isShow()) {
                    this.buttomLayout.setVisibility(8);
                    e0();
                    break;
                }
                break;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.arg_res_0x7f0d0002, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.wsw.cospa.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        try {
            Handler handler = this.f20943implements;
            if (handler != null) {
                handler.removeCallbacks(this.f20945instanceof);
                this.f20943implements = null;
            }
            if (this.f20945instanceof != null) {
                this.f20945instanceof = null;
            }
            Cgoto cgoto = this.f20936const;
            if (cgoto != null) {
                cgoto.m24861if();
            }
            Glide.m11040new(this).m11057for();
            jh0.m3882do(this).m11057for();
            ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
            if (chapterBrowseAdapter != null) {
                chapterBrowseAdapter.l();
            }
            ChangeSourceDialog changeSourceDialog = this.f20937continue;
            if (changeSourceDialog != null) {
                changeSourceDialog.onStop();
            }
            if (this.f20957this != null) {
                this.f20957this = null;
            }
            ep1.m1972do().m1975new();
            ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25915else();
            super.onDestroy();
        } catch (Exception e) {
            e.printStackTrace();
            super.onDestroy();
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
                    if (!this.f20959throws) {
                        float f = scaledTouchSlop;
                        if (Math.abs(this.f20953static - motionEvent.getX()) <= f && Math.abs(this.f20956switch - motionEvent.getY()) <= f) {
                            z = false;
                        }
                        this.f20959throws = z;
                    }
                }
            } else if (!this.f20959throws) {
                int iM3648case = j10.m3648case(this);
                if (this.f20938default == null) {
                    float f2 = iM3648case;
                    this.f20938default = new RectF(j10.m3649catch() / 3.0f, f2 / 3.0f, (j10.m3649catch() * 2.0f) / 3.0f, (f2 * 2.0f) / 3.0f);
                }
                if (this.f20938default.contains(this.f20953static, this.f20956switch)) {
                    f0();
                    ChapterBottomSheet chapterBottomSheet = this.f20946interface;
                    if (chapterBottomSheet == null || !chapterBottomSheet.isShow()) {
                        MenuSettingDialog menuSettingDialog = this.f20950protected;
                        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
                            this.f20950protected.dismiss();
                            e0();
                        }
                    } else {
                        this.f20946interface.dismiss();
                        e0();
                    }
                    return true;
                }
            }
        } else {
            this.f20953static = (int) motionEvent.getX();
            this.f20956switch = (int) motionEvent.getY();
            this.f20959throws = false;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter != null && chapterBrowseAdapter.getItemCount() != 0) {
            int i2 = i != 24 ? i != 25 ? 0 : this.f20941finally[4] : this.f20941finally[3];
            boolean zM8713do = v02.m8711if(this).m8713do(wq.B, false);
            if (i2 != 0 && zM8713do) {
                j0(i2);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.wsw.cospa.widget.view.OnTapGestureListener
    public void onLongPress(float f, float f2) {
        n1();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f20942goto = intent;
        setIntent(intent);
        mo24707this();
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25919this(this, intent);
        ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25911break();
        s0();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        ComicInfoBean comicInfoBean;
        ComicShelfBean comicShelfBean;
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        if (menuItem.getItemId() == R.id.arg_res_0x7f09014a) {
            y8.m9768for().m9771new(wq.Cdo.f7652if, this.f20934catch);
            ChapterActivity.m24819interface(this);
            return true;
        }
        if (menuItem.getItemId() == R.id.arg_res_0x7f0903e9) {
            try {
                SearchComicBean searchComicBeanM26024default = DatabaseHelper.m26016switch().m26024default(this.f20934catch.getNoteUrl());
                if (searchComicBeanM26024default == null && (comicInfoBean = this.f20934catch.getComicInfoBean()) != null) {
                    searchComicBeanM26024default = new SearchComicBean();
                    searchComicBeanM26024default.setAuthor(comicInfoBean.getAuthor());
                    searchComicBeanM26024default.setCoverUrl(comicInfoBean.getCoverUrl());
                    searchComicBeanM26024default.setIntroduce(comicInfoBean.getIntroduce());
                    searchComicBeanM26024default.setName(comicInfoBean.getName());
                    searchComicBeanM26024default.setKind(comicInfoBean.getKind());
                    searchComicBeanM26024default.setNoteUrl(comicInfoBean.getNoteUrl());
                    searchComicBeanM26024default.setOrigin(comicInfoBean.getOrigin());
                    searchComicBeanM26024default.setTag(comicInfoBean.getTag());
                }
                if (searchComicBeanM26024default != null && !TextUtils.isEmpty(searchComicBeanM26024default.getName())) {
                    if (v02.m8711if(this).m8713do("systemMode", false)) {
                        BaseActivity.m25869class();
                    } else {
                        m25871catch();
                    }
                    ChangeSourceDialog changeSourceDialog = new ChangeSourceDialog(this, 0, searchComicBeanM26024default);
                    this.f20937continue = changeSourceDialog;
                    changeSourceDialog.setOnChooseOriginListener(new OriginChooseDialog.ChooseOriginListener() { // from class: android.support.v4.ji
                        @Override // com.wsw.cospa.widget.OriginChooseDialog.ChooseOriginListener
                        public final void onChooseOrigin(SearchComicBean searchComicBean) {
                            this.f3111do.Z0(searchComicBean);
                        }
                    });
                    this.f20937continue.show();
                    this.f20937continue.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: android.support.v4.yi
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            this.f8232do.a1(dialogInterface);
                        }
                    });
                    this.f20937continue.show();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            if (menuItem.getItemId() == R.id.arg_res_0x7f090295) {
                Cwhile.m27176for(this, ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25917goto());
                return true;
            }
            if (menuItem.getItemId() == R.id.arg_res_0x7f09039d) {
                ComicShelfBean comicShelfBean2 = this.f20934catch;
                if (comicShelfBean2 != null) {
                    ComicInfoBean comicInfoBean2 = comicShelfBean2.getComicInfoBean();
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType(NanoHTTPD.MIME_PLAINTEXT);
                    intent.putExtra("android.intent.extra.SUBJECT", comicInfoBean2.getName());
                    intent.putExtra("android.intent.extra.TEXT", comicInfoBean2.getNoteUrl());
                    intent.setFlags(268435456);
                    startActivity(Intent.createChooser(intent, "分享"));
                }
            } else if (menuItem.getItemId() == R.id.arg_res_0x7f090445) {
                ComicShelfBean comicShelfBean3 = this.f20934catch;
                if (comicShelfBean3 != null && Cclass.E(comicShelfBean3.getNoteUrl())) {
                    ((ObservableSubscribeProxy) com.wsw.cospa.dao.Cdo.m26098extends(this.f20934catch.getNoteUrl()).compose(b0.f302do).as(mp1.m4975do(this))).subscribe(new Ctry());
                }
            } else if (menuItem.getItemId() == R.id.arg_res_0x7f090079) {
                ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25916final(this.f20957this);
            } else if (menuItem.getItemId() == R.id.arg_res_0x7f090312) {
                try {
                    AddComicSourceActivity.i(this, AddComicSourceActivity.f20858static, Cwhile.m27177goto(this.f20934catch.getTag()));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else if (menuItem.getItemId() == R.id.arg_res_0x7f09035d && (comicShelfBean = this.f20934catch) != null) {
                ((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25914const(comicShelfBean, this.f20957this);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        r1();
        Cgoto cgoto = this.f20936const;
        if (cgoto != null) {
            cgoto.m24861if();
        }
        A1();
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void onPicturePaging(ComicContentImgBean comicContentImgBean) {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter != null) {
            this.f20935class.m25496super(chapterBrowseAdapter.m25491package(comicContentImgBean.getImgurl()) + 1, new ComicContentImgBean(comicContentImgBean.getImgurl(), comicContentImgBean.getIndexPape(), comicContentImgBean.getMaxPage(), comicContentImgBean.getChapterIndex(), comicContentImgBean.getChapterContentUrl(), comicContentImgBean.getChapterText(), comicContentImgBean.getVariable(), comicContentImgBean.getTag(), comicContentImgBean.isDownload(), comicContentImgBean.getLocalPath(), 2));
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        for (int i = 0; i < menu.size(); i++) {
            if (menu.getItem(i).getItemId() == R.id.arg_res_0x7f090295) {
                if (((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25917goto() == null || TextUtils.isEmpty(((com.wsw.cospa.presenter.Cdo) this.f21911if).mo25917goto().getLoginUrl())) {
                    menu.getItem(i).setVisible(false);
                } else {
                    menu.getItem(i).setVisible(true);
                }
            }
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // org.adw.library.widgets.discreteseekbar.DiscreteSeekBar.OnProgressChangeListener
    public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
        int iM0 = m0();
        RecyclerView recyclerView = iM0 == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append("onProgressChanged: value ");
            sb.append(i);
            if (iM0 == 1) {
                o1(this.f20939extends, recyclerView, (k0() + i) - this.f20948package);
            } else {
                o1(this.f20939extends, recyclerView, (k0() + i) - this.f20948package);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        Cgoto cgoto = new Cgoto();
        this.f20936const = cgoto;
        cgoto.m24860do();
        boolean zM8713do = v02.m8711if(this).m8713do(wq.h, false);
        boolean zM8713do2 = v02.m8711if(this).m8713do(wq.i, false);
        if (!zM8713do && zM8713do2) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    @Override // com.wsw.cospa.widget.view.OnTapGestureListener
    public void onSingleTap(float f, float f2) {
        f0();
        ChapterBottomSheet chapterBottomSheet = this.f20946interface;
        if (chapterBottomSheet != null && chapterBottomSheet.isShow()) {
            this.f20946interface.dismiss();
            e0();
            return;
        }
        MenuSettingDialog menuSettingDialog = this.f20950protected;
        if (menuSettingDialog != null && menuSettingDialog.isShowing()) {
            this.f20950protected.dismiss();
            e0();
            return;
        }
        ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
        if (buttomMenuLayout == null || !buttomMenuLayout.isShow()) {
            j0(o0(f, f2));
        } else {
            this.buttomLayout.setVisibility(8);
            e0();
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
        if (motionEvent.getAction() == 0 && !this.f20952return) {
            f0();
            ChapterBottomSheet chapterBottomSheet = this.f20946interface;
            if (chapterBottomSheet == null || !chapterBottomSheet.isShow()) {
                MenuSettingDialog menuSettingDialog = this.f20950protected;
                if (menuSettingDialog == null || !menuSettingDialog.isShowing()) {
                    ButtomMenuLayout buttomMenuLayout = this.buttomLayout;
                    if (buttomMenuLayout == null || buttomMenuLayout.isShow()) {
                        this.buttomLayout.setVisibility(8);
                    } else {
                        this.buttomLayout.setVisibility(0);
                    }
                    e0();
                } else {
                    this.f20950protected.dismiss();
                    e0();
                }
            } else {
                this.f20946interface.dismiss();
                e0();
            }
        }
        return super.onTouchEvent(motionEvent);
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
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_BAR).b0();
            return;
        }
        if (!zM8713do) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_STATUS_BAR).b0();
        } else if (zM8713do2) {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_HIDE_NAVIGATION_BAR).b0();
        } else {
            this.f20961volatile.Z(com.gyf.immersionbar.Cif.FLAG_SHOW_BAR).b0();
        }
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: p0, reason: merged with bridge method [inline-methods] */
    public com.wsw.cospa.presenter.Cdo mo24704goto() {
        com.wsw.cospa.presenter.Cdo cdo = new com.wsw.cospa.presenter.Cdo();
        this.f21911if = cdo;
        cdo.m4861if(this);
        return (com.wsw.cospa.presenter.Cdo) this.f21911if;
    }

    public void q1() {
        Point point = new Point();
        getWindowManager().getDefaultDisplay().getSize(point);
        int iK0 = k0();
        if (m0() == 1) {
            if (iK0 == 0 && !this.f20944import) {
                m1();
                this.f20944import = true;
                return;
            } else {
                ZoomableRecyclerView zoomableRecyclerView = this.mZoomRecyclerView;
                if (zoomableRecyclerView != null) {
                    zoomableRecyclerView.smoothScrollBy(0, (-point.y) / 2);
                    return;
                }
                return;
            }
        }
        if (iK0 == 0 && !this.f20944import) {
            m1();
            this.f20944import = true;
        } else {
            RecyclerViewPager recyclerViewPager = this.mRecyclerViewPager;
            if (recyclerViewPager != null) {
                recyclerViewPager.smoothScrollToPosition(iK0 - 1);
            }
        }
    }

    public void r1() {
        if (this.f20934catch != null) {
            com.wsw.cospa.utils.Ccase.m26722this().m26725else().submit(new Runnable() { // from class: android.support.v4.ui
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6895do.d1();
                }
            });
        }
    }

    public void s0() {
        int iM0 = m0();
        RecyclerView recyclerView = iM0 == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        this.mSeekBarScroll.setReverse(iM0 == 3);
        this.mSeekBarScroll.setOnProgressChangeListener(this);
        recyclerView.addOnScrollListener(new CustomScrollListener());
        recyclerView.addOnItemTouchListener(this);
    }

    public void s1() {
        String imgurl;
        ComicContentImgBean comicContentImgBean;
        try {
            if (!ed1.m1798do(this)) {
                v72.m8769if("请去设置打开文件读写权限");
                return;
            }
            this.f20954strictfp.show();
            int iK0 = k0();
            String str = null;
            if (this.f20935class.getItemCount() > 0) {
                ComicContentImgBean comicContentImgBeanM25487default = this.f20935class.m25487default(iK0);
                imgurl = comicContentImgBeanM25487default.getImgurl();
                str = System.currentTimeMillis() + rd1.f5753if;
                comicContentImgBean = comicContentImgBeanM25487default;
            } else {
                imgurl = null;
                comicContentImgBean = null;
            }
            Cthis.m27103case(this, str, imgurl, comicContentImgBean, new Ccase());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void showProgress() {
        this.mIndicatorView.setVisibility(0);
        this.contentView.setVisibility(8);
        this.error_view.setVisibility(8);
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void showToast(String str) {
        this.error_view.setVisibility(0);
        this.mIndicatorView.setVisibility(8);
        this.contentView.setVisibility(8);
        this.tvErrorView.setText(str);
        this.f20952return = false;
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void skipNextChapter(List<ComicContentImgBean> list) {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter != null) {
            chapterBrowseAdapter.m(false, list, false);
        }
        RecyclerView recyclerView = m0() == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        if (list == null || list.size() <= 0) {
            return;
        }
        o1(this.f20939extends, recyclerView, this.f20935class.getItemCount() - (list.get(0).getMaxPage() - 1));
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void skipPreChapter(List<ComicContentImgBean> list) {
        ChapterBrowseAdapter chapterBrowseAdapter = this.f20935class;
        if (chapterBrowseAdapter != null) {
            chapterBrowseAdapter.m(false, list, true);
        }
        RecyclerView recyclerView = m0() == 1 ? this.mZoomRecyclerView : this.mRecyclerViewPager;
        if (list == null || list.size() <= 0) {
            return;
        }
        o1(this.f20939extends, recyclerView, (k0() - this.f20948package) - (list.size() - 1));
    }

    public void t1() {
        final List<ComicShelfGroupBean> listH = com.wsw.cospa.dao.Cdo.h();
        ArrayList arrayList = new ArrayList();
        arrayList.add(wq.w0);
        if (listH == null || listH.size() <= 0) {
            ((ObservableSubscribeProxy) io.reactivex.Cnew.create(new ObservableOnSubscribe() { // from class: android.support.v4.li
                @Override // io.reactivex.ObservableOnSubscribe
                public final void subscribe(ObservableEmitter observableEmitter) throws Exception {
                    this.f3660do.j1(observableEmitter);
                }
            }).subscribeOn(io.reactivex.schedulers.Cdo.m29772new()).subscribeOn(io.reactivex.android.schedulers.Cdo.m29358for()).as(mp1.m4975do(this))).subscribe(new Consumer() { // from class: android.support.v4.oi
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    this.f4628do.k1((Boolean) obj);
                }
            });
            return;
        }
        for (int i = 0; i < listH.size(); i++) {
            arrayList.add(listH.get(i).getGroupName());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
        final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this);
        cfor.m24055volatile("选择书架");
        cfor.m24007synchronized(strArr, new DialogInterface.OnClickListener() { // from class: android.support.v4.ii
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f2783do.h1(cfor, listH, dialogInterface, i2);
            }
        });
        cfor.b(0);
        cfor.m24043interface();
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        int i = Build.VERSION.SDK_INT;
        if (i != 26) {
            p12.m5832case(this);
        }
        if (i >= 26) {
            h0(this);
        }
        if (v02.m8711if(this).m8713do(wq.g, false)) {
            setRequestedOrientation(0);
        } else {
            setRequestedOrientation(1);
        }
        m25873else();
        this.f20961volatile = com.gyf.immersionbar.Celse.k2(this);
        this.f20954strictfp = new xh1.Cdo(this).m9514for(1).m9513do();
        this.f20950protected = new MenuSettingDialog(this);
        this.f20960transient = new BrightnessSettingWindow(this);
        j10.m3664throw(this);
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
        String strM8719try = v02.m8711if(this).m8719try(wq.l, "0");
        if (!TextUtils.isEmpty(strM8719try) && !"0".equals(strM8719try)) {
            this.v_brightness.setAlpha(1.0f - Float.parseFloat(strM8719try));
        }
        this.rootView.setBackgroundColor(getResources().getColor(v02.m8711if(this).m8715for(wq.Cdo.f7637abstract, R.color.arg_res_0x7f060141)));
        this.f20946interface = new ChapterBottomSheet(this);
        this.tvCatalog.setOnClickListener(this);
        this.autoPlayLayout.setOnClickListener(this);
        this.tvBrightness.setOnClickListener(this);
        this.tvSetting.setOnClickListener(this);
        this.tvSaveBook.setOnClickListener(this);
        this.tvRetry.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ci
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f791do.S0(view);
            }
        });
        this.preChapter.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.th
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f6524do.T0(view);
            }
        });
        this.nextChapter.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f7521do.U0(view);
            }
        });
        this.bsb_auto.setOnProgressChangedListener(this);
        this.mIndicatorRoot.setOnTouchListener(this);
        this.buttomLayout.initChapterUrl(true);
        this.buttomLayout.initSkipChapter(true);
        this.buttomLayout.initSaveBookText(true);
        this.f20941finally = n0(this.f20934catch) == 1 ? mm.m4948new(this) : mm.m4945do(this);
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void updateButtomRight(int i, int i2) {
        this.mHeadTitleRight.setText(String.format("%d/%d", Integer.valueOf(i), Integer.valueOf(i2)));
        String str = String.format("%d/%d", Integer.valueOf(i), Integer.valueOf(i2));
        vv0.m8965if(f20931synchronized, " updateButtomRight: " + str);
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void updateCatalog(ComicShelfBean comicShelfBean, int i) {
        this.f20946interface.initData(comicShelfBean);
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void updateChapterName(String str) {
        this.statusChapterText.setText(str);
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void updateComicBook(ChapterListBean chapterListBean) {
        this.f20957this = chapterListBean;
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void updatePageSeekBar(int i, int i2) {
        this.mSeekBarScroll.setMax(i2);
        this.mSeekBarScroll.setProgress(i);
    }

    @Override // com.wsw.cospa.contract.ChapterBrowseContract.View
    public void updateTitle(String str) {
        this.buttomLayout.updateChapterUrl(str);
    }

    public void v1() {
        BrightnessSettingWindow brightnessSettingWindow;
        if (isFinishing()) {
            return;
        }
        BrightnessSettingWindow brightnessSettingWindow2 = this.f20960transient;
        if ((brightnessSettingWindow2 == null || !brightnessSettingWindow2.isShowing()) && (brightnessSettingWindow = this.f20960transient) != null) {
            brightnessSettingWindow.showAtLocation(this.rootView, 80, 0, 0);
        }
    }

    @Override // com.xw.repo.BubbleSeekBar.OnProgressChangedListener
    public void onProgressChanged(BubbleSeekBar bubbleSeekBar, int i, float f, boolean z) {
        if (bubbleSeekBar.getId() == R.id.arg_res_0x7f0900c5) {
            this.v_brightness.setAlpha(1.0f - f);
        }
    }
}
