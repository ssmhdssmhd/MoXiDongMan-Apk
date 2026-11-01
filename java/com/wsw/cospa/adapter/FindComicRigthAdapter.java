package com.wsw.cospa.adapter;

import android.content.Context;
import android.content.Intent;
import android.support.v4.h30;
import android.support.v4.p42;
import android.support.v4.sz0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.google.android.flexbox.FlexboxLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.FindComicDetailActivity;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.vo.FindChildVo;
import com.wsw.cospa.vo.FindParentVo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FindComicRigthAdapter extends RecyclerView.Adapter<ChapterViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21735do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21736for;

    /* renamed from: if, reason: not valid java name */
    private Context f21737if;

    /* renamed from: new, reason: not valid java name */
    private List<FindParentVo> f21738new = new ArrayList();

    public static class ChapterViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f09043f)
        public FlexboxLayout kindGroup;

        @BindView(R.id.arg_res_0x7f0904b4)
        public TextView parentName;

        public ChapterViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ChapterViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ChapterViewHolder f21739do;

        @UiThread
        public ChapterViewHolder_ViewBinding(ChapterViewHolder chapterViewHolder, View view) {
            this.f21739do = chapterViewHolder;
            chapterViewHolder.parentName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b4, "field 'parentName'", TextView.class);
            chapterViewHolder.kindGroup = (FlexboxLayout) Cnew.m10373case(view, R.id.arg_res_0x7f09043f, "field 'kindGroup'", FlexboxLayout.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ChapterViewHolder chapterViewHolder = this.f21739do;
            if (chapterViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21739do = null;
            chapterViewHolder.parentName = null;
            chapterViewHolder.kindGroup = null;
        }
    }

    public FindComicRigthAdapter(Context context) {
        this.f21737if = context;
        this.f21736for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public /* synthetic */ void m25717if(FindChildVo findChildVo, int i, View view) {
        Intent intent = new Intent(this.f21737if, (Class<?>) FindComicDetailActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("url", findChildVo.getKindUrl());
        intent.putExtra(sz0.f6342break, this.f21738new.get(i).getParentName() + "-" + findChildVo.getKindName());
        intent.putExtra(p42.f4845if, findChildVo.getParentTag());
        this.f21737if.startActivity(intent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ChapterViewHolder chapterViewHolder, final int i) {
        chapterViewHolder.parentName.setText(this.f21738new.get(i).getParentName());
        chapterViewHolder.kindGroup.removeAllViews();
        for (final FindChildVo findChildVo : this.f21738new.get(i).getChildVoList()) {
            TextView textView = (TextView) LayoutInflater.from(this.f21737if).inflate(R.layout.arg_res_0x7f0c007f, (ViewGroup) chapterViewHolder.kindGroup, false);
            textView.setText(findChildVo.getKindName());
            textView.setTextColor(-1);
            textView.setBackground(h30.m2922case(5));
            textView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ac0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f89do.m25717if(findChildVo, i, view);
                }
            });
            chapterViewHolder.kindGroup.addView(textView);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<FindParentVo> list = this.f21738new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public List<FindParentVo> getList() {
        return this.f21738new;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ChapterViewHolder(this.f21736for.inflate(R.layout.arg_res_0x7f0c0098, viewGroup, false));
    }

    public synchronized void refresh(List<FindParentVo> list) {
        int size = this.f21738new.size();
        this.f21738new.clear();
        notifyItemRangeRemoved(0, size);
        this.f21738new.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21735do = onItemClickListener;
    }
}
