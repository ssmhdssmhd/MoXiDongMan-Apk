package com.luck.picture.lib.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.os.Bundle;
import android.support.v4.dn1;
import android.support.v4.fz1;
import android.support.v4.od1;
import android.support.v4.rd1;
import android.support.v4.vl0;
import android.support.v4.yl0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.bumptech.glide.Ctry;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccase;
import com.bumptech.glide.request.transition.Transition;
import com.luck.picture.lib.PictureVideoPlayActivity;
import com.luck.picture.lib.R;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.photoview.OnViewTapListener;
import com.luck.picture.lib.photoview.PhotoView;
import com.luck.picture.lib.widget.longimage.SubsamplingScaleImageView;
import com.youth.banner.BannerConfig;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* loaded from: classes2.dex */
public class SimpleFragmentAdapter extends PagerAdapter {

    /* renamed from: do, reason: not valid java name */
    private List<LocalMedia> f18614do;

    /* renamed from: for, reason: not valid java name */
    private OnCallBackActivity f18615for;

    /* renamed from: if, reason: not valid java name */
    private Context f18616if;

    public interface OnCallBackActivity {
        void onActivityBackPressed();
    }

    /* renamed from: com.luck.picture.lib.adapter.SimpleFragmentAdapter$do, reason: invalid class name */
    public class Cdo extends fz1<Bitmap> {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ PhotoView f18617case;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ boolean f18619new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ SubsamplingScaleImageView f18620try;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(int i, int i2, boolean z, SubsamplingScaleImageView subsamplingScaleImageView, PhotoView photoView) {
            super(i, i2);
            this.f18619new = z;
            this.f18620try = subsamplingScaleImageView;
            this.f18617case = photoView;
        }

        @Override // com.bumptech.glide.request.target.Target
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public void onResourceReady(Bitmap bitmap, Transition<? super Bitmap> transition) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            if (this.f18619new) {
                SimpleFragmentAdapter.this.m22976new(bitmap, this.f18620try);
            } else {
                this.f18617case.setImageBitmap(bitmap);
            }
        }
    }

    /* renamed from: com.luck.picture.lib.adapter.SimpleFragmentAdapter$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SimpleFragmentAdapter.this.f18615for != null) {
                SimpleFragmentAdapter.this.f18615for.onActivityBackPressed();
            }
        }
    }

    /* renamed from: com.luck.picture.lib.adapter.SimpleFragmentAdapter$if, reason: invalid class name */
    public class Cif implements OnViewTapListener {
        public Cif() {
        }

        @Override // com.luck.picture.lib.photoview.OnViewTapListener
        public void onViewTap(View view, float f, float f2) {
            if (SimpleFragmentAdapter.this.f18615for != null) {
                SimpleFragmentAdapter.this.f18615for.onActivityBackPressed();
            }
        }
    }

    /* renamed from: com.luck.picture.lib.adapter.SimpleFragmentAdapter$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ String f18623do;

        public Cnew(String str) {
            this.f18623do = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString("video_path", this.f18623do);
            intent.putExtras(bundle);
            intent.setClass(SimpleFragmentAdapter.this.f18616if, PictureVideoPlayActivity.class);
            SimpleFragmentAdapter.this.f18616if.startActivity(intent);
        }
    }

    public SimpleFragmentAdapter(List<LocalMedia> list, Context context, OnCallBackActivity onCallBackActivity) {
        this.f18614do = list;
        this.f18616if = context;
        this.f18615for = onCallBackActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public void m22976new(Bitmap bitmap, SubsamplingScaleImageView subsamplingScaleImageView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        subsamplingScaleImageView.setQuickScaleEnabled(true);
        subsamplingScaleImageView.setZoomEnabled(true);
        subsamplingScaleImageView.setPanEnabled(true);
        subsamplingScaleImageView.setDoubleTapZoomDuration(100);
        subsamplingScaleImageView.setMinimumScaleType(2);
        subsamplingScaleImageView.setDoubleTapZoomDpi(2);
        subsamplingScaleImageView.b0(vl0.m8901for(bitmap), new yl0(0.0f, new PointF(0.0f, 0.0f), 0));
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<LocalMedia> list = this.f18614do;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.picture_image_preview, viewGroup, false);
        PhotoView photoView = (PhotoView) viewInflate.findViewById(R.id.preview_image);
        SubsamplingScaleImageView subsamplingScaleImageView = (SubsamplingScaleImageView) viewInflate.findViewById(R.id.longImg);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_play);
        LocalMedia localMedia = this.f18614do.get(i);
        if (localMedia != null) {
            String strM23089else = localMedia.m23089else();
            int i2 = 8;
            imageView.setVisibility(strM23089else.startsWith(od1.f4559final) ? 0 : 8);
            String strM23088do = (!localMedia.m23085catch() || localMedia.m23083break()) ? (localMedia.m23083break() || (localMedia.m23085catch() && localMedia.m23083break())) ? localMedia.m23088do() : localMedia.m23084case() : localMedia.m23093if();
            boolean zM6910else = rd1.m6910else(strM23089else);
            boolean zM6904break = rd1.m6904break(localMedia);
            photoView.setVisibility((!zM6904break || zM6910else) ? 0 : 8);
            if (zM6904break && !zM6910else) {
                i2 = 0;
            }
            subsamplingScaleImageView.setVisibility(i2);
            if (!zM6910else || localMedia.m23083break()) {
                Glide.m11032abstract(viewInflate.getContext()).mo6031new().load(strM23088do).mo11166do(new dn1().mo11946this(Ccase.f9734do)).j0(new Cdo(480, BannerConfig.DURATION, zM6904break, subsamplingScaleImageView, photoView));
            } else {
                Glide.m11032abstract(viewInflate.getContext()).mo6025else().load(strM23088do).mo11166do(new dn1().z(480, BannerConfig.DURATION).C(Ctry.HIGH).mo11946this(Ccase.f9736if)).m0(photoView);
            }
            photoView.setOnViewTapListener(new Cif());
            subsamplingScaleImageView.setOnClickListener(new Cfor());
            imageView.setOnClickListener(new Cnew(strM23088do));
        }
        viewGroup.addView(viewInflate, 0);
        return viewInflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
