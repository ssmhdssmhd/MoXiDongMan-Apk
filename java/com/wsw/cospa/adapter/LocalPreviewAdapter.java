package com.wsw.cospa.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.ht;
import android.support.v4.if1;
import android.support.v4.j10;
import android.support.v4.jd1;
import android.support.v4.jh0;
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
import butterknife.internal.Cnew;
import com.bumptech.glide.request.transition.Transition;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.LocalPreviewActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.widget.subscaleview.ImageSource;
import com.wsw.cospa.widget.subscaleview.ImageViewState;
import com.wsw.cospa.widget.subscaleview.SubsamplingScaleImageView;
import com.wsw.cospa.widget.view.OnTapGestureListener;
import freemarker.ext.servlet.Ccase;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class LocalPreviewAdapter extends RecyclerView.Adapter<PathViewHolder> {

    /* renamed from: public, reason: not valid java name */
    private static final String f21798public = "LocalPreviewAdapter";

    /* renamed from: break, reason: not valid java name */
    private boolean f21799break;

    /* renamed from: case, reason: not valid java name */
    private ComicSourceBean f21800case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21801catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f21802class;

    /* renamed from: const, reason: not valid java name */
    private float f21803const;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21804do;

    /* renamed from: else, reason: not valid java name */
    private OnTapGestureListener f21805else;

    /* renamed from: final, reason: not valid java name */
    private boolean f21806final;

    /* renamed from: for, reason: not valid java name */
    private LocalPreviewActivity f21807for;

    /* renamed from: goto, reason: not valid java name */
    private int f21808goto;

    /* renamed from: if, reason: not valid java name */
    private Context f21809if;

    /* renamed from: import, reason: not valid java name */
    private int f21810import;

    /* renamed from: native, reason: not valid java name */
    private int f21811native;

    /* renamed from: new, reason: not valid java name */
    private LayoutInflater f21812new;

    /* renamed from: this, reason: not valid java name */
    private boolean f21814this;

    /* renamed from: throw, reason: not valid java name */
    private int f21815throw;

    /* renamed from: while, reason: not valid java name */
    private int f21817while;

    /* renamed from: try, reason: not valid java name */
    private List<RipeFile> f21816try = new ArrayList();

    /* renamed from: super, reason: not valid java name */
    private ArrayList<SoftReference<SubsamplingScaleImageView>> f21813super = new ArrayList<>();

    public static class PathViewHolder extends RecyclerView.ViewHolder {

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
        private PathViewHolder f21818do;

        @UiThread
        public PathViewHolder_ViewBinding(PathViewHolder pathViewHolder, View view) {
            this.f21818do = pathViewHolder;
            pathViewHolder.tv_item = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090491, "field 'tv_item'", TextView.class);
            pathViewHolder.draweeView = (SubsamplingScaleImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090235, "field 'draweeView'", SubsamplingScaleImageView.class);
            pathViewHolder.iv_failure = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090240, "field 'iv_failure'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            PathViewHolder pathViewHolder = this.f21818do;
            if (pathViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21818do = null;
            pathViewHolder.tv_item = null;
            pathViewHolder.draweeView = null;
            pathViewHolder.iv_failure = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.LocalPreviewAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((LocalPreviewActivity) LocalPreviewAdapter.this.f21809if).G0();
        }
    }

    /* renamed from: com.wsw.cospa.adapter.LocalPreviewAdapter$if, reason: invalid class name */
    public class Cif extends ht<Bitmap> {

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ PathViewHolder f21820new;

        /* renamed from: com.wsw.cospa.adapter.LocalPreviewAdapter$if$do, reason: invalid class name */
        public class Cdo implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Bitmap f21822do;

            public Cdo(Bitmap bitmap) {
                this.f21822do = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Bitmap bitmapM25792private = this.f21822do;
                    Cif.this.f21820new.draweeView.setVisibility(0);
                    Cif.this.f21820new.tv_item.setVisibility(8);
                    Cif.this.f21820new.iv_failure.setVisibility(8);
                    LocalPreviewAdapter.this.f21815throw = bitmapM25792private.getWidth();
                    LocalPreviewAdapter.this.f21817while = bitmapM25792private.getHeight();
                    if (LocalPreviewAdapter.this.f21814this && LocalPreviewAdapter.this.f21808goto == 1) {
                        bitmapM25792private = LocalPreviewAdapter.this.m25791package(bitmapM25792private);
                    }
                    if (LocalPreviewAdapter.this.f21801catch) {
                        bitmapM25792private = LocalPreviewAdapter.this.m25792private(bitmapM25792private);
                    }
                    if (LocalPreviewAdapter.this.f21808goto == 1) {
                        Cif.this.f21820new.draweeView.setZoomEnabled(false);
                        if (LocalPreviewAdapter.this.f21807for.getResources().getConfiguration().orientation != 2) {
                            Cif.this.f21820new.draweeView.setImage(ImageSource.bitmap(bitmapM25792private), new ImageViewState(j10.m3649catch() / bitmapM25792private.getWidth(), new PointF(0.0f, 0.0f), 0));
                            Cif.this.f21820new.draweeView.setMinimumScaleType(5);
                            ViewGroup.LayoutParams layoutParams = Cif.this.f21820new.itemView.getLayoutParams();
                            int iM3649catch = j10.m3649catch();
                            layoutParams.width = iM3649catch;
                            layoutParams.height = (iM3649catch * bitmapM25792private.getHeight()) / bitmapM25792private.getWidth();
                            Cif.this.f21820new.itemView.setLayoutParams(layoutParams);
                            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) Cif.this.f21820new.draweeView.getLayoutParams();
                            int iM3649catch2 = j10.m3649catch();
                            layoutParams2.width = iM3649catch2;
                            layoutParams2.height = (iM3649catch2 * bitmapM25792private.getHeight()) / bitmapM25792private.getWidth();
                            Cif.this.f21820new.draweeView.setLayoutParams(layoutParams2);
                            return;
                        }
                        RecyclerView.LayoutParams layoutParams3 = (RecyclerView.LayoutParams) Cif.this.f21820new.itemView.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams3).height = (j10.m3653else() * bitmapM25792private.getHeight()) / bitmapM25792private.getWidth();
                        ((ViewGroup.MarginLayoutParams) layoutParams3).width = j10.m3653else();
                        Cif.this.f21820new.itemView.setLayoutParams(layoutParams3);
                        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) Cif.this.f21820new.draweeView.getLayoutParams();
                        ((ViewGroup.MarginLayoutParams) layoutParams3).height = (j10.m3653else() * bitmapM25792private.getHeight()) / bitmapM25792private.getWidth();
                        ((ViewGroup.MarginLayoutParams) layoutParams3).width = j10.m3653else();
                        layoutParams4.alignWithParent = true;
                        layoutParams4.addRule(13);
                        layoutParams4.addRule(14);
                        layoutParams4.addRule(15);
                        Cif.this.f21820new.draweeView.setLayoutParams(layoutParams4);
                        Cif.this.f21820new.draweeView.setImage(ImageSource.bitmap(bitmapM25792private), new ImageViewState(j10.m3653else() / bitmapM25792private.getWidth(), new PointF(0.0f, 0.0f), 0));
                        Cif.this.f21820new.draweeView.setMinimumScaleType(5);
                        return;
                    }
                    boolean zM25789native = LocalPreviewAdapter.m25789native(LocalPreviewAdapter.this.f21807for, bitmapM25792private);
                    Cif.this.f21820new.draweeView.setOrientation(-1);
                    if (zM25789native) {
                        Cif.this.f21820new.draweeView.setMinimumScaleType(4);
                        Cif cif = Cif.this;
                        cif.f21820new.draweeView.setMinScale(LocalPreviewAdapter.m25799throw(LocalPreviewAdapter.this.f21807for, bitmapM25792private));
                        Cif cif2 = Cif.this;
                        cif2.f21820new.draweeView.setMaxScale(LocalPreviewAdapter.m25796super(LocalPreviewAdapter.this.f21807for, bitmapM25792private));
                        Cif cif3 = Cif.this;
                        cif3.f21820new.draweeView.setDoubleTapZoomScale(LocalPreviewAdapter.m25796super(LocalPreviewAdapter.this.f21807for, bitmapM25792private));
                        Cif.this.f21820new.draweeView.setImage(ImageSource.bitmap(bitmapM25792private));
                        ViewGroup.LayoutParams layoutParams5 = Cif.this.f21820new.itemView.getLayoutParams();
                        layoutParams5.width = j10.m3649catch();
                        layoutParams5.height = j10.m3648case(LocalPreviewAdapter.this.f21809if);
                        Cif.this.f21820new.itemView.setLayoutParams(layoutParams5);
                        RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) Cif.this.f21820new.draweeView.getLayoutParams();
                        layoutParams6.width = (j10.m3648case(LocalPreviewAdapter.this.f21809if) * bitmapM25792private.getWidth()) / bitmapM25792private.getHeight();
                        layoutParams6.height = j10.m3648case(LocalPreviewAdapter.this.f21809if);
                        layoutParams6.alignWithParent = true;
                        layoutParams6.addRule(13);
                        layoutParams6.addRule(14);
                        layoutParams6.addRule(15);
                        Cif.this.f21820new.draweeView.setLayoutParams(layoutParams6);
                        return;
                    }
                    Cif.this.f21820new.draweeView.setImage(ImageSource.bitmap(bitmapM25792private), new ImageViewState(j10.m3649catch() / bitmapM25792private.getWidth(), new PointF(0.0f, 0.0f), 0));
                    Cif.this.f21820new.draweeView.setMinimumScaleType(1);
                    Cif.this.f21820new.draweeView.setDoubleTapZoomStyle(2);
                    Cif.this.f21820new.draweeView.setMinScale(1.0f);
                    Cif.this.f21820new.draweeView.setMaxScale(2.0f);
                    Cif.this.f21820new.draweeView.setZoomEnabled(true);
                    Cif.this.f21820new.draweeView.setPanEnabled(true);
                    ViewGroup.LayoutParams layoutParams7 = Cif.this.f21820new.itemView.getLayoutParams();
                    int iM3649catch3 = j10.m3649catch();
                    layoutParams7.width = iM3649catch3;
                    layoutParams7.height = j10.m3648case(LocalPreviewAdapter.this.f21809if);
                    Cif.this.f21820new.itemView.setLayoutParams(layoutParams7);
                    RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) Cif.this.f21820new.draweeView.getLayoutParams();
                    layoutParams8.width = iM3649catch3;
                    layoutParams8.height = (iM3649catch3 * bitmapM25792private.getHeight()) / bitmapM25792private.getWidth();
                    layoutParams8.alignWithParent = true;
                    layoutParams8.addRule(13);
                    layoutParams8.addRule(14);
                    layoutParams8.addRule(15);
                    Cif.this.f21820new.draweeView.setLayoutParams(layoutParams8);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public Cif(PathViewHolder pathViewHolder) {
            this.f21820new = pathViewHolder;
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
            wi0.m9165try(new Cdo(bitmap));
        }

        @Override // com.bumptech.glide.request.target.Target
        public void onLoadCleared(@Nullable Drawable drawable) {
        }

        @Override // android.support.v4.ht, com.bumptech.glide.request.target.Target
        public void onLoadFailed(@Nullable Drawable drawable) {
            super.onLoadFailed(drawable);
            this.f21820new.draweeView.setVisibility(8);
            this.f21820new.tv_item.setVisibility(8);
            this.f21820new.iv_failure.setVisibility(0);
            if (LocalPreviewAdapter.this.f21808goto == 1) {
                ViewGroup.LayoutParams layoutParams = this.f21820new.itemView.getLayoutParams();
                layoutParams.height = -2;
                layoutParams.width = j10.m3649catch();
                layoutParams.height = (j10.m3648case(LocalPreviewAdapter.this.f21809if) * 3) / 4;
                this.f21820new.itemView.setLayoutParams(layoutParams);
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = this.f21820new.itemView.getLayoutParams();
            layoutParams2.height = -2;
            layoutParams2.width = j10.m3649catch();
            layoutParams2.height = j10.m3648case(LocalPreviewAdapter.this.f21809if);
            this.f21820new.itemView.setLayoutParams(layoutParams2);
        }

        @Override // android.support.v4.ht, com.bumptech.glide.request.target.Target
        public void onLoadStarted(@Nullable Drawable drawable) {
            super.onLoadStarted(drawable);
        }
    }

    public LocalPreviewAdapter(Context context, int i) {
        this.f21808goto = 2;
        this.f21809if = context;
        this.f21807for = (LocalPreviewActivity) context;
        this.f21808goto = i;
        this.f21812new = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: finally, reason: not valid java name */
    private boolean m25783finally(int[] iArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!m25793public(iArr[i2])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: import, reason: not valid java name */
    private int m25787import(boolean z, boolean z2, int i) {
        if (z) {
            return 0;
        }
        return i < 2 ? z2 ? 3 : 0 : i < 5 ? z2 ? 2 : 1 : i < 8 ? z2 ? 1 : 2 : z2 ? 0 : 3;
    }

    /* renamed from: instanceof, reason: not valid java name */
    private boolean m25788instanceof(int[] iArr, int i, boolean z, boolean z2) {
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
                iArr2[i4] = iArr2[i4] + m25787import(m25793public(iArr[z ? (i3 * 10) + i6 : (i6 * i) + i3]), z2, i6);
            }
            i2 = i5 + iArr2[i4];
        }
        return true;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m25789native(Context context, Bitmap bitmap) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        boolean z = width > 0.0f && height > 0.0f && height > width && height / width >= jd1.m3841for(context.getApplicationContext()) + 0.1f;
        if1.m3413do(f21798public, "isLongImage = " + z);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: package, reason: not valid java name */
    public Bitmap m25791package(Bitmap bitmap) {
        if (!m25794return()) {
            return bitmap;
        }
        int i = this.f21815throw / 2;
        this.f21815throw = i;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, i, this.f21817while);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmap, bitmap.getWidth() / 2, 0, this.f21815throw, this.f21817while);
        return this.f21799break ? m25797switch(bitmapCreateBitmap2, bitmapCreateBitmap) : m25797switch(bitmapCreateBitmap, bitmapCreateBitmap2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public Bitmap m25792private(Bitmap bitmap) {
        int i;
        int i2;
        int i3 = this.f21815throw;
        int i4 = this.f21817while;
        if (i3 <= i4) {
            i3 = i4;
        }
        int[] iArr = new int[i3 * 20];
        int i5 = this.f21811native;
        int i6 = (i4 / 3) + i5;
        int i7 = i5;
        while (i7 < i6) {
            int i8 = this.f21815throw;
            bitmap.getPixels(iArr, 0, i8, this.f21810import, i7, i8, 1);
            if (!m25783finally(iArr, this.f21815throw)) {
                int i9 = this.f21815throw;
                bitmap.getPixels(iArr, 0, i9, 0, i7, i9, 10);
                if (!m25788instanceof(iArr, this.f21815throw, false, false)) {
                    break;
                }
                i7 += 9;
            }
            i7++;
        }
        int i10 = this.f21811native;
        int i11 = this.f21817while;
        int i12 = i10 + ((i11 * 2) / 3);
        int i13 = (i10 + i11) - 1;
        while (i13 > i12) {
            int i14 = this.f21815throw;
            bitmap.getPixels(iArr, 0, i14, this.f21810import, i13, i14, 1);
            if (!m25783finally(iArr, this.f21815throw)) {
                int i15 = this.f21815throw;
                bitmap.getPixels(iArr, 0, i15, 0, i13 - 9, i15, 10);
                if (!m25788instanceof(iArr, this.f21815throw, false, true)) {
                    break;
                }
                i13 -= 9;
            }
            i13--;
        }
        int i16 = i13 - i7;
        int i17 = i16 + 1;
        int i18 = this.f21810import;
        int i19 = i18 + (this.f21815throw / 3);
        int i20 = i18;
        while (true) {
            if (i20 >= i19) {
                break;
            }
            int i21 = i20;
            bitmap.getPixels(iArr, 0, 1, i20, i7, 1, i17);
            if (m25783finally(iArr, i17)) {
                i2 = i21;
            } else {
                bitmap.getPixels(iArr, 0, 10, i21, i7, 10, i17);
                if (!m25788instanceof(iArr, i17, true, false)) {
                    i20 = i21;
                    break;
                }
                i2 = i21 + 9;
            }
            i20 = i2 + 1;
        }
        int i22 = this.f21810import;
        int i23 = this.f21815throw;
        int i24 = i22 + ((i23 * 2) / 3);
        int i25 = (i22 + i23) - 1;
        while (true) {
            if (i25 <= i24) {
                i = i20;
                break;
            }
            int i26 = i20;
            bitmap.getPixels(iArr, 0, 1, i25, i7, 1, i17);
            if (!m25783finally(iArr, i17)) {
                bitmap.getPixels(iArr, 0, 10, i25 - 9, i7, 10, i17);
                if (!m25788instanceof(iArr, i17, true, true)) {
                    i = i26;
                    break;
                }
                i25 -= 9;
            }
            i25--;
            i20 = i26;
        }
        this.f21815throw = i25 - i;
        this.f21817while = i16;
        this.f21810import = i;
        this.f21811native = i7;
        return bitmap;
    }

    /* renamed from: public, reason: not valid java name */
    private boolean m25793public(int i) {
        return ((((16711680 & i) >> 16) * 30) + (((65280 & i) >> 8) * 59)) + ((i & 255) * 11) > 21500;
    }

    /* renamed from: return, reason: not valid java name */
    private boolean m25794return() {
        double d = this.f21815throw;
        double d2 = this.f21817while;
        Double.isNaN(d2);
        return d > d2 * 1.2d;
    }

    /* renamed from: static, reason: not valid java name */
    private boolean m25795static() {
        return this.f21817while > this.f21815throw * 3;
    }

    /* renamed from: super, reason: not valid java name */
    public static float m25796super(Context context, Bitmap bitmap) {
        return m25799throw(context, bitmap) * 2.0f;
    }

    /* renamed from: switch, reason: not valid java name */
    private Bitmap m25797switch(Bitmap bitmap, Bitmap bitmap2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight() + bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(bitmap2, 0.0f, bitmap.getHeight(), (Paint) null);
        return bitmapCreateBitmap;
    }

    /* renamed from: throw, reason: not valid java name */
    public static float m25799throw(Context context, Bitmap bitmap) {
        return jd1.m3843new(context.getApplicationContext()) / bitmap.getWidth();
    }

    /* renamed from: abstract, reason: not valid java name */
    public void m25801abstract() {
        Bitmap bitmap;
        Iterator<SoftReference<SubsamplingScaleImageView>> it = this.f21813super.iterator();
        while (it.hasNext()) {
            SoftReference<SubsamplingScaleImageView> next = it.next();
            SubsamplingScaleImageView subsamplingScaleImageView = next.get();
            BitmapDrawable bitmapDrawable = (BitmapDrawable) subsamplingScaleImageView.getBackground();
            if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null && !bitmap.isRecycled() && 26 < Build.VERSION.SDK_INT) {
                bitmap.recycle();
            }
            subsamplingScaleImageView.recycle();
            next.clear();
        }
        this.f21813super.clear();
        this.f21813super = null;
        System.gc();
    }

    /* renamed from: break, reason: not valid java name */
    public synchronized void m25802break(int i, RipeFile ripeFile) {
        this.f21816try.add(i, ripeFile);
        notifyItemInserted(i);
    }

    /* renamed from: catch, reason: not valid java name */
    public synchronized void m25803catch(RipeFile ripeFile) {
        if (this.f21816try.add(ripeFile)) {
            notifyItemInserted(this.f21816try.size());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public synchronized void m25804class(int i, Collection<RipeFile> collection) {
        if (this.f21816try.addAll(i, collection)) {
            notifyItemRangeInserted(i, collection.size() + i);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public synchronized void m25805const(Collection<RipeFile> collection) {
        if (!this.f21816try.containsAll(collection)) {
            m25804class(this.f21816try.size(), collection);
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public synchronized void m25806continue(boolean z, List<RipeFile> list, boolean z2) {
        int size = this.f21816try.size();
        if (z) {
            this.f21816try.clear();
            notifyItemRangeRemoved(0, size);
        }
        if (z2) {
            if (!this.f21816try.containsAll(list)) {
                this.f21816try.addAll(0, list);
                notifyItemRangeInserted(0, list.size());
            }
        } else if (list != null && list.size() > 0 && !this.f21816try.containsAll(list)) {
            this.f21816try.addAll(list);
            notifyItemRangeInserted(size, list.size());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public PathViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new PathViewHolder(this.f21808goto == 1 ? this.f21812new.inflate(R.layout.arg_res_0x7f0c0056, viewGroup, false) : this.f21812new.inflate(R.layout.arg_res_0x7f0c0057, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onViewRecycled(@NonNull PathViewHolder pathViewHolder) {
        super.onViewRecycled(pathViewHolder);
    }

    /* renamed from: final, reason: not valid java name */
    public RipeFile m25809final(int i) {
        return this.f21816try.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<RipeFile> list = this.f21816try;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: implements, reason: not valid java name */
    public void m25810implements(boolean z) {
        this.f21801catch = z;
    }

    /* renamed from: interface, reason: not valid java name */
    public void m25811interface(boolean z) {
        this.f21814this = z;
    }

    /* renamed from: protected, reason: not valid java name */
    public void m25812protected(boolean z) {
        this.f21799break = z;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21804do = onItemClickListener;
    }

    public void setTapGestureListener(OnTapGestureListener onTapGestureListener) {
        this.f21805else = onTapGestureListener;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void m25813strictfp(boolean z) {
        this.f21806final = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull PathViewHolder pathViewHolder, int i) {
        try {
            RipeFile ripeFile = this.f21816try.get(i);
            String path = ripeFile.getPath();
            if (!path.contains(Ccase.f24959for)) {
                path = Ccase.f24959for + ripeFile.getPath();
            }
            pathViewHolder.draweeView.setOnClickListener(new Cdo());
            pathViewHolder.draweeView.setVisibility(8);
            pathViewHolder.tv_item.setVisibility(0);
            pathViewHolder.iv_failure.setVisibility(8);
            if (this.f21808goto == 1) {
                ViewGroup.LayoutParams layoutParams = pathViewHolder.itemView.getLayoutParams();
                layoutParams.height = -2;
                layoutParams.width = j10.m3649catch();
                layoutParams.height = (j10.m3648case(this.f21809if) * 3) / 4;
                pathViewHolder.itemView.setLayoutParams(layoutParams);
                ViewGroup.LayoutParams layoutParams2 = pathViewHolder.tv_item.getLayoutParams();
                layoutParams2.height = -2;
                layoutParams2.width = j10.m3649catch();
                pathViewHolder.tv_item.setGravity(17);
                layoutParams2.height = (j10.m3648case(this.f21809if) * 3) / 4;
                pathViewHolder.tv_item.setLayoutParams(layoutParams2);
                pathViewHolder.tv_item.setText((i + 1) + "");
            } else {
                pathViewHolder.tv_item.setText((i + 1) + "");
            }
            this.f21813super.add(new SoftReference<>(pathViewHolder.draweeView));
            if (TextUtils.isEmpty(path)) {
                return;
            }
            jh0.m3888this(this.f21809if).mo6031new().mo11946this(com.bumptech.glide.load.engine.Ccase.f9737new).load(path).j0(new Cif(pathViewHolder));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public void m25815transient(float f) {
        this.f21803const = f;
    }

    /* renamed from: volatile, reason: not valid java name */
    public void m25816volatile(boolean z) {
        this.f21802class = z;
    }

    /* renamed from: while, reason: not valid java name */
    public int m25817while(String str) {
        int size = this.f21816try.size();
        for (int i = 0; i < size; i++) {
            if (this.f21816try.get(i).getPath().equals(str)) {
                return i;
            }
        }
        return -1;
    }
}
