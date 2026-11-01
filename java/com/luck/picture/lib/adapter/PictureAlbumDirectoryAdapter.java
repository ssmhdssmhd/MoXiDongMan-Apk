package com.luck.picture.lib.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.dn1;
import android.support.v4.j9;
import android.support.v4.rd1;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.drawable.RoundedBitmapDrawable;
import androidx.core.graphics.drawable.RoundedBitmapDrawableFactory;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccase;
import com.luck.picture.lib.R;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.entity.LocalMediaFolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class PictureAlbumDirectoryAdapter extends RecyclerView.Adapter<Cfor> {

    /* renamed from: do, reason: not valid java name */
    private Context f18558do;

    /* renamed from: for, reason: not valid java name */
    private int f18559for;

    /* renamed from: if, reason: not valid java name */
    private List<LocalMediaFolder> f18560if = new ArrayList();

    /* renamed from: new, reason: not valid java name */
    private OnItemClickListener f18561new;

    public interface OnItemClickListener {
        void onItemClick(String str, List<LocalMedia> list);
    }

    /* renamed from: com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter$do, reason: invalid class name */
    public class Cdo extends j9 {

        /* renamed from: catch, reason: not valid java name */
        public final /* synthetic */ Cfor f18562catch;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(ImageView imageView, Cfor cfor) {
            super(imageView);
            this.f18562catch = cfor;
        }

        @Override // android.support.v4.j9, android.support.v4.zl0
        /* renamed from: const */
        public void mo1129catch(Bitmap bitmap) {
            RoundedBitmapDrawable roundedBitmapDrawableCreate = RoundedBitmapDrawableFactory.create(PictureAlbumDirectoryAdapter.this.f18558do.getResources(), bitmap);
            roundedBitmapDrawableCreate.setCornerRadius(8.0f);
            this.f18562catch.f18564do.setImageDrawable(roundedBitmapDrawableCreate);
        }
    }

    /* renamed from: com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter$for, reason: invalid class name */
    public class Cfor extends RecyclerView.ViewHolder {

        /* renamed from: do, reason: not valid java name */
        public ImageView f18564do;

        /* renamed from: for, reason: not valid java name */
        public TextView f18565for;

        /* renamed from: if, reason: not valid java name */
        public TextView f18566if;

        /* renamed from: new, reason: not valid java name */
        public TextView f18567new;

        public Cfor(View view) {
            super(view);
            this.f18564do = (ImageView) view.findViewById(R.id.first_image);
            this.f18566if = (TextView) view.findViewById(R.id.tv_folder_name);
            this.f18565for = (TextView) view.findViewById(R.id.image_num);
            this.f18567new = (TextView) view.findViewById(R.id.tv_sign);
        }
    }

    /* renamed from: com.luck.picture.lib.adapter.PictureAlbumDirectoryAdapter$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ LocalMediaFolder f18569do;

        public Cif(LocalMediaFolder localMediaFolder) {
            this.f18569do = localMediaFolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PictureAlbumDirectoryAdapter.this.f18561new != null) {
                Iterator it = PictureAlbumDirectoryAdapter.this.f18560if.iterator();
                while (it.hasNext()) {
                    ((LocalMediaFolder) it.next()).m23116goto(false);
                }
                this.f18569do.m23116goto(true);
                PictureAlbumDirectoryAdapter.this.notifyDataSetChanged();
                PictureAlbumDirectoryAdapter.this.f18561new.onItemClick(this.f18569do.m23120try(), this.f18569do.m23118new());
            }
        }
    }

    public PictureAlbumDirectoryAdapter(Context context) {
        this.f18558do = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(Cfor cfor, int i) {
        LocalMediaFolder localMediaFolder = this.f18560if.get(i);
        String strM23120try = localMediaFolder.m23120try();
        int iM23115for = localMediaFolder.m23115for();
        String strM23117if = localMediaFolder.m23117if();
        boolean zM23113else = localMediaFolder.m23113else();
        cfor.f18567new.setVisibility(localMediaFolder.m23112do() > 0 ? 0 : 4);
        cfor.itemView.setSelected(zM23113else);
        if (this.f18559for == rd1.m6918super()) {
            cfor.f18564do.setImageResource(R.drawable.audio_placeholder);
        } else {
            Glide.m11032abstract(cfor.itemView.getContext()).mo6031new().load(strM23117if).mo11166do(new dn1().A(R.drawable.ic_placeholder).mo11927for().J(0.5f).mo11946this(Ccase.f9734do).z(160, 160)).j0(new Cdo(cfor.f18564do, cfor));
        }
        cfor.f18565for.setText("(" + iM23115for + ")");
        cfor.f18566if.setText(strM23120try);
        cfor.itemView.setOnClickListener(new Cif(localMediaFolder));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cfor onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new Cfor(LayoutInflater.from(this.f18558do).inflate(R.layout.picture_album_folder_item, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18560if.size();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m22946goto(int i) {
        this.f18559for = i;
    }

    /* renamed from: new, reason: not valid java name */
    public void m22947new(List<LocalMediaFolder> list) {
        this.f18560if = list;
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f18561new = onItemClickListener;
    }

    /* renamed from: try, reason: not valid java name */
    public List<LocalMediaFolder> m22948try() {
        if (this.f18560if == null) {
            this.f18560if = new ArrayList();
        }
        return this.f18560if;
    }
}
