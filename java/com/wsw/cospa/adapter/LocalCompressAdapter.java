package com.wsw.cospa.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.support.v4.if1;
import android.support.v4.j10;
import android.support.v4.jd1;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.bumptech.glide.Glide;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.LocalPreviewActivity;
import com.wsw.cospa.activity.ZipFileManagerActivity;
import com.wsw.cospa.adapter.LocalPreviewAdapter;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.Node;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.widget.subscaleview.ImageSource;
import com.wsw.cospa.widget.subscaleview.ImageViewState;
import com.wsw.cospa.widget.subscaleview.SubsamplingScaleImageView;
import com.wsw.cospa.widget.view.OnTapGestureListener;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes2.dex */
public class LocalCompressAdapter extends RecyclerView.Adapter<LocalPreviewAdapter.PathViewHolder> {

    /* renamed from: return, reason: not valid java name */
    private static final String f21775return = LocalPreviewAdapter.class.getSimpleName();

    /* renamed from: break, reason: not valid java name */
    private boolean f21776break;

    /* renamed from: case, reason: not valid java name */
    private ZipFile f21777case;

    /* renamed from: catch, reason: not valid java name */
    private boolean f21778catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f21779class;

    /* renamed from: const, reason: not valid java name */
    private boolean f21780const;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21781do;

    /* renamed from: else, reason: not valid java name */
    private ComicSourceBean f21782else;

    /* renamed from: final, reason: not valid java name */
    private float f21783final;

    /* renamed from: for, reason: not valid java name */
    private ZipFileManagerActivity f21784for;

    /* renamed from: goto, reason: not valid java name */
    private OnTapGestureListener f21785goto;

    /* renamed from: if, reason: not valid java name */
    private Context f21786if;

    /* renamed from: import, reason: not valid java name */
    private int f21787import;

    /* renamed from: new, reason: not valid java name */
    private LayoutInflater f21789new;

    /* renamed from: super, reason: not valid java name */
    private boolean f21791super;

    /* renamed from: this, reason: not valid java name */
    private int f21792this;

    /* renamed from: while, reason: not valid java name */
    private int f21795while;

    /* renamed from: try, reason: not valid java name */
    private List<Node> f21794try = new ArrayList();

    /* renamed from: throw, reason: not valid java name */
    private ArrayList<SoftReference<SubsamplingScaleImageView>> f21793throw = new ArrayList<>();

    /* renamed from: native, reason: not valid java name */
    private int f21788native = 0;

    /* renamed from: public, reason: not valid java name */
    private int f21790public = 0;

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
        private PathViewHolder f21796do;

        @UiThread
        public PathViewHolder_ViewBinding(PathViewHolder pathViewHolder, View view) {
            this.f21796do = pathViewHolder;
            pathViewHolder.tv_item = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090491, "field 'tv_item'", TextView.class);
            pathViewHolder.draweeView = (SubsamplingScaleImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090235, "field 'draweeView'", SubsamplingScaleImageView.class);
            pathViewHolder.iv_failure = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090240, "field 'iv_failure'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            PathViewHolder pathViewHolder = this.f21796do;
            if (pathViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21796do = null;
            pathViewHolder.tv_item = null;
            pathViewHolder.draweeView = null;
            pathViewHolder.iv_failure = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.LocalCompressAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ((LocalPreviewActivity) LocalCompressAdapter.this.f21786if).G0();
        }
    }

    public LocalCompressAdapter(Context context, int i) {
        this.f21792this = 2;
        this.f21786if = context;
        this.f21784for = (ZipFileManagerActivity) context;
        this.f21792this = i;
        this.f21789new = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: break, reason: not valid java name */
    private Bitmap m25755break(Bitmap bitmap, Bitmap bitmap2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight() + bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(bitmap2, 0.0f, bitmap.getHeight(), (Paint) null);
        return bitmapCreateBitmap;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m25756case(Context context, Bitmap bitmap) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        boolean z = width > 0.0f && height > 0.0f && height > width && height / width >= jd1.m3841for(context.getApplicationContext()) + 0.1f;
        if1.m3413do(f21775return, "isLongImage = " + z);
        return z;
    }

    /* renamed from: default, reason: not valid java name */
    private boolean m25757default(int[] iArr, int i, boolean z, boolean z2) {
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
                iArr2[i4] = iArr2[i4] + m25767try(m25759else(iArr[z ? (i3 * 10) + i6 : (i6 * i) + i3]), z2, i6);
            }
            i2 = i5 + iArr2[i4];
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m25759else(int i) {
        return ((((16711680 & i) >> 16) * 30) + (((65280 & i) >> 8) * 59)) + ((i & 255) * 11) > 21500;
    }

    /* renamed from: final, reason: not valid java name */
    private boolean m25760final(int[] iArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!m25759else(iArr[i2])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public static float m25761for(Context context, Bitmap bitmap) {
        return m25763new(context, bitmap) * 2.0f;
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m25762goto() {
        double d = this.f21795while;
        double d2 = this.f21787import;
        Double.isNaN(d2);
        return d > d2 * 1.2d;
    }

    /* renamed from: new, reason: not valid java name */
    public static float m25763new(Context context, Bitmap bitmap) {
        return jd1.m3843new(context.getApplicationContext()) / bitmap.getWidth();
    }

    /* renamed from: super, reason: not valid java name */
    private Bitmap m25764super(Bitmap bitmap) {
        if (!m25762goto()) {
            return bitmap;
        }
        int i = this.f21795while / 2;
        this.f21795while = i;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, i, this.f21787import);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmap, bitmap.getWidth() / 2, 0, this.f21795while, this.f21787import);
        return this.f21778catch ? m25755break(bitmapCreateBitmap2, bitmapCreateBitmap) : m25755break(bitmapCreateBitmap, bitmapCreateBitmap2);
    }

    /* renamed from: this, reason: not valid java name */
    private boolean m25765this() {
        return this.f21787import > this.f21795while * 3;
    }

    /* renamed from: throw, reason: not valid java name */
    private Bitmap m25766throw(Bitmap bitmap) {
        int i;
        int i2;
        int i3 = this.f21795while;
        int i4 = this.f21787import;
        if (i3 <= i4) {
            i3 = i4;
        }
        int[] iArr = new int[i3 * 20];
        int i5 = this.f21790public;
        int i6 = (i4 / 3) + i5;
        int i7 = i5;
        while (i7 < i6) {
            int i8 = this.f21795while;
            bitmap.getPixels(iArr, 0, i8, this.f21788native, i7, i8, 1);
            if (!m25760final(iArr, this.f21795while)) {
                int i9 = this.f21795while;
                bitmap.getPixels(iArr, 0, i9, 0, i7, i9, 10);
                if (!m25757default(iArr, this.f21795while, false, false)) {
                    break;
                }
                i7 += 9;
            }
            i7++;
        }
        int i10 = this.f21790public;
        int i11 = this.f21787import;
        int i12 = i10 + ((i11 * 2) / 3);
        int i13 = (i10 + i11) - 1;
        while (i13 > i12) {
            int i14 = this.f21795while;
            bitmap.getPixels(iArr, 0, i14, this.f21788native, i13, i14, 1);
            if (!m25760final(iArr, this.f21795while)) {
                int i15 = this.f21795while;
                bitmap.getPixels(iArr, 0, i15, 0, i13 - 9, i15, 10);
                if (!m25757default(iArr, this.f21795while, false, true)) {
                    break;
                }
                i13 -= 9;
            }
            i13--;
        }
        int i16 = i13 - i7;
        int i17 = i16 + 1;
        int i18 = this.f21788native;
        int i19 = i18 + (this.f21795while / 3);
        int i20 = i18;
        while (true) {
            if (i20 >= i19) {
                break;
            }
            int i21 = i20;
            bitmap.getPixels(iArr, 0, 1, i20, i7, 1, i17);
            if (m25760final(iArr, i17)) {
                i2 = i21;
            } else {
                bitmap.getPixels(iArr, 0, 10, i21, i7, 10, i17);
                if (!m25757default(iArr, i17, true, false)) {
                    i20 = i21;
                    break;
                }
                i2 = i21 + 9;
            }
            i20 = i2 + 1;
        }
        int i22 = this.f21788native;
        int i23 = this.f21795while;
        int i24 = i22 + ((i23 * 2) / 3);
        int i25 = (i22 + i23) - 1;
        while (true) {
            if (i25 <= i24) {
                i = i20;
                break;
            }
            int i26 = i20;
            bitmap.getPixels(iArr, 0, 1, i25, i7, 1, i17);
            if (!m25760final(iArr, i17)) {
                bitmap.getPixels(iArr, 0, 10, i25 - 9, i7, 10, i17);
                if (!m25757default(iArr, i17, true, true)) {
                    i = i26;
                    break;
                }
                i25 -= 9;
            }
            i25--;
            i20 = i26;
        }
        this.f21795while = i25 - i;
        this.f21787import = i16;
        this.f21788native = i;
        this.f21790public = i7;
        return bitmap;
    }

    /* renamed from: try, reason: not valid java name */
    private int m25767try(boolean z, boolean z2, int i) {
        if (z) {
            return 0;
        }
        return i < 2 ? z2 ? 3 : 0 : i < 5 ? z2 ? 2 : 1 : i < 8 ? z2 ? 1 : 2 : z2 ? 0 : 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull LocalPreviewAdapter.PathViewHolder pathViewHolder, int i) {
        try {
            ZipEntry zipEntry = this.f21794try.get(i).zipEntry;
            pathViewHolder.draweeView.setOnClickListener(new Cdo());
            pathViewHolder.draweeView.setVisibility(8);
            pathViewHolder.tv_item.setVisibility(0);
            pathViewHolder.iv_failure.setVisibility(8);
            if (this.f21792this == 1) {
                ViewGroup.LayoutParams layoutParams = pathViewHolder.itemView.getLayoutParams();
                layoutParams.height = -2;
                layoutParams.width = j10.m3649catch();
                layoutParams.height = (j10.m3648case(this.f21786if) * 3) / 4;
                pathViewHolder.itemView.setLayoutParams(layoutParams);
                ViewGroup.LayoutParams layoutParams2 = pathViewHolder.tv_item.getLayoutParams();
                layoutParams2.height = -2;
                layoutParams2.width = j10.m3649catch();
                pathViewHolder.tv_item.setGravity(17);
                layoutParams2.height = (j10.m3648case(this.f21786if) * 3) / 4;
                pathViewHolder.tv_item.setLayoutParams(layoutParams2);
                pathViewHolder.tv_item.setText((i + 1) + "");
            } else {
                pathViewHolder.tv_item.setText((i + 1) + "");
            }
            this.f21793throw.add(new SoftReference<>(pathViewHolder.draweeView));
            Bitmap bitmap = new BitmapDrawable(this.f21786if.getResources(), this.f21777case.getInputStream(zipEntry)).getBitmap();
            this.f21795while = bitmap.getWidth();
            this.f21787import = bitmap.getHeight();
            if (this.f21776break && this.f21792this == 1) {
                bitmap = m25764super(bitmap);
            }
            if (this.f21779class) {
                bitmap = m25766throw(bitmap);
            }
            pathViewHolder.draweeView.setVisibility(0);
            pathViewHolder.tv_item.setVisibility(8);
            pathViewHolder.iv_failure.setVisibility(8);
            if (this.f21792this == 1) {
                pathViewHolder.draweeView.setZoomEnabled(false);
                if (this.f21784for.getResources().getConfiguration().orientation != 2) {
                    pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                    pathViewHolder.draweeView.setMinimumScaleType(5);
                    ViewGroup.LayoutParams layoutParams3 = pathViewHolder.itemView.getLayoutParams();
                    int iM3649catch = j10.m3649catch();
                    layoutParams3.width = iM3649catch;
                    layoutParams3.height = (iM3649catch * bitmap.getHeight()) / bitmap.getWidth();
                    pathViewHolder.itemView.setLayoutParams(layoutParams3);
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                    int iM3649catch2 = j10.m3649catch();
                    layoutParams4.width = iM3649catch2;
                    layoutParams4.height = (iM3649catch2 * bitmap.getHeight()) / bitmap.getWidth();
                    pathViewHolder.draweeView.setLayoutParams(layoutParams4);
                    return;
                }
                RecyclerView.LayoutParams layoutParams5 = (RecyclerView.LayoutParams) pathViewHolder.itemView.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams5).height = (j10.m3649catch() * bitmap.getHeight()) / bitmap.getWidth();
                ((ViewGroup.MarginLayoutParams) layoutParams5).width = j10.m3649catch();
                pathViewHolder.itemView.setLayoutParams(layoutParams5);
                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams5).height = (j10.m3649catch() * bitmap.getHeight()) / bitmap.getWidth();
                ((ViewGroup.MarginLayoutParams) layoutParams5).width = j10.m3649catch();
                layoutParams6.alignWithParent = true;
                layoutParams6.addRule(13);
                layoutParams6.addRule(14);
                layoutParams6.addRule(15);
                pathViewHolder.draweeView.setLayoutParams(layoutParams6);
                pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
                pathViewHolder.draweeView.setMinimumScaleType(5);
                return;
            }
            boolean zM25756case = m25756case(this.f21784for, bitmap);
            pathViewHolder.draweeView.setOrientation(-1);
            if (zM25756case) {
                pathViewHolder.draweeView.setMinimumScaleType(4);
                pathViewHolder.draweeView.setMinScale(m25763new(this.f21784for, bitmap));
                pathViewHolder.draweeView.setMaxScale(m25761for(this.f21784for, bitmap));
                pathViewHolder.draweeView.setDoubleTapZoomScale(m25761for(this.f21784for, bitmap));
                pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap));
                ViewGroup.LayoutParams layoutParams7 = pathViewHolder.itemView.getLayoutParams();
                layoutParams7.width = j10.m3649catch();
                layoutParams7.height = j10.m3648case(this.f21786if);
                pathViewHolder.itemView.setLayoutParams(layoutParams7);
                RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
                layoutParams8.width = (j10.m3648case(this.f21786if) * bitmap.getWidth()) / bitmap.getHeight();
                layoutParams8.height = j10.m3648case(this.f21786if);
                layoutParams8.alignWithParent = true;
                layoutParams8.addRule(13);
                layoutParams8.addRule(14);
                layoutParams8.addRule(15);
                pathViewHolder.draweeView.setLayoutParams(layoutParams8);
                return;
            }
            pathViewHolder.draweeView.setImage(ImageSource.bitmap(bitmap), new ImageViewState(j10.m3649catch() / bitmap.getWidth(), new PointF(0.0f, 0.0f), 0));
            pathViewHolder.draweeView.setMinimumScaleType(1);
            pathViewHolder.draweeView.setDoubleTapZoomStyle(2);
            pathViewHolder.draweeView.setMinScale(1.0f);
            pathViewHolder.draweeView.setMaxScale(2.0f);
            pathViewHolder.draweeView.setZoomEnabled(true);
            pathViewHolder.draweeView.setPanEnabled(true);
            ViewGroup.LayoutParams layoutParams9 = pathViewHolder.itemView.getLayoutParams();
            int iM3649catch3 = j10.m3649catch();
            layoutParams9.width = iM3649catch3;
            layoutParams9.height = j10.m3648case(this.f21786if);
            pathViewHolder.itemView.setLayoutParams(layoutParams9);
            RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) pathViewHolder.draweeView.getLayoutParams();
            layoutParams10.width = iM3649catch3;
            layoutParams10.height = (iM3649catch3 * bitmap.getHeight()) / bitmap.getWidth();
            layoutParams10.alignWithParent = true;
            layoutParams10.addRule(13);
            layoutParams10.addRule(14);
            layoutParams10.addRule(15);
            pathViewHolder.draweeView.setLayoutParams(layoutParams10);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public LocalPreviewAdapter.PathViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new LocalPreviewAdapter.PathViewHolder(this.f21792this == 1 ? this.f21789new.inflate(R.layout.arg_res_0x7f0c0056, viewGroup, false) : this.f21789new.inflate(R.layout.arg_res_0x7f0c0057, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onViewRecycled(@NonNull LocalPreviewAdapter.PathViewHolder pathViewHolder) {
        Bitmap bitmap;
        super.onViewRecycled(pathViewHolder);
        SubsamplingScaleImageView subsamplingScaleImageView = pathViewHolder.draweeView;
        if (subsamplingScaleImageView == null || this.f21784for.isDestroyed()) {
            return;
        }
        BitmapDrawable bitmapDrawable = (BitmapDrawable) subsamplingScaleImageView.getBackground();
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null && !bitmap.isRecycled() && 26 < Build.VERSION.SDK_INT) {
            bitmap.recycle();
        }
        subsamplingScaleImageView.setBackground(null);
        Glide.m11048volatile(this.f21784for).m11218goto(subsamplingScaleImageView);
        subsamplingScaleImageView.recycle();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f21794try.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* renamed from: if, reason: not valid java name */
    public ZipEntry m25771if(int i) {
        return this.f21794try.get(i).zipEntry;
    }

    /* renamed from: import, reason: not valid java name */
    public synchronized void m25772import(boolean z, List<Node> list, boolean z2, ZipFile zipFile) {
        int size = this.f21794try.size();
        this.f21777case = zipFile;
        if (z) {
            this.f21794try.clear();
            notifyItemRangeRemoved(0, size);
        }
        if (z2) {
            if (!this.f21794try.containsAll(list)) {
                this.f21794try.addAll(0, list);
                notifyItemRangeInserted(0, list.size());
            }
        } else if (list != null && list.size() > 0 && !this.f21794try.containsAll(list)) {
            this.f21794try.addAll(list);
            notifyItemRangeInserted(size, list.size());
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m25773native(boolean z) {
        this.f21791super = z;
    }

    /* renamed from: public, reason: not valid java name */
    public void m25774public(boolean z) {
        this.f21780const = z;
    }

    /* renamed from: return, reason: not valid java name */
    public void m25775return(boolean z) {
        this.f21776break = z;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21781do = onItemClickListener;
    }

    public void setTapGestureListener(OnTapGestureListener onTapGestureListener) {
        this.f21785goto = onTapGestureListener;
    }

    /* renamed from: static, reason: not valid java name */
    public void m25776static(boolean z) {
        this.f21778catch = z;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m25777switch(float f) {
        this.f21783final = f;
    }

    /* renamed from: throws, reason: not valid java name */
    public void m25778throws(boolean z) {
        this.f21779class = z;
    }

    /* renamed from: while, reason: not valid java name */
    public void m25779while() {
        Bitmap bitmap;
        Iterator<SoftReference<SubsamplingScaleImageView>> it = this.f21793throw.iterator();
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
        this.f21793throw.clear();
        this.f21793throw = null;
        System.gc();
    }
}
