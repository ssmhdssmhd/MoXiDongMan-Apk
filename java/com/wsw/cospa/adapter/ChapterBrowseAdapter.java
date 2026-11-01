package com.wsw.cospa.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.dn1;
import android.support.v4.ht;
import android.support.v4.if1;
import android.support.v4.j10;
import android.support.v4.jd1;
import android.support.v4.jh0;
import android.support.v4.pk0;
import android.support.v4.vv0;
import android.support.v4.wi0;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.google.common.cache.Cache;
import com.google.common.cache.LoadingCache;
import com.google.gson.GsonBuilder;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.ChapterBrowseActivity;
import com.wsw.cospa.bean.ComicContentImgBean;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.utils.Cdefault;
import com.wsw.cospa.utils.Cstrictfp;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import com.wsw.cospa.widget.subscaleview.ImageSource;
import com.wsw.cospa.widget.subscaleview.ImageViewState;
import com.wsw.cospa.widget.subscaleview.SubsamplingScaleImageView;
import com.wsw.cospa.widget.view.OnTapGestureListener;
import java.io.File;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import javax.script.ScriptException;
import okhttp3.Headers;

/* loaded from: classes2.dex */
public class ChapterBrowseAdapter extends RecyclerView.Adapter<PathViewHolder> {

    /* renamed from: return, reason: not valid java name */
    private static final String f21535return = "ChapterBrowseAdapter";

    /* renamed from: static, reason: not valid java name */
    private static Cache<String, Headers> f21536static = com.google.common.cache.Cif.m15296abstract().m15319package(10).a().m15308do();

    /* renamed from: break, reason: not valid java name */
    private boolean f21537break;

    /* renamed from: case, reason: not valid java name */
    private ComicSourceBean f21538case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21539catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f21540class;

    /* renamed from: const, reason: not valid java name */
    private float f21541const;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21542do;

    /* renamed from: else, reason: not valid java name */
    private OnTapGestureListener f21543else;

    /* renamed from: final, reason: not valid java name */
    private boolean f21544final;

    /* renamed from: for, reason: not valid java name */
    private ChapterBrowseActivity f21545for;

    /* renamed from: goto, reason: not valid java name */
    private int f21546goto;

    /* renamed from: if, reason: not valid java name */
    private Context f21547if;

    /* renamed from: import, reason: not valid java name */
    private int f21548import;

    /* renamed from: native, reason: not valid java name */
    private int f21549native;

    /* renamed from: new, reason: not valid java name */
    private LayoutInflater f21550new;

    /* renamed from: public, reason: not valid java name */
    private int f21551public;

    /* renamed from: this, reason: not valid java name */
    private boolean f21553this;

    /* renamed from: while, reason: not valid java name */
    private int f21556while;

    /* renamed from: try, reason: not valid java name */
    private List<ComicContentImgBean> f21555try = new ArrayList();

    /* renamed from: super, reason: not valid java name */
    private ArrayList<SoftReference<SubsamplingScaleImageView>> f21552super = new ArrayList<>();

    /* renamed from: throw, reason: not valid java name */
    public int f21554throw = 0;

    public static class BrowseViewHolder extends RecyclerView.ViewHolder {
        public BrowseViewHolder(@NonNull View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public static class HorizontalViewHolder extends BrowseViewHolder {

        @BindView(R.id.arg_res_0x7f090235)
        public SubsamplingScaleImageView draweeView;

        @BindView(R.id.arg_res_0x7f090240)
        public ImageView iv_failure;

        @BindView(R.id.arg_res_0x7f090491)
        public TextView tv_item;

        public HorizontalViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class HorizontalViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private HorizontalViewHolder f21557do;

        @UiThread
        public HorizontalViewHolder_ViewBinding(HorizontalViewHolder horizontalViewHolder, View view) {
            this.f21557do = horizontalViewHolder;
            horizontalViewHolder.tv_item = (TextView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090491, "field 'tv_item'", TextView.class);
            horizontalViewHolder.draweeView = (SubsamplingScaleImageView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090235, "field 'draweeView'", SubsamplingScaleImageView.class);
            horizontalViewHolder.iv_failure = (ImageView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090240, "field 'iv_failure'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            HorizontalViewHolder horizontalViewHolder = this.f21557do;
            if (horizontalViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21557do = null;
            horizontalViewHolder.tv_item = null;
            horizontalViewHolder.draweeView = null;
            horizontalViewHolder.iv_failure = null;
        }
    }

    public static class PathViewHolder extends BrowseViewHolder {

        @BindView(R.id.arg_res_0x7f090235)
        public SubsamplingScaleImageView draweeView;

        @BindView(R.id.arg_res_0x7f090240)
        public ImageView iv_failure;

        @BindView(R.id.arg_res_0x7f090491)
        public TextView tv_item;

        public PathViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class PathViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private PathViewHolder f21558do;

        @UiThread
        public PathViewHolder_ViewBinding(PathViewHolder pathViewHolder, View view) {
            this.f21558do = pathViewHolder;
            pathViewHolder.tv_item = (TextView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090491, "field 'tv_item'", TextView.class);
            pathViewHolder.draweeView = (SubsamplingScaleImageView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090235, "field 'draweeView'", SubsamplingScaleImageView.class);
            pathViewHolder.iv_failure = (ImageView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090240, "field 'iv_failure'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            PathViewHolder pathViewHolder = this.f21558do;
            if (pathViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21558do = null;
            pathViewHolder.tv_item = null;
            pathViewHolder.draweeView = null;
            pathViewHolder.iv_failure = null;
        }
    }

    public static class VerticalViewHolder extends BrowseViewHolder {

        @BindView(R.id.arg_res_0x7f090235)
        public SubsamplingScaleImageView draweeView;

        @BindView(R.id.arg_res_0x7f090240)
        public ImageView iv_failure;

        @BindView(R.id.arg_res_0x7f090491)
        public TextView tv_item;

        public VerticalViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class VerticalViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private VerticalViewHolder f21559do;

        @UiThread
        public VerticalViewHolder_ViewBinding(VerticalViewHolder verticalViewHolder, View view) {
            this.f21559do = verticalViewHolder;
            verticalViewHolder.tv_item = (TextView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090491, "field 'tv_item'", TextView.class);
            verticalViewHolder.draweeView = (SubsamplingScaleImageView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090235, "field 'draweeView'", SubsamplingScaleImageView.class);
            verticalViewHolder.iv_failure = (ImageView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090240, "field 'iv_failure'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            VerticalViewHolder verticalViewHolder = this.f21559do;
            if (verticalViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21559do = null;
            verticalViewHolder.tv_item = null;
            verticalViewHolder.draweeView = null;
            verticalViewHolder.iv_failure = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterBrowseAdapter$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicContentImgBean f21560do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ PathViewHolder f21561for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ String f21562if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f21563new;

        public Cdo(ComicContentImgBean comicContentImgBean, String str, PathViewHolder pathViewHolder, boolean z) {
            this.f21560do = comicContentImgBean;
            this.f21562if = str;
            this.f21561for = pathViewHolder;
            this.f21563new = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            String defaultUserAgent;
            dn1 dn1VarMo11917break = new dn1().mo11943super(R.drawable.arg_res_0x7f0800aa).mo11939public(com.bumptech.glide.load.Cif.PREFER_RGB_565).mo11946this(Ccase.f9735for).mo11917break();
            Cstrictfp.Cif cif = new Cstrictfp.Cif();
            Map<String, String> variableMap = this.f21560do.getVariableMap();
            boolean z = false;
            if (variableMap != null && !variableMap.isEmpty()) {
                for (String str : variableMap.keySet()) {
                    boolean zEqualsIgnoreCase = str.toString().equalsIgnoreCase(pk0.b);
                    String string = str.toString();
                    String str2 = variableMap.get(str);
                    Objects.requireNonNull(str2);
                    cif.m27075if(string, str2);
                    z = zEqualsIgnoreCase;
                }
            }
            if (!z && (defaultUserAgent = AnalyzeHeaders.getDefaultUserAgent(ChapterBrowseAdapter.this.f21538case)) != null && !defaultUserAgent.isEmpty()) {
                cif.m27075if(pk0.b, defaultUserAgent);
            }
            new Cnew(ChapterBrowseAdapter.this, null).m25523goto(jh0.m3888this(ChapterBrowseAdapter.this.f21547if).mo6021case().mo11946this(Ccase.f9735for).load(new com.bumptech.glide.load.model.Cif(this.f21562if, cif.m27073for())).mo11166do(dn1VarMo11917break), this.f21561for, this.f21560do, this.f21562if, this.f21563new).m25520this();
        }
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterBrowseAdapter$for, reason: invalid class name */
    public class Cfor {

        /* renamed from: do, reason: not valid java name */
        private LoadingCache<String, Bitmap> f21565do;

        /* renamed from: new, reason: not valid java name */
        private Bitmap f21568new;

        /* renamed from: if, reason: not valid java name */
        private final long f21567if = 104857600;

        /* renamed from: for, reason: not valid java name */
        private final int f21566for = 20;

        /* renamed from: com.wsw.cospa.adapter.ChapterBrowseAdapter$for$do, reason: invalid class name */
        public class Cdo extends com.google.common.cache.Cfor<String, Bitmap> {
            private Cdo() {
            }

            @Override // com.google.common.cache.Cfor
            @Nullable
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Bitmap load(@NonNull String str) throws Exception {
                return Cfor.this.f21568new;
            }

            public /* synthetic */ Cdo(Cfor cfor, Cdo cdo) {
                this();
            }
        }

        private Cfor() {
            this.f21568new = BitmapFactory.decodeResource(ChapterBrowseAdapter.this.f21547if.getResources(), R.drawable.arg_res_0x7f0800aa);
        }

        /* renamed from: case, reason: not valid java name */
        private synchronized void m25500case(String str) {
            if (str != null) {
                LoadingCache<String, Bitmap> loadingCache = this.f21565do;
                if (loadingCache != null) {
                    try {
                        Bitmap bitmap = loadingCache.get(str);
                        if (bitmap != null && !bitmap.isRecycled() && 26 < Build.VERSION.SDK_INT) {
                            bitmap.recycle();
                        }
                        this.f21565do.invalidate(str);
                    } catch (ExecutionException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        /* renamed from: for, reason: not valid java name */
        private void m25502for() {
            LoadingCache<String, Bitmap> loadingCache = this.f21565do;
            if (loadingCache != null) {
                if (loadingCache.size() > 0) {
                    this.f21565do.invalidateAll();
                }
                this.f21568new = null;
                this.f21565do = null;
            }
        }

        /* renamed from: if, reason: not valid java name */
        private Bitmap m25503if(String str) {
            Bitmap bitmapM10487if;
            if (str == null || str.isEmpty() || (bitmapM10487if = cc.shinichi.library.tool.image.Cif.m10487if(str)) == null) {
                return null;
            }
            this.f21565do.put(str, bitmapM10487if);
            return bitmapM10487if;
        }

        /* renamed from: new, reason: not valid java name */
        private Bitmap m25504new(String str) {
            try {
                Bitmap bitmap = this.f21565do.get(str);
                return (bitmap == null || !bitmap.equals(this.f21568new)) ? bitmap : m25503if(str);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("");
                sb.append(e);
                return null;
            }
        }

        /* renamed from: try, reason: not valid java name */
        private synchronized void m25505try() {
            this.f21565do = com.google.common.cache.Cif.m15296abstract().m15330throws(20).m15319package(104857600L).m15302case(12L, TimeUnit.HOURS).m15313if(new Cdo(this, null));
        }
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterBrowseAdapter$if, reason: invalid class name */
    public class Cif extends ht<Bitmap> {

        /* renamed from: case, reason: not valid java name */
        private ComicContentImgBean f21571case;

        /* renamed from: new, reason: not valid java name */
        public WeakReference<PathViewHolder> f21573new;

        /* renamed from: try, reason: not valid java name */
        private PathViewHolder f21574try;

        public Cif(ComicContentImgBean comicContentImgBean, PathViewHolder pathViewHolder) {
            this.f21571case = comicContentImgBean;
            this.f21573new = new WeakReference<>(pathViewHolder);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public /* synthetic */ void m25508for() {
            PathViewHolder pathViewHolder = this.f21573new.get();
            this.f21574try = pathViewHolder;
            pathViewHolder.draweeView.setVisibility(8);
            this.f21574try.tv_item.setVisibility(8);
            this.f21574try.iv_failure.setVisibility(0);
            if (ChapterBrowseAdapter.this.f21546goto == 1) {
                ViewGroup.LayoutParams layoutParams = this.f21574try.itemView.getLayoutParams();
                layoutParams.height = -2;
                layoutParams.width = j10.m3649catch();
                layoutParams.height = (j10.m3648case(ChapterBrowseAdapter.this.f21547if) * 3) / 4;
                this.f21574try.itemView.setLayoutParams(layoutParams);
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = this.f21574try.itemView.getLayoutParams();
            layoutParams2.height = -2;
            layoutParams2.width = j10.m3649catch();
            layoutParams2.height = j10.m3648case(ChapterBrowseAdapter.this.f21547if);
            this.f21574try.itemView.setLayoutParams(layoutParams2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public /* synthetic */ void m25510new(Bitmap bitmap) {
            try {
                PathViewHolder pathViewHolder = this.f21573new.get();
                this.f21574try = pathViewHolder;
                pathViewHolder.draweeView.setVisibility(0);
                this.f21574try.tv_item.setVisibility(8);
                this.f21574try.iv_failure.setVisibility(8);
                ChapterBrowseAdapter.this.f21556while = bitmap.getWidth();
                ChapterBrowseAdapter.this.f21548import = bitmap.getHeight();
                if (ChapterBrowseAdapter.this.f21553this && ChapterBrowseAdapter.this.f21546goto == 1) {
                    bitmap = ChapterBrowseAdapter.this.j(bitmap, this.f21571case);
                }
                if (ChapterBrowseAdapter.this.f21539catch) {
                    bitmap = ChapterBrowseAdapter.this.k(bitmap);
                }
                vv0.m8965if(ChapterBrowseAdapter.f21535return, " orientation : " + ChapterBrowseAdapter.this.f21545for.getResources().getConfiguration().orientation + " width : " + j10.m3649catch() + " Height : " + j10.m3656goto());
                if (ChapterBrowseAdapter.this.f21546goto == 1) {
                    this.f21574try.draweeView.setZoomEnabled(false);
                    if (ChapterBrowseAdapter.this.f21545for.getResources().getConfiguration().orientation != 2) {
                        this.f21574try.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                        this.f21574try.draweeView.setMinimumScaleType(5);
                        ViewGroup.LayoutParams layoutParams = this.f21574try.itemView.getLayoutParams();
                        int iM3649catch = j10.m3649catch();
                        layoutParams.width = iM3649catch;
                        layoutParams.height = (iM3649catch * bitmap.getHeight()) / bitmap.getWidth();
                        this.f21574try.itemView.setLayoutParams(layoutParams);
                        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f21574try.draweeView.getLayoutParams();
                        int iM3649catch2 = j10.m3649catch();
                        layoutParams2.width = iM3649catch2;
                        layoutParams2.height = (iM3649catch2 * bitmap.getHeight()) / bitmap.getWidth();
                        this.f21574try.draweeView.setLayoutParams(layoutParams2);
                        return;
                    }
                    RecyclerView.LayoutParams layoutParams3 = (RecyclerView.LayoutParams) this.f21574try.itemView.getLayoutParams();
                    ((ViewGroup.MarginLayoutParams) layoutParams3).height = (j10.m3649catch() * bitmap.getHeight()) / bitmap.getWidth();
                    ((ViewGroup.MarginLayoutParams) layoutParams3).width = j10.m3649catch();
                    this.f21574try.itemView.setLayoutParams(layoutParams3);
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.f21574try.draweeView.getLayoutParams();
                    layoutParams4.height = (j10.m3649catch() * bitmap.getHeight()) / bitmap.getWidth();
                    layoutParams4.width = j10.m3649catch();
                    layoutParams4.alignWithParent = true;
                    layoutParams4.addRule(13);
                    layoutParams4.addRule(14);
                    layoutParams4.addRule(15);
                    this.f21574try.draweeView.setLayoutParams(layoutParams4);
                    this.f21574try.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                    this.f21574try.draweeView.setMinimumScaleType(5);
                    return;
                }
                boolean zM25484transient = ChapterBrowseAdapter.m25484transient(ChapterBrowseAdapter.this.f21545for, bitmap);
                this.f21574try.draweeView.setOrientation(-1);
                if (zM25484transient) {
                    ViewGroup.LayoutParams layoutParams5 = this.f21574try.itemView.getLayoutParams();
                    layoutParams5.width = j10.m3649catch();
                    layoutParams5.height = j10.m3648case(ChapterBrowseAdapter.this.f21547if);
                    this.f21574try.itemView.setLayoutParams(layoutParams5);
                    RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) this.f21574try.draweeView.getLayoutParams();
                    layoutParams6.width = (j10.m3648case(ChapterBrowseAdapter.this.f21547if) * bitmap.getWidth()) / bitmap.getHeight();
                    layoutParams6.height = j10.m3648case(ChapterBrowseAdapter.this.f21547if);
                    layoutParams6.alignWithParent = true;
                    layoutParams6.addRule(13);
                    layoutParams6.addRule(14);
                    layoutParams6.addRule(15);
                    this.f21574try.draweeView.setLayoutParams(layoutParams6);
                    this.f21574try.draweeView.setMinimumScaleType(4);
                    this.f21574try.draweeView.setMinScale(ChapterBrowseAdapter.m25472finally(ChapterBrowseAdapter.this.f21545for, bitmap));
                    this.f21574try.draweeView.setMaxScale(ChapterBrowseAdapter.m25470extends(ChapterBrowseAdapter.this.f21545for, bitmap));
                    this.f21574try.draweeView.setDoubleTapZoomScale(ChapterBrowseAdapter.m25470extends(ChapterBrowseAdapter.this.f21545for, bitmap));
                    this.f21574try.draweeView.setImage(ImageSource.bitmap(bitmap));
                    return;
                }
                ViewGroup.LayoutParams layoutParams7 = this.f21574try.itemView.getLayoutParams();
                int iM3649catch3 = j10.m3649catch();
                layoutParams7.width = iM3649catch3;
                layoutParams7.height = j10.m3648case(ChapterBrowseAdapter.this.f21547if);
                this.f21574try.itemView.setLayoutParams(layoutParams7);
                RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) this.f21574try.draweeView.getLayoutParams();
                layoutParams8.width = iM3649catch3;
                layoutParams8.height = (iM3649catch3 * bitmap.getHeight()) / bitmap.getWidth();
                layoutParams8.alignWithParent = true;
                layoutParams8.addRule(13);
                layoutParams8.addRule(14);
                layoutParams8.addRule(15);
                this.f21574try.draweeView.setLayoutParams(layoutParams8);
                this.f21574try.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                this.f21574try.draweeView.setMinimumScaleType(5);
                this.f21574try.draweeView.setDoubleTapZoomStyle(2);
                this.f21574try.draweeView.setMinScale(1.0f);
                this.f21574try.draweeView.setMaxScale(2.0f);
                this.f21574try.draweeView.setZoomEnabled(true);
                this.f21574try.draweeView.setPanEnabled(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // android.support.v4.ht, com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
            super.onLoadFailed(drawable);
            wi0.m9165try(new Runnable() { // from class: android.support.v4.ej
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1506do.m25508for();
                }
            });
        }

        @Override // android.support.v4.ht, com.bumptech.glide.request.target.Target
        public void onLoadStarted(@Nullable Drawable drawable) {
            super.onLoadStarted(drawable);
            this.f21574try = this.f21573new.get();
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(@NonNull final Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            wi0.m9165try(new Runnable() { // from class: android.support.v4.fj
                @Override // java.lang.Runnable
                public final void run() {
                    this.f1857do.m25510new(bitmap);
                }
            });
        }
    }

    public ChapterBrowseAdapter(Context context, int i, ComicSourceBean comicSourceBean) {
        this.f21546goto = 2;
        this.f21547if = context;
        this.f21545for = (ChapterBrowseActivity) context;
        this.f21546goto = i;
        this.f21538case = comicSourceBean;
        this.f21550new = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Bitmap bitmap, PathViewHolder pathViewHolder, ComicContentImgBean comicContentImgBean) {
        if (bitmap != null) {
            try {
                pathViewHolder.draweeView.setVisibility(0);
                pathViewHolder.tv_item.setVisibility(8);
                pathViewHolder.iv_failure.setVisibility(8);
                this.f21556while = bitmap.getWidth();
                this.f21548import = bitmap.getHeight();
                if (this.f21553this && this.f21546goto == 1) {
                    bitmap = j(bitmap, comicContentImgBean);
                }
                if (this.f21539catch) {
                    k(bitmap);
                }
                vv0.m8965if("ImageRequestListener", " orientation : " + this.f21545for.getResources().getConfiguration().orientation + " width : " + j10.m3649catch() + " Height : " + j10.m3656goto());
                if (this.f21546goto == 1) {
                    pathViewHolder.draweeView.setZoomEnabled(false);
                    if (this.f21545for.getResources().getConfiguration().orientation != 2) {
                        pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                        pathViewHolder.draweeView.setMinimumScaleType(5);
                        ViewGroup.LayoutParams layoutParams = pathViewHolder.itemView.getLayoutParams();
                        int iM3649catch = j10.m3649catch();
                        layoutParams.width = iM3649catch;
                        layoutParams.height = (iM3649catch * bitmap.getHeight()) / bitmap.getWidth();
                        pathViewHolder.itemView.setLayoutParams(layoutParams);
                        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                        int iM3649catch2 = j10.m3649catch();
                        layoutParams2.width = iM3649catch2;
                        layoutParams2.height = (iM3649catch2 * bitmap.getHeight()) / bitmap.getWidth();
                        pathViewHolder.draweeView.setLayoutParams(layoutParams2);
                        return;
                    }
                    RecyclerView.LayoutParams layoutParams3 = (RecyclerView.LayoutParams) pathViewHolder.itemView.getLayoutParams();
                    ((ViewGroup.MarginLayoutParams) layoutParams3).height = (j10.m3653else() * bitmap.getHeight()) / bitmap.getWidth();
                    ((ViewGroup.MarginLayoutParams) layoutParams3).width = j10.m3653else();
                    pathViewHolder.itemView.setLayoutParams(layoutParams3);
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                    layoutParams4.height = (j10.m3653else() * bitmap.getHeight()) / bitmap.getWidth();
                    layoutParams4.width = j10.m3653else();
                    layoutParams4.alignWithParent = true;
                    layoutParams4.addRule(13);
                    layoutParams4.addRule(14);
                    layoutParams4.addRule(15);
                    pathViewHolder.draweeView.setLayoutParams(layoutParams4);
                    pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3653else() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                    pathViewHolder.draweeView.setMinimumScaleType(5);
                    return;
                }
                if (this.f21545for.getResources().getConfiguration().orientation == 2) {
                    RecyclerView.LayoutParams layoutParams5 = (RecyclerView.LayoutParams) pathViewHolder.itemView.getLayoutParams();
                    ((ViewGroup.MarginLayoutParams) layoutParams5).height = j10.m3648case(this.f21547if);
                    ((ViewGroup.MarginLayoutParams) layoutParams5).width = j10.m3649catch();
                    pathViewHolder.itemView.setLayoutParams(layoutParams5);
                    RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                    layoutParams6.width = (j10.m3648case(this.f21547if) * bitmap.getWidth()) / bitmap.getHeight();
                    layoutParams6.height = j10.m3648case(this.f21547if);
                    layoutParams6.alignWithParent = true;
                    layoutParams6.addRule(13);
                    layoutParams6.addRule(14);
                    layoutParams6.addRule(15);
                    pathViewHolder.draweeView.setLayoutParams(layoutParams6);
                    pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                    pathViewHolder.draweeView.setMinimumScaleType(5);
                    return;
                }
                boolean zM25484transient = m25484transient(this.f21545for, bitmap);
                pathViewHolder.draweeView.setOrientation(-1);
                if (zM25484transient) {
                    ViewGroup.LayoutParams layoutParams7 = pathViewHolder.itemView.getLayoutParams();
                    layoutParams7.width = j10.m3649catch();
                    layoutParams7.height = j10.m3648case(this.f21547if);
                    pathViewHolder.itemView.setLayoutParams(layoutParams7);
                    RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                    layoutParams8.width = (j10.m3648case(this.f21547if) * bitmap.getWidth()) / bitmap.getHeight();
                    layoutParams8.height = j10.m3648case(this.f21547if);
                    layoutParams8.alignWithParent = true;
                    layoutParams8.addRule(13);
                    layoutParams8.addRule(14);
                    layoutParams8.addRule(15);
                    pathViewHolder.draweeView.setLayoutParams(layoutParams8);
                    pathViewHolder.draweeView.setMinimumScaleType(4);
                    pathViewHolder.draweeView.setMinScale(m25472finally(this.f21545for, bitmap));
                    pathViewHolder.draweeView.setMaxScale(m25470extends(this.f21545for, bitmap));
                    pathViewHolder.draweeView.setDoubleTapZoomScale(m25470extends(this.f21545for, bitmap));
                    pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap));
                    return;
                }
                ViewGroup.LayoutParams layoutParams9 = pathViewHolder.itemView.getLayoutParams();
                int iM3649catch3 = j10.m3649catch();
                layoutParams9.width = iM3649catch3;
                layoutParams9.height = j10.m3648case(this.f21547if);
                pathViewHolder.itemView.setLayoutParams(layoutParams9);
                RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                layoutParams10.width = iM3649catch3;
                layoutParams10.height = (iM3649catch3 * bitmap.getHeight()) / bitmap.getWidth();
                layoutParams10.alignWithParent = true;
                layoutParams10.addRule(13);
                layoutParams10.addRule(14);
                layoutParams10.addRule(15);
                pathViewHolder.draweeView.setLayoutParams(layoutParams10);
                boolean zM25481synchronized = m25481synchronized(this.f21545for, bitmap);
                boolean zM25475implements = m25475implements(this.f21545for, bitmap);
                if (zM25481synchronized) {
                    pathViewHolder.draweeView.setMinimumScaleType(1);
                    pathViewHolder.draweeView.setMinScale(cc.shinichi.library.Cdo.m10382break().m10393final());
                    pathViewHolder.draweeView.setMaxScale(cc.shinichi.library.Cdo.m10382break().m10386class());
                    pathViewHolder.draweeView.setDoubleTapZoomScale(m25486volatile(this.f21545for, bitmap));
                } else if (zM25475implements) {
                    pathViewHolder.draweeView.setMinimumScaleType(3);
                    pathViewHolder.draweeView.setMinScale(m25467continue(this.f21545for, bitmap));
                    pathViewHolder.draweeView.setMaxScale(m25461abstract(this.f21545for, bitmap));
                    pathViewHolder.draweeView.setDoubleTapZoomScale(m25461abstract(this.f21545for, bitmap));
                } else {
                    pathViewHolder.draweeView.setMinimumScaleType(1);
                    pathViewHolder.draweeView.setMinScale(1.0f);
                    pathViewHolder.draweeView.setMaxScale(5.0f);
                    pathViewHolder.draweeView.setDoubleTapZoomScale(3.0f);
                    pathViewHolder.draweeView.setDoubleTapZoomStyle(2);
                }
                pathViewHolder.draweeView.setZoomEnabled(true);
                pathViewHolder.draweeView.setPanEnabled(true);
                pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public static float m25461abstract(Context context, Bitmap bitmap) {
        return m25467continue(context, bitmap) * 2.0f;
    }

    private boolean b() {
        double d = this.f21556while;
        double d2 = this.f21548import;
        Double.isNaN(d2);
        return d > d2 * 1.2d;
    }

    private boolean c() {
        return this.f21548import > this.f21556while * 3;
    }

    /* renamed from: continue, reason: not valid java name */
    public static float m25467continue(Context context, Bitmap bitmap) {
        return jd1.m3843new(context.getApplicationContext()) / bitmap.getWidth();
    }

    private Bitmap d(Bitmap bitmap, Bitmap bitmap2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight() + bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(bitmap2, 0.0f, bitmap.getHeight(), (Paint) null);
        return bitmapCreateBitmap;
    }

    /* renamed from: extends, reason: not valid java name */
    public static float m25470extends(Context context, Bitmap bitmap) {
        return m25472finally(context, bitmap) * 2.0f;
    }

    /* renamed from: finally, reason: not valid java name */
    public static float m25472finally(Context context, Bitmap bitmap) {
        return jd1.m3843new(context.getApplicationContext()) / bitmap.getWidth();
    }

    private boolean i(int[] iArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!m25476instanceof(iArr[i2])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: implements, reason: not valid java name */
    public static boolean m25475implements(Context context, Bitmap bitmap) {
        float width = bitmap.getWidth();
        bitmap.getHeight();
        boolean z = width < ((float) jd1.m3843new(context.getApplicationContext()));
        if1.m3413do(f21535return, "isSmallImage = " + z);
        return z;
    }

    /* renamed from: instanceof, reason: not valid java name */
    private boolean m25476instanceof(int i) {
        return ((((16711680 & i) >> 16) * 30) + (((65280 & i) >> 8) * 59)) + ((i & 255) * 11) > 21500;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap j(Bitmap bitmap, ComicContentImgBean comicContentImgBean) {
        if (!b()) {
            return bitmap;
        }
        this.f21556while /= 2;
        this.f21549native = comicContentImgBean.getState() == 1 ? this.f21556while : 0;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, this.f21556while, this.f21548import);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmap, bitmap.getWidth() / 2, 0, this.f21556while, this.f21548import);
        return this.f21537break ? d(bitmapCreateBitmap2, bitmapCreateBitmap) : d(bitmapCreateBitmap, bitmapCreateBitmap2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap k(Bitmap bitmap) {
        int i;
        int i2;
        int i3 = this.f21556while;
        int i4 = this.f21548import;
        if (i3 <= i4) {
            i3 = i4;
        }
        int[] iArr = new int[i3 * 20];
        int i5 = this.f21551public;
        int i6 = (i4 / 3) + i5;
        int i7 = i5;
        while (i7 < i6) {
            int i8 = this.f21556while;
            bitmap.getPixels(iArr, 0, i8, this.f21549native, i7, i8, 1);
            if (!i(iArr, this.f21556while)) {
                int i9 = this.f21556while;
                bitmap.getPixels(iArr, 0, i9, 0, i7, i9, 10);
                if (!w(iArr, this.f21556while, false, false)) {
                    break;
                }
                i7 += 9;
            }
            i7++;
        }
        int i10 = this.f21551public;
        int i11 = this.f21548import;
        int i12 = i10 + ((i11 * 2) / 3);
        int i13 = (i10 + i11) - 1;
        while (i13 > i12) {
            int i14 = this.f21556while;
            bitmap.getPixels(iArr, 0, i14, this.f21549native, i13, i14, 1);
            if (!i(iArr, this.f21556while)) {
                int i15 = this.f21556while;
                bitmap.getPixels(iArr, 0, i15, 0, i13 - 9, i15, 10);
                if (!w(iArr, this.f21556while, false, true)) {
                    break;
                }
                i13 -= 9;
            }
            i13--;
        }
        int i16 = i13 - i7;
        int i17 = i16 + 1;
        int i18 = this.f21549native;
        int i19 = i18 + (this.f21556while / 3);
        int i20 = i18;
        while (true) {
            if (i20 >= i19) {
                break;
            }
            int i21 = i20;
            bitmap.getPixels(iArr, 0, 1, i20, i7, 1, i17);
            if (i(iArr, i17)) {
                i2 = i21;
            } else {
                bitmap.getPixels(iArr, 0, 10, i21, i7, 10, i17);
                if (!w(iArr, i17, true, false)) {
                    i20 = i21;
                    break;
                }
                i2 = i21 + 9;
            }
            i20 = i2 + 1;
        }
        int i22 = this.f21549native;
        int i23 = this.f21556while;
        int i24 = i22 + ((i23 * 2) / 3);
        int i25 = (i22 + i23) - 1;
        while (true) {
            if (i25 <= i24) {
                i = i20;
                break;
            }
            int i26 = i20;
            bitmap.getPixels(iArr, 0, 1, i25, i7, 1, i17);
            if (!i(iArr, i17)) {
                bitmap.getPixels(iArr, 0, 10, i25 - 9, i7, 10, i17);
                if (!w(iArr, i17, true, true)) {
                    i = i26;
                    break;
                }
                i25 -= 9;
            }
            i25--;
            i20 = i26;
        }
        this.f21556while = i25 - i;
        this.f21548import = i16;
        this.f21549native = i;
        this.f21551public = i7;
        return bitmap;
    }

    public static void n(String str) {
        if (f21536static == null || TextUtils.isEmpty(str)) {
            return;
        }
        f21536static.invalidate(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public byte[] m25477native(String str, byte[] bArr, int i, String str2, String str3) {
        try {
            AnalyzeRule analyzeRule = new AnalyzeRule(str3);
            analyzeRule.setContent(str, bArr, str2);
            analyzeRule.setImgPage(i);
            return analyzeRule.getBytes(this.f21538case.getRuleBookContentDecoder(), false);
        } catch (ScriptException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private boolean m25479protected(String str) {
        return !str.startsWith("http");
    }

    /* renamed from: strictfp, reason: not valid java name */
    private int m25480strictfp(boolean z, boolean z2, int i) {
        if (z) {
            return 0;
        }
        return i < 2 ? z2 ? 3 : 0 : i < 5 ? z2 ? 2 : 1 : i < 8 ? z2 ? 1 : 2 : z2 ? 0 : 3;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static boolean m25481synchronized(Context context, Bitmap bitmap) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        boolean z = width > 0.0f && height > 0.0f && width > height && width / height >= 2.0f;
        if1.m3413do(f21535return, "isWideImage = " + z);
        return z;
    }

    /* renamed from: throws, reason: not valid java name */
    public static Headers m25483throws(String str) {
        Cache<String, Headers> cache = f21536static;
        if (cache != null) {
            return cache.getIfPresent(str);
        }
        return null;
    }

    /* renamed from: transient, reason: not valid java name */
    public static boolean m25484transient(Context context, Bitmap bitmap) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        boolean z = width > 0.0f && height > 0.0f && height > width && height / width >= jd1.m3841for(context.getApplicationContext()) + 0.1f;
        if1.m3413do(f21535return, "isLongImage = " + z);
        return z;
    }

    public static int v(String str, String str2) {
        int length = 0;
        int i = 0;
        while (true) {
            int iIndexOf = str.indexOf(str2, length);
            if (iIndexOf < 0) {
                return i;
            }
            length = iIndexOf + str2.length();
            i++;
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    public static float m25486volatile(Context context, Bitmap bitmap) {
        return jd1.m3842if(context.getApplicationContext()) / bitmap.getHeight();
    }

    private boolean w(int[] iArr, int i, boolean z, boolean z2) {
        if (i < 20) {
            return false;
        }
        int[] iArr2 = new int[20];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            if (i2 > 60) {
                return false;
            }
            int i4 = i3 % 20;
            int i5 = i2 - iArr2[i4];
            iArr2[i4] = 0;
            for (int i6 = 0; i6 < 10; i6++) {
                iArr2[i4] = iArr2[i4] + m25480strictfp(m25476instanceof(iArr[z ? (i3 * 10) + i6 : (i6 * i) + i3]), z2, i6);
            }
            i2 = i5 + iArr2[i4];
        }
        return true;
    }

    /* renamed from: default, reason: not valid java name */
    public synchronized ComicContentImgBean m25487default(int i) {
        return this.f21555try.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull PathViewHolder pathViewHolder, int i) {
        String strM25495static;
        try {
            ComicContentImgBean comicContentImgBean = this.f21555try.get(i);
            if (comicContentImgBean.getIsDownload()) {
                File file = new File(comicContentImgBean.getLocalPath());
                strM25495static = file.exists() ? file.getAbsolutePath() : m25495static(comicContentImgBean);
            } else {
                strM25495static = m25495static(comicContentImgBean);
            }
            String str = strM25495static;
            vv0.m8965if(f21535return, "onBindViewHolder: url 111: " + str + " position : " + i);
            pathViewHolder.draweeView.setReadMode(this.f21546goto);
            pathViewHolder.draweeView.setVisibility(8);
            pathViewHolder.tv_item.setVisibility(0);
            pathViewHolder.iv_failure.setVisibility(8);
            if (this.f21546goto == 1) {
                ViewGroup.LayoutParams layoutParams = pathViewHolder.itemView.getLayoutParams();
                layoutParams.height = -2;
                layoutParams.width = j10.m3649catch();
                int iM3648case = (j10.m3648case(this.f21547if) * 3) / 4;
                int i2 = -this.f21545for.l0();
                if (i2 >= iM3648case) {
                    layoutParams.height = i2 + 1;
                } else {
                    layoutParams.height = iM3648case;
                }
                pathViewHolder.itemView.setLayoutParams(layoutParams);
                ViewGroup.LayoutParams layoutParams2 = pathViewHolder.tv_item.getLayoutParams();
                layoutParams2.height = -2;
                layoutParams2.width = j10.m3649catch();
                pathViewHolder.tv_item.setGravity(17);
                if (i2 >= iM3648case) {
                    layoutParams2.height = i2 + 1;
                } else {
                    layoutParams2.height = iM3648case;
                }
                pathViewHolder.tv_item.setLayoutParams(layoutParams2);
                pathViewHolder.tv_item.setText(comicContentImgBean.getIndexPape() + "");
            } else {
                pathViewHolder.tv_item.setText(comicContentImgBean.getIndexPape() + "");
            }
            this.f21552super.add(new SoftReference<>(pathViewHolder.draweeView));
            if (TextUtils.isEmpty(str)) {
                Glide.m11032abstract(this.f21547if).m11218goto(pathViewHolder.draweeView);
                pathViewHolder.draweeView.setBackground(null);
                pathViewHolder.draweeView.setTag(R.id.arg_res_0x7f090211, Integer.valueOf(i));
                return;
            }
            Object tag = pathViewHolder.draweeView.getTag(R.id.arg_res_0x7f090211);
            if (tag == null || !tag.equals(str)) {
                pathViewHolder.draweeView.setBackground(null);
                pathViewHolder.draweeView.setTag(R.id.arg_res_0x7f090211, str);
            }
            if (!comicContentImgBean.getIsDownload()) {
                if (m25479protected(str)) {
                    m25490interface(pathViewHolder, comicContentImgBean, new File(str));
                    return;
                } else {
                    String ruleBookContentDecoder = this.f21538case.getRuleBookContentDecoder();
                    m25494return(pathViewHolder, comicContentImgBean, str, comicContentImgBean.getVariableMap(), ruleBookContentDecoder == null || ruleBookContentDecoder.isEmpty() || ruleBookContentDecoder.equals("null"));
                    return;
                }
            }
            File file2 = new File(comicContentImgBean.getLocalPath());
            if (file2.exists()) {
                m25490interface(pathViewHolder, comicContentImgBean, file2);
            } else if (m25479protected(str)) {
                m25490interface(pathViewHolder, comicContentImgBean, new File(str));
            } else {
                String ruleBookContentDecoder2 = this.f21538case.getRuleBookContentDecoder();
                m25494return(pathViewHolder, comicContentImgBean, str, comicContentImgBean.getVariableMap(), ruleBookContentDecoder2 == null || ruleBookContentDecoder2.isEmpty() || ruleBookContentDecoder2.equals("null"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull PathViewHolder pathViewHolder, int i, @NonNull List<Object> list) {
        onBindViewHolder(pathViewHolder, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public PathViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new PathViewHolder(this.f21546goto == 1 ? this.f21550new.inflate(R.layout.arg_res_0x7f0c0056, viewGroup, false) : this.f21550new.inflate(R.layout.arg_res_0x7f0c0057, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public synchronized int getItemCount() {
        List<ComicContentImgBean> list;
        list = this.f21555try;
        return list == null ? 0 : list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public synchronized long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onViewRecycled(@NonNull PathViewHolder pathViewHolder) {
        super.onViewRecycled(pathViewHolder);
    }

    /* renamed from: if, reason: not valid java name */
    public void m25488if(Bitmap bitmap, ComicContentImgBean comicContentImgBean) {
        if (b()) {
            this.f21556while /= 2;
            this.f21549native = comicContentImgBean.getState() == 1 ? this.f21556while : 0;
            Bitmap.createBitmap(bitmap, 0, 0, this.f21556while, this.f21548import);
            Bitmap.createBitmap(bitmap, bitmap.getWidth() / 2, 0, this.f21556while, this.f21548import);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public synchronized void m25489import(Collection<ComicContentImgBean> collection) {
        if (!this.f21555try.containsAll(collection)) {
            m25499while(this.f21555try.size(), collection);
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public void m25490interface(final PathViewHolder pathViewHolder, final ComicContentImgBean comicContentImgBean, File file) {
        final Bitmap bitmapM10487if = cc.shinichi.library.tool.image.Cif.m10487if(file.getAbsolutePath());
        wi0.m9165try(new Runnable() { // from class: android.support.v4.dj
            @Override // java.lang.Runnable
            public final void run() {
                this.f1059do.a(bitmapM10487if, pathViewHolder, comicContentImgBean);
            }
        });
    }

    public void l() {
        Bitmap bitmap;
        Iterator<SoftReference<SubsamplingScaleImageView>> it = this.f21552super.iterator();
        while (it.hasNext()) {
            SoftReference<SubsamplingScaleImageView> next = it.next();
            SubsamplingScaleImageView subsamplingScaleImageView = next.get();
            BitmapDrawable bitmapDrawable = (BitmapDrawable) subsamplingScaleImageView.getBackground();
            if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null && !bitmap.isRecycled() && 26 < Build.VERSION.SDK_INT) {
                bitmap.recycle();
            }
            subsamplingScaleImageView.recycle();
            subsamplingScaleImageView.setBackground(null);
            next.clear();
        }
        this.f21552super.clear();
        this.f21552super = null;
        System.gc();
    }

    public synchronized void m(boolean z, List<ComicContentImgBean> list, boolean z2) {
        int size = this.f21555try.size();
        if (z) {
            this.f21555try.clear();
            notifyItemRangeRemoved(0, size);
        }
        if (z2) {
            if (!this.f21555try.containsAll(list)) {
                this.f21555try.addAll(0, list);
                notifyItemRangeInserted(0, list.size());
            }
        } else if (list != null && list.size() > 0 && !this.f21555try.containsAll(list)) {
            this.f21555try.addAll(list);
            notifyItemRangeInserted(size, list.size());
        }
    }

    public void o(boolean z) {
        this.f21544final = z;
    }

    public void p(List<ComicContentImgBean> list) {
        this.f21555try = list;
    }

    /* renamed from: package, reason: not valid java name */
    public synchronized int m25491package(String str) {
        int size = this.f21555try.size();
        for (int i = 0; i < size; i++) {
            if (this.f21555try.get(i).getImgurl().equals(str)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: private, reason: not valid java name */
    public int m25492private(int i, int i2, boolean z) {
        while (this.f21555try.get(i).getIndexPape() != i2) {
            i = z ? i - 1 : i + 1;
        }
        return i;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m25493public(String str) {
        if (str != null && !str.isEmpty()) {
            for (char c : str.toCharArray()) {
                if (str.indexOf(c) != str.lastIndexOf(c)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void q(boolean z) {
        this.f21540class = z;
    }

    public void r(boolean z) {
        this.f21553this = z;
    }

    /* renamed from: return, reason: not valid java name */
    public void m25494return(PathViewHolder pathViewHolder, ComicContentImgBean comicContentImgBean, String str, Map<String, String> map, boolean z) {
        wi0.m9161else(new Cdo(comicContentImgBean, str, pathViewHolder, z));
    }

    public void s(boolean z) {
        this.f21537break = z;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21542do = onItemClickListener;
    }

    public void setTapGestureListener(OnTapGestureListener onTapGestureListener) {
        this.f21543else = onTapGestureListener;
    }

    /* renamed from: static, reason: not valid java name */
    public String m25495static(ComicContentImgBean comicContentImgBean) {
        String imgurl = comicContentImgBean.getImgurl();
        File fileM10423for = cc.shinichi.library.glide.Cdo.m10423for(this.f21547if, imgurl);
        if (fileM10423for != null && fileM10423for.exists()) {
            return fileM10423for.getAbsolutePath();
        }
        if (imgurl.contains("[\"")) {
            imgurl = imgurl.replace("[\"", "");
        }
        if (imgurl.contains("\"]")) {
            imgurl = imgurl.replace("\"]", "");
        }
        return ((imgurl.contains("bnpic.comic123.net") || imgurl.contains("res.333dm.com") || imgurl.contains("www.6mh6.com")) && v(imgurl, "http") > 1) ? imgurl.substring(imgurl.lastIndexOf("http")) : imgurl;
    }

    /* renamed from: super, reason: not valid java name */
    public synchronized void m25496super(int i, ComicContentImgBean comicContentImgBean) {
        this.f21555try.add(i, comicContentImgBean);
        notifyItemInserted(i);
    }

    /* renamed from: switch, reason: not valid java name */
    public List<ComicContentImgBean> m25497switch() {
        return this.f21555try;
    }

    public void t(float f) {
        this.f21541const = f;
    }

    /* renamed from: throw, reason: not valid java name */
    public synchronized void m25498throw(ComicContentImgBean comicContentImgBean) {
        if (this.f21555try.add(comicContentImgBean)) {
            notifyItemInserted(this.f21555try.size());
        }
    }

    public void u(boolean z) {
        this.f21539catch = z;
    }

    /* renamed from: while, reason: not valid java name */
    public void m25499while(int i, Collection<ComicContentImgBean> collection) {
        if (this.f21555try.addAll(i, collection)) {
            return;
        }
        notifyItemRangeInserted(i, collection.size() + i);
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterBrowseAdapter$new, reason: invalid class name */
    public class Cnew implements RequestListener<File> {

        /* renamed from: case, reason: not valid java name */
        private int f21575case;

        /* renamed from: do, reason: not valid java name */
        private com.wsw.cospa.Cfor f21576do;

        /* renamed from: for, reason: not valid java name */
        private ComicContentImgBean f21578for;

        /* renamed from: if, reason: not valid java name */
        private PathViewHolder f21579if;

        /* renamed from: new, reason: not valid java name */
        private String f21580new;

        /* renamed from: try, reason: not valid java name */
        private boolean f21581try;

        /* renamed from: com.wsw.cospa.adapter.ChapterBrowseAdapter$new$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ File f21582do;

            public Cdo(File file) {
                this.f21582do = file;
            }

            @Override // java.lang.Runnable
            public void run() throws Throwable {
                String json;
                File file = this.f21582do;
                if (file != null && file.exists() && this.f21582do.isFile()) {
                    try {
                        String imgurl = Cnew.this.f21578for.getImgurl();
                        if (!Cnew.this.f21581try) {
                            byte[] bArrM26767package = Cdefault.m26767package(this.f21582do.getAbsolutePath());
                            Headers headersM25483throws = ChapterBrowseAdapter.m25483throws(imgurl);
                            if (headersM25483throws != null) {
                                json = new GsonBuilder().disableHtmlEscaping().create().toJson(headersM25483throws.toMultimap());
                            } else {
                                json = "";
                            }
                            Cnew cnew = Cnew.this;
                            Cdefault.m26768private(this.f21582do, ChapterBrowseAdapter.this.m25477native(json, bArrM26767package, cnew.f21578for.getIndexPape(), Cnew.this.f21580new, Cnew.this.f21578for.getCustomVariable()));
                        }
                        ChapterBrowseAdapter.n(imgurl);
                        Cnew cnew2 = Cnew.this;
                        ChapterBrowseAdapter.this.m25490interface(cnew2.f21579if, Cnew.this.f21578for, this.f21582do);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        private Cnew() {
            this.f21581try = true;
            this.f21575case = 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public /* synthetic */ void m25512break() {
            this.f21579if.draweeView.setVisibility(8);
            this.f21579if.tv_item.setVisibility(8);
            this.f21579if.iv_failure.setVisibility(0);
            if (ChapterBrowseAdapter.this.f21546goto == 1) {
                ViewGroup.LayoutParams layoutParams = this.f21579if.itemView.getLayoutParams();
                layoutParams.height = -2;
                layoutParams.width = j10.m3649catch();
                layoutParams.height = (j10.m3648case(ChapterBrowseAdapter.this.f21547if) * 3) / 4;
                this.f21579if.itemView.setLayoutParams(layoutParams);
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = this.f21579if.itemView.getLayoutParams();
            layoutParams2.height = -2;
            layoutParams2.width = j10.m3649catch();
            layoutParams2.height = j10.m3648case(ChapterBrowseAdapter.this.f21547if);
            this.f21579if.itemView.setLayoutParams(layoutParams2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
        public synchronized void m25520this() {
            this.f21576do.o0(this).C0();
            this.f21575case++;
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onResourceReady(File file, Object obj, Target<File> target, com.bumptech.glide.load.Cdo cdo, boolean z) {
            wi0.m9161else(new Cdo(file));
            return false;
        }

        /* renamed from: goto, reason: not valid java name */
        public Cnew m25523goto(com.wsw.cospa.Cfor cfor, PathViewHolder pathViewHolder, ComicContentImgBean comicContentImgBean, String str, boolean z) {
            this.f21576do = cfor;
            this.f21579if = pathViewHolder;
            this.f21578for = comicContentImgBean;
            this.f21580new = str;
            this.f21581try = z;
            return this;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<File> target, boolean z) {
            synchronized (this) {
                if (this.f21575case <= 1) {
                    wi0.m9159case(new Runnable() { // from class: com.wsw.cospa.adapter.if
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f21898do.m25520this();
                        }
                    }, 200L);
                } else {
                    wi0.m9165try(new Runnable() { // from class: com.wsw.cospa.adapter.do
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f21886do.m25512break();
                        }
                    });
                }
            }
            return false;
        }

        public /* synthetic */ Cnew(ChapterBrowseAdapter chapterBrowseAdapter, Cdo cdo) {
            this();
        }
    }
}
