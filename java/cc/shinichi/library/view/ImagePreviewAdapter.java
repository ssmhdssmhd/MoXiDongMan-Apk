package cc.shinichi.library.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.dn1;
import android.support.v4.h31;
import android.support.v4.jd1;
import android.support.v4.tl0;
import android.support.v4.wl0;
import android.support.v4.za0;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import cc.shinichi.library.Cdo;
import cc.shinichi.library.R;
import cc.shinichi.library.view.Cdo;
import cc.shinichi.library.view.helper.FingerDragHelper;
import cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose;
import cc.shinichi.library.view.photoview.PhotoView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccatch;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ImagePreviewAdapter extends PagerAdapter {

    /* renamed from: case, reason: not valid java name */
    private static final String f8797case = "ImagePreview";

    /* renamed from: do, reason: not valid java name */
    private Activity f8798do;

    /* renamed from: if, reason: not valid java name */
    private List<tl0> f8800if;

    /* renamed from: for, reason: not valid java name */
    private HashMap<String, SubsamplingScaleImageViewDragClose> f8799for = new HashMap<>();

    /* renamed from: new, reason: not valid java name */
    private HashMap<String, PhotoView> f8801new = new HashMap<>();

    /* renamed from: try, reason: not valid java name */
    private String f8802try = "";

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$case, reason: invalid class name */
    public class Ccase extends za0 {
        public Ccase() {
        }

        @Override // android.support.v4.za0, com.bumptech.glide.request.target.Target
        public void onLoadStarted(@Nullable Drawable drawable) {
            super.onLoadStarted(drawable);
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f8804do;

        public Cdo(int i) {
            this.f8804do = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (cc.shinichi.library.Cdo.m10382break().m10399import()) {
                ImagePreviewAdapter.this.f8798do.finish();
            }
            if (cc.shinichi.library.Cdo.m10382break().m10390do() != null) {
                cc.shinichi.library.Cdo.m10382break().m10390do().onClick(view, this.f8804do);
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$else, reason: invalid class name */
    public class Celse implements RequestListener<File> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ com.bumptech.glide.load.model.Cif f8806do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ PhotoView f8807for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ SubsamplingScaleImageViewDragClose f8808if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ ProgressBar f8809new;

        /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$else$do, reason: invalid class name */
        public class Cdo extends za0 {
            public Cdo() {
            }

            @Override // android.support.v4.za0, com.bumptech.glide.request.target.Target
            public void onLoadStarted(@Nullable Drawable drawable) {
                super.onLoadStarted(drawable);
            }
        }

        /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$else$if, reason: invalid class name */
        public class Cif implements RequestListener<File> {

            /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$else$if$do, reason: invalid class name */
            public class Cdo extends za0 {
                public Cdo() {
                }

                @Override // android.support.v4.za0, com.bumptech.glide.request.target.Target
                public void onLoadStarted(@Nullable Drawable drawable) {
                    super.onLoadStarted(drawable);
                }
            }

            /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$else$if$if, reason: invalid class name and collision with other inner class name */
            public class C0013if implements RequestListener<File> {
                public C0013if() {
                }

                @Override // com.bumptech.glide.request.RequestListener
                /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
                public boolean onResourceReady(File file, Object obj, Target<File> target, com.bumptech.glide.load.Cdo cdo, boolean z) {
                    Celse celse = Celse.this;
                    ImagePreviewAdapter.this.m10533this(file, celse.f8808if, celse.f8807for, celse.f8809new);
                    return true;
                }

                @Override // com.bumptech.glide.request.RequestListener
                public boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<File> target, boolean z) {
                    Celse celse = Celse.this;
                    ImagePreviewAdapter.this.m10534try(celse.f8808if, celse.f8807for, celse.f8809new, ccatch);
                    return true;
                }
            }

            public Cif() {
            }

            @Override // com.bumptech.glide.request.RequestListener
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public boolean onResourceReady(File file, Object obj, Target<File> target, com.bumptech.glide.load.Cdo cdo, boolean z) {
                Celse celse = Celse.this;
                ImagePreviewAdapter.this.m10533this(file, celse.f8808if, celse.f8807for, celse.f8809new);
                return true;
            }

            @Override // com.bumptech.glide.request.RequestListener
            public boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<File> target, boolean z) {
                Glide.m11041package(ImagePreviewAdapter.this.f8798do).mo6022catch().load(Celse.this.f8806do).W(new C0013if()).j0(new Cdo());
                return true;
            }
        }

        public Celse(com.bumptech.glide.load.model.Cif cif, SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, PhotoView photoView, ProgressBar progressBar) {
            this.f8806do = cif;
            this.f8808if = subsamplingScaleImageViewDragClose;
            this.f8807for = photoView;
            this.f8809new = progressBar;
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onResourceReady(File file, Object obj, Target<File> target, com.bumptech.glide.load.Cdo cdo, boolean z) {
            ImagePreviewAdapter.this.m10533this(file, this.f8808if, this.f8807for, this.f8809new);
            return true;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<File> target, boolean z) {
            Glide.m11041package(ImagePreviewAdapter.this.f8798do).mo6022catch().load(this.f8806do).W(new Cif()).j0(new Cdo());
            return true;
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$for, reason: invalid class name */
    public class Cfor implements View.OnLongClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f8815do;

        public Cfor(int i) {
            this.f8815do = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (cc.shinichi.library.Cdo.m10382break().m10397if() != null) {
                return cc.shinichi.library.Cdo.m10382break().m10397if().onLongClick(view, this.f8815do);
            }
            return false;
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$goto, reason: invalid class name */
    public class Cgoto implements SubsamplingScaleImageViewDragClose.OnImageEventListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ProgressBar f8817do;

        public Cgoto(ProgressBar progressBar) {
            this.f8817do = progressBar;
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onImageLoadError(Exception exc) {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onImageLoaded() {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onPreviewLoadError(Exception exc) {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onPreviewReleased() {
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onReady() {
            this.f8817do.setVisibility(8);
        }

        @Override // cc.shinichi.library.view.helper.SubsamplingScaleImageViewDragClose.OnImageEventListener
        public void onTileLoadError(Exception exc) {
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f8819do;

        public Cif(int i) {
            this.f8819do = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (cc.shinichi.library.Cdo.m10382break().m10399import()) {
                ImagePreviewAdapter.this.f8798do.finish();
            }
            if (cc.shinichi.library.Cdo.m10382break().m10390do() != null) {
                cc.shinichi.library.Cdo.m10382break().m10390do().onClick(view, this.f8819do);
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$new, reason: invalid class name */
    public class Cnew implements View.OnLongClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f8821do;

        public Cnew(int i) {
            this.f8821do = i;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (cc.shinichi.library.Cdo.m10382break().m10397if() != null) {
                return cc.shinichi.library.Cdo.m10382break().m10397if().onLongClick(view, this.f8821do);
            }
            return false;
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$this, reason: invalid class name */
    public class Cthis implements RequestListener<GifDrawable> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ImageView f8823do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ ProgressBar f8824for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ SubsamplingScaleImageViewDragClose f8825if;

        public Cthis(ImageView imageView, SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, ProgressBar progressBar) {
            this.f8823do = imageView;
            this.f8825if = subsamplingScaleImageViewDragClose;
            this.f8824for = progressBar;
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean onResourceReady(GifDrawable gifDrawable, Object obj, Target<GifDrawable> target, com.bumptech.glide.load.Cdo cdo, boolean z) {
            this.f8824for.setVisibility(8);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(@Nullable Ccatch ccatch, Object obj, Target<GifDrawable> target, boolean z) {
            this.f8823do.setVisibility(8);
            this.f8825if.setVisibility(0);
            this.f8825if.setImage(wl0.m9209final(cc.shinichi.library.Cdo.m10382break().m10384case()));
            return false;
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewAdapter$try, reason: invalid class name */
    public class Ctry implements FingerDragHelper.onAlphaChangedListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ PhotoView f8827do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ SubsamplingScaleImageViewDragClose f8829if;

        public Ctry(PhotoView photoView, SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose) {
            this.f8827do = photoView;
            this.f8829if = subsamplingScaleImageViewDragClose;
        }

        @Override // cc.shinichi.library.view.helper.FingerDragHelper.onAlphaChangedListener
        public void onTranslationYChanged(MotionEvent motionEvent, float f) {
            float fAbs = 1.0f - (Math.abs(f) / jd1.m3842if(ImagePreviewAdapter.this.f8798do.getApplicationContext()));
            if (ImagePreviewAdapter.this.f8798do instanceof ImagePreviewActivity) {
                ((ImagePreviewActivity) ImagePreviewAdapter.this.f8798do).m10526switch(fAbs);
            }
            if (this.f8827do.getVisibility() == 0) {
                this.f8827do.setScaleY(fAbs);
                this.f8827do.setScaleX(fAbs);
            }
            if (this.f8829if.getVisibility() == 0) {
                this.f8829if.setScaleY(fAbs);
                this.f8829if.setScaleX(fAbs);
            }
        }
    }

    public ImagePreviewAdapter(Activity activity, @NonNull List<tl0> list) {
        this.f8800if = list;
        this.f8798do = activity;
    }

    /* renamed from: break, reason: not valid java name */
    private void m10527break(String str, SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose) {
        if (cc.shinichi.library.tool.image.Cif.m10496throw(this.f8798do, str)) {
            subsamplingScaleImageViewDragClose.setMinimumScaleType(4);
            subsamplingScaleImageViewDragClose.setMinScale(cc.shinichi.library.tool.image.Cif.m10483else(this.f8798do, str));
            subsamplingScaleImageViewDragClose.setMaxScale(cc.shinichi.library.tool.image.Cif.m10478case(this.f8798do, str));
            subsamplingScaleImageViewDragClose.setDoubleTapZoomScale(cc.shinichi.library.tool.image.Cif.m10478case(this.f8798do, str));
            return;
        }
        boolean zM10488import = cc.shinichi.library.tool.image.Cif.m10488import(this.f8798do, str);
        boolean zM10498while = cc.shinichi.library.tool.image.Cif.m10498while(this.f8798do, str);
        if (zM10488import) {
            subsamplingScaleImageViewDragClose.setMinimumScaleType(1);
            subsamplingScaleImageViewDragClose.setMinScale(cc.shinichi.library.Cdo.m10382break().m10393final());
            subsamplingScaleImageViewDragClose.setMaxScale(cc.shinichi.library.Cdo.m10382break().m10386class());
            subsamplingScaleImageViewDragClose.setDoubleTapZoomScale(cc.shinichi.library.tool.image.Cif.m10479catch(this.f8798do, str));
            return;
        }
        if (zM10498while) {
            subsamplingScaleImageViewDragClose.setMinimumScaleType(3);
            subsamplingScaleImageViewDragClose.setMinScale(cc.shinichi.library.tool.image.Cif.m10477break(this.f8798do, str));
            subsamplingScaleImageViewDragClose.setMaxScale(cc.shinichi.library.tool.image.Cif.m10495this(this.f8798do, str));
            subsamplingScaleImageViewDragClose.setDoubleTapZoomScale(cc.shinichi.library.tool.image.Cif.m10495this(this.f8798do, str));
            return;
        }
        subsamplingScaleImageViewDragClose.setMinimumScaleType(1);
        subsamplingScaleImageViewDragClose.setMinScale(cc.shinichi.library.Cdo.m10382break().m10393final());
        subsamplingScaleImageViewDragClose.setMaxScale(cc.shinichi.library.Cdo.m10382break().m10386class());
        subsamplingScaleImageViewDragClose.setDoubleTapZoomScale(cc.shinichi.library.Cdo.m10382break().m10387const());
    }

    /* renamed from: case, reason: not valid java name */
    private void m10528case(String str, SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, ImageView imageView, ProgressBar progressBar) {
        imageView.setVisibility(0);
        subsamplingScaleImageViewDragClose.setVisibility(8);
        Glide.m11041package(this.f8798do).mo6025else().load(str).mo11166do(new dn1().mo11946this(com.bumptech.glide.load.engine.Ccase.f9737new).mo11943super(cc.shinichi.library.Cdo.m10382break().m10384case())).o0(new Cthis(imageView, subsamplingScaleImageViewDragClose, progressBar)).m0(imageView);
    }

    /* renamed from: else, reason: not valid java name */
    private void m10530else(String str, SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, ImageView imageView, ProgressBar progressBar) {
        imageView.setVisibility(8);
        subsamplingScaleImageViewDragClose.setVisibility(0);
        m10527break(str, subsamplingScaleImageViewDragClose);
        subsamplingScaleImageViewDragClose.setOrientation(-1);
        wl0 wl0VarM9212native = wl0.m9212native(Uri.fromFile(new File(str)));
        if (cc.shinichi.library.tool.image.Cif.m10481const(str)) {
            wl0VarM9212native.m9227while();
        }
        subsamplingScaleImageViewDragClose.setImage(wl0VarM9212native);
        subsamplingScaleImageViewDragClose.setOnImageEventListener(new Cgoto(progressBar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public void m10533this(File file, SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, ImageView imageView, ProgressBar progressBar) {
        String absolutePath = file.getAbsolutePath();
        if (cc.shinichi.library.tool.image.Cif.m10484final(absolutePath)) {
            m10528case(absolutePath, subsamplingScaleImageViewDragClose, imageView, progressBar);
        } else {
            m10530else(absolutePath, subsamplingScaleImageViewDragClose, imageView, progressBar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public void m10534try(SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose, ImageView imageView, ProgressBar progressBar, Ccatch ccatch) {
        progressBar.setVisibility(8);
        imageView.setVisibility(8);
        subsamplingScaleImageViewDragClose.setVisibility(0);
        subsamplingScaleImageViewDragClose.setZoomEnabled(false);
        subsamplingScaleImageViewDragClose.setImage(wl0.m9209final(cc.shinichi.library.Cdo.m10382break().m10384case()));
        String strConcat = ccatch != null ? "加载失败".concat(":\n").concat(ccatch.getMessage()) : "加载失败";
        if (strConcat.length() > 200) {
            strConcat = strConcat.substring(0, 199);
        }
        cc.shinichi.library.tool.ui.Cdo.m10499for().m10501if(this.f8798do.getApplicationContext(), strConcat);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        try {
            HashMap<String, SubsamplingScaleImageViewDragClose> map = this.f8799for;
            if (map != null && map.get(this.f8800if.get(i).getOriginUrl()) != null) {
                this.f8799for.get(this.f8800if.get(i).getOriginUrl()).destroyDrawingCache();
                this.f8799for.get(this.f8800if.get(i).getOriginUrl()).T();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            HashMap<String, PhotoView> map2 = this.f8801new;
            if (map2 != null && map2.get(this.f8800if.get(i).getOriginUrl()) != null) {
                this.f8801new.get(this.f8800if.get(i).getOriginUrl()).destroyDrawingCache();
                this.f8801new.get(this.f8800if.get(i).getOriginUrl()).setImageBitmap(null);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            cc.shinichi.library.glide.Cdo.m10424if(this.f8798do);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f8800if.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m10535goto(tl0 tl0Var) {
        String originUrl = tl0Var.getOriginUrl();
        HashMap<String, SubsamplingScaleImageViewDragClose> map = this.f8799for;
        if (map == null || this.f8801new == null) {
            notifyDataSetChanged();
            return;
        }
        if (map.get(originUrl) == null || this.f8801new.get(originUrl) == null) {
            notifyDataSetChanged();
            return;
        }
        SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = this.f8799for.get(tl0Var.getOriginUrl());
        PhotoView photoView = this.f8801new.get(tl0Var.getOriginUrl());
        File fileM10423for = cc.shinichi.library.glide.Cdo.m10423for(this.f8798do, tl0Var.getOriginUrl());
        if (fileM10423for == null || !fileM10423for.exists()) {
            notifyDataSetChanged();
            return;
        }
        if (cc.shinichi.library.tool.image.Cif.m10484final(fileM10423for.getAbsolutePath())) {
            photoView.setVisibility(0);
            subsamplingScaleImageViewDragClose.setVisibility(8);
            Glide.m11041package(this.f8798do).mo6025else().load(fileM10423for).mo11166do(new dn1().mo11946this(com.bumptech.glide.load.engine.Ccase.f9737new).mo11943super(cc.shinichi.library.Cdo.m10382break().m10384case())).m0(photoView);
            return;
        }
        photoView.setVisibility(8);
        subsamplingScaleImageViewDragClose.setVisibility(0);
        File fileM10423for2 = cc.shinichi.library.glide.Cdo.m10423for(this.f8798do, tl0Var.getThumbnailUrl());
        wl0 wl0VarM9211if = null;
        if (fileM10423for2 != null && fileM10423for2.exists()) {
            String absolutePath = fileM10423for2.getAbsolutePath();
            wl0VarM9211if = wl0.m9211if(cc.shinichi.library.tool.image.Cif.m10490new(absolutePath, cc.shinichi.library.tool.image.Cif.m10482do(absolutePath)));
            int i = cc.shinichi.library.tool.image.Cif.m10480class(absolutePath)[0];
            int i2 = cc.shinichi.library.tool.image.Cif.m10480class(absolutePath)[1];
            if (cc.shinichi.library.tool.image.Cif.m10481const(fileM10423for.getAbsolutePath())) {
                wl0VarM9211if.m9227while();
            }
            wl0VarM9211if.m9223new(i, i2);
        }
        String absolutePath2 = fileM10423for.getAbsolutePath();
        wl0 wl0VarM9213public = wl0.m9213public(absolutePath2);
        int i3 = cc.shinichi.library.tool.image.Cif.m10480class(absolutePath2)[0];
        int i4 = cc.shinichi.library.tool.image.Cif.m10480class(absolutePath2)[1];
        if (cc.shinichi.library.tool.image.Cif.m10481const(fileM10423for.getAbsolutePath())) {
            wl0VarM9213public.m9227while();
        }
        wl0VarM9213public.m9223new(i3, i4);
        m10527break(absolutePath2, subsamplingScaleImageViewDragClose);
        subsamplingScaleImageViewDragClose.setOrientation(-1);
        subsamplingScaleImageViewDragClose.c0(wl0VarM9213public, wl0VarM9211if);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    @SuppressLint({"CheckResult"})
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        Activity activity = this.f8798do;
        if (activity == null) {
            return viewGroup;
        }
        View viewInflate = View.inflate(activity, R.layout.sh_item_photoview, null);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_view);
        FingerDragHelper fingerDragHelper = (FingerDragHelper) viewInflate.findViewById(R.id.fingerDragHelper);
        SubsamplingScaleImageViewDragClose subsamplingScaleImageViewDragClose = (SubsamplingScaleImageViewDragClose) viewInflate.findViewById(R.id.photo_view);
        PhotoView photoView = (PhotoView) viewInflate.findViewById(R.id.gif_view);
        tl0 tl0Var = this.f8800if.get(i);
        String originUrl = tl0Var.getOriginUrl();
        String thumbnailUrl = tl0Var.getThumbnailUrl();
        Map<String, String> headerMap = tl0Var.getHeaderMap();
        subsamplingScaleImageViewDragClose.setMinimumScaleType(1);
        subsamplingScaleImageViewDragClose.setDoubleTapZoomStyle(2);
        subsamplingScaleImageViewDragClose.setDoubleTapZoomDuration(cc.shinichi.library.Cdo.m10382break().m10420while());
        subsamplingScaleImageViewDragClose.setMinScale(cc.shinichi.library.Cdo.m10382break().m10393final());
        subsamplingScaleImageViewDragClose.setMaxScale(cc.shinichi.library.Cdo.m10382break().m10386class());
        subsamplingScaleImageViewDragClose.setDoubleTapZoomScale(cc.shinichi.library.Cdo.m10382break().m10387const());
        photoView.setZoomTransitionDuration(cc.shinichi.library.Cdo.m10382break().m10420while());
        photoView.setMinimumScale(cc.shinichi.library.Cdo.m10382break().m10393final());
        photoView.setMaximumScale(cc.shinichi.library.Cdo.m10382break().m10386class());
        photoView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        subsamplingScaleImageViewDragClose.setOnClickListener(new Cdo(i));
        photoView.setOnClickListener(new Cif(i));
        subsamplingScaleImageViewDragClose.setOnLongClickListener(new Cfor(i));
        photoView.setOnLongClickListener(new Cnew(i));
        if (cc.shinichi.library.Cdo.m10382break().m10402native()) {
            fingerDragHelper.setOnAlphaChangeListener(new Ctry(photoView, subsamplingScaleImageViewDragClose));
        }
        this.f8801new.remove(originUrl);
        this.f8801new.put(originUrl, photoView);
        this.f8799for.remove(originUrl);
        this.f8799for.put(originUrl, subsamplingScaleImageViewDragClose);
        Cdo.Cif cifM10385catch = cc.shinichi.library.Cdo.m10382break().m10385catch();
        if (cifM10385catch == Cdo.Cif.Default) {
            this.f8802try = thumbnailUrl;
        } else if (cifM10385catch == Cdo.Cif.AlwaysOrigin) {
            this.f8802try = originUrl;
        } else if (cifM10385catch == Cdo.Cif.AlwaysThumb) {
            this.f8802try = thumbnailUrl;
        } else if (cifM10385catch == Cdo.Cif.NetworkAuto) {
            if (h31.m2942if(this.f8798do)) {
                this.f8802try = originUrl;
            } else {
                this.f8802try = thumbnailUrl;
            }
        }
        String strTrim = this.f8802try.trim();
        this.f8802try = strTrim;
        progressBar.setVisibility(0);
        File fileM10423for = cc.shinichi.library.glide.Cdo.m10423for(this.f8798do, originUrl);
        if (fileM10423for == null || !fileM10423for.exists()) {
            Cdo.Cif cif = new Cdo.Cif();
            if (headerMap != null) {
                for (String str : headerMap.keySet()) {
                    cif.m10550if(str.toString(), headerMap.get(str));
                }
            }
            com.bumptech.glide.load.model.Cif cif2 = new com.bumptech.glide.load.model.Cif(strTrim, cif.m10548for());
            Glide.m11041package(this.f8798do).mo6022catch().load(cif2).W(new Celse(cif2, subsamplingScaleImageViewDragClose, photoView, progressBar)).j0(new Ccase());
        } else if (cc.shinichi.library.tool.image.Cif.m10484final(fileM10423for.getAbsolutePath())) {
            m10528case(fileM10423for.getAbsolutePath(), subsamplingScaleImageViewDragClose, photoView, progressBar);
        } else {
            m10530else(fileM10423for.getAbsolutePath(), subsamplingScaleImageViewDragClose, photoView, progressBar);
        }
        viewGroup.addView(viewInflate);
        return viewInflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    /* renamed from: new, reason: not valid java name */
    public void m10536new() {
        try {
            HashMap<String, SubsamplingScaleImageViewDragClose> map = this.f8799for;
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, SubsamplingScaleImageViewDragClose> entry : this.f8799for.entrySet()) {
                    if (entry != null && entry.getValue() != null) {
                        entry.getValue().destroyDrawingCache();
                        entry.getValue().T();
                    }
                }
                this.f8799for.clear();
                this.f8799for = null;
            }
            HashMap<String, PhotoView> map2 = this.f8801new;
            if (map2 == null || map2.size() <= 0) {
                return;
            }
            for (Map.Entry<String, PhotoView> entry2 : this.f8801new.entrySet()) {
                if (entry2 != null && entry2.getValue() != null) {
                    entry2.getValue().destroyDrawingCache();
                    entry2.getValue().setImageBitmap(null);
                }
            }
            this.f8801new.clear();
            this.f8801new = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        super.setPrimaryItem(viewGroup, i, obj);
    }
}
