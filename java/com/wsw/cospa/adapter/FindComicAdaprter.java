package com.wsw.cospa.adapter;

import android.content.Context;
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
import com.wsw.cospa.activity.FindCategoryActivity;
import com.wsw.cospa.vo.FindParentVo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FindComicAdaprter extends RecyclerView.Adapter<FindViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private Context f21706do;

    /* renamed from: for, reason: not valid java name */
    private List<FindParentVo> f21707for = new ArrayList();

    /* renamed from: if, reason: not valid java name */
    private LayoutInflater f21708if;

    public class FindViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0904b4)
        public TextView tvSourceName;

        public FindViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class FindViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private FindViewHolder f21710do;

        @UiThread
        public FindViewHolder_ViewBinding(FindViewHolder findViewHolder, View view) {
            this.f21710do = findViewHolder;
            findViewHolder.tvSourceName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b4, "field 'tvSourceName'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            FindViewHolder findViewHolder = this.f21710do;
            if (findViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21710do = null;
            findViewHolder.tvSourceName = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.FindComicAdaprter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ FindParentVo f21711do;

        public Cdo(FindParentVo findParentVo) {
            this.f21711do = findParentVo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FindCategoryActivity.m25068throws(FindComicAdaprter.this.f21706do, this.f21711do);
        }
    }

    public FindComicAdaprter(Context context) {
        this.f21706do = context;
        this.f21708if = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public FindViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new FindViewHolder(this.f21708if.inflate(R.layout.arg_res_0x7f0c007e, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<FindParentVo> list = this.f21707for;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull FindViewHolder findViewHolder, int i) {
        try {
            FindParentVo findParentVo = this.f21707for.get(i);
            findViewHolder.tvSourceName.setText(findParentVo.getParentName());
            findViewHolder.itemView.setOnClickListener(new Cdo(findParentVo));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public synchronized void refresh(List<FindParentVo> list) {
        int size = this.f21707for.size();
        this.f21707for.clear();
        notifyItemRangeRemoved(0, size);
        this.f21707for.addAll(list);
        notifyDataSetChanged();
    }
}
