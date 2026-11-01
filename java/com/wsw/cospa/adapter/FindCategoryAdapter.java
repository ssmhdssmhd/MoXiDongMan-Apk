package com.wsw.cospa.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
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
import com.wsw.cospa.R;
import com.wsw.cospa.activity.FindComicDetailActivity;
import com.wsw.cospa.vo.FindChildVo;
import com.wsw.cospa.vo.FindParentVo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FindCategoryAdapter extends RecyclerView.Adapter<DescHolder> {

    /* renamed from: do, reason: not valid java name */
    private Context f21697do;

    /* renamed from: for, reason: not valid java name */
    private FindParentVo f21698for;

    /* renamed from: if, reason: not valid java name */
    private LayoutInflater f21699if;

    /* renamed from: new, reason: not valid java name */
    private List<FindChildVo> f21700new = new ArrayList();

    /* renamed from: try, reason: not valid java name */
    private GradientDrawable f21701try;

    public class DescHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f090491)
        public TextView tv_item;

        public DescHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class DescHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private DescHolder f21703do;

        @UiThread
        public DescHolder_ViewBinding(DescHolder descHolder, View view) {
            this.f21703do = descHolder;
            descHolder.tv_item = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090491, "field 'tv_item'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            DescHolder descHolder = this.f21703do;
            if (descHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21703do = null;
            descHolder.tv_item = null;
        }
    }

    public class HeaderHolder extends RecyclerView.ViewHolder {

        /* renamed from: do, reason: not valid java name */
        public TextView f21704do;

        public HeaderHolder(View view) {
            super(view);
            initView();
        }

        private void initView() {
            this.f21704do = (TextView) this.itemView.findViewById(R.id.arg_res_0x7f0904b4);
        }
    }

    public FindCategoryAdapter(Context context) {
        this.f21697do = context;
        this.f21699if = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f21701try = h30.m2930goto(5, context.getResources().getColor(R.color.arg_res_0x7f0601b7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public /* synthetic */ void m25690if(FindChildVo findChildVo, View view) {
        Intent intent = new Intent(this.f21697do, (Class<?>) FindComicDetailActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("url", findChildVo.getKindUrl());
        intent.putExtra(sz0.f6342break, this.f21698for.getParentName() + "-" + findChildVo.getKindName());
        intent.putExtra(p42.f4845if, findChildVo.getParentTag());
        this.f21697do.startActivity(intent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull DescHolder descHolder, int i) {
        try {
            final FindChildVo findChildVo = this.f21700new.get(i);
            descHolder.tv_item.setText(findChildVo.getKindName());
            descHolder.tv_item.setTextColor(-1);
            descHolder.tv_item.setBackground(this.f21701try);
            descHolder.tv_item.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.kb0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f3348do.m25690if(findChildVo, view);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<FindChildVo> list = this.f21700new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<FindChildVo> getList() {
        return this.f21700new;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public DescHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new DescHolder(this.f21699if.inflate(R.layout.arg_res_0x7f0c0095, viewGroup, false));
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized void m25693try(FindParentVo findParentVo, List<FindChildVo> list) {
        this.f21698for = findParentVo;
        int size = this.f21700new.size();
        this.f21700new.clear();
        notifyItemRangeRemoved(0, size);
        this.f21700new.addAll(list);
        notifyDataSetChanged();
    }
}
