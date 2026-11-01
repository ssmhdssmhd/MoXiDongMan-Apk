package com.yalantis.ucrop;

import android.content.Context;
import android.support.v4.dn1;
import android.support.v4.g30;
import android.support.v4.jt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Ccase;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class PicturePhotoGalleryAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private Context f22910do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f22911for;

    /* renamed from: if, reason: not valid java name */
    private List<jt> f22912if;

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: do, reason: not valid java name */
        public ImageView f22913do;

        /* renamed from: if, reason: not valid java name */
        public ImageView f22914if;

        public ViewHolder(View view) {
            super(view);
            this.f22913do = (ImageView) view.findViewById(R.id.iv_photo);
            this.f22914if = (ImageView) view.findViewById(R.id.iv_dot);
        }
    }

    public PicturePhotoGalleryAdapter(Context context, List<jt> list) {
        this.f22912if = new ArrayList();
        this.f22911for = LayoutInflater.from(context);
        this.f22910do = context;
        this.f22912if = list;
    }

    /* renamed from: do, reason: not valid java name */
    public void m27327do(List<jt> list) {
        this.f22912if = list;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(this.f22911for.inflate(R.layout.ucrop_picture_gf_adapter_edit_list, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f22912if.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        jt jtVar = this.f22912if.get(i);
        String path = jtVar != null ? jtVar.getPath() : "";
        if (jtVar.isCut()) {
            viewHolder.f22914if.setVisibility(0);
            viewHolder.f22914if.setImageResource(R.drawable.ucrop_oval_true);
        } else {
            viewHolder.f22914if.setVisibility(8);
        }
        Glide.m11032abstract(this.f22910do).load(path).H0(g30.m2558const()).mo11166do(new dn1().A(R.color.ucrop_color_grey).mo11927for().mo11946this(Ccase.f9734do)).m0(viewHolder.f22913do);
    }
}
