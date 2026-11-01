package com.wsw.cospa.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.vo.FindParentVo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class FindComicLeftAdapter extends RecyclerView.Adapter<ChapterViewHolder> {

    /* renamed from: case, reason: not valid java name */
    private int f21728case;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21729do;

    /* renamed from: for, reason: not valid java name */
    private Context f21730for;

    /* renamed from: new, reason: not valid java name */
    private LayoutInflater f21732new;

    /* renamed from: if, reason: not valid java name */
    private int f21731if = 0;

    /* renamed from: try, reason: not valid java name */
    private List<FindParentVo> f21733try = new ArrayList();

    public static class ChapterViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0901c5)
        public LinearLayout findLeft;

        @BindView(R.id.arg_res_0x7f0904b4)
        public TextView parentName;

        @BindView(R.id.arg_res_0x7f090398)
        public ImageView selectLine;

        public ChapterViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ChapterViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ChapterViewHolder f21734do;

        @UiThread
        public ChapterViewHolder_ViewBinding(ChapterViewHolder chapterViewHolder, View view) {
            this.f21734do = chapterViewHolder;
            chapterViewHolder.parentName = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f0904b4, "field 'parentName'", TextView.class);
            chapterViewHolder.findLeft = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901c5, "field 'findLeft'", LinearLayout.class);
            chapterViewHolder.selectLine = (ImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090398, "field 'selectLine'", ImageView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ChapterViewHolder chapterViewHolder = this.f21734do;
            if (chapterViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21734do = null;
            chapterViewHolder.parentName = null;
            chapterViewHolder.findLeft = null;
            chapterViewHolder.selectLine = null;
        }
    }

    public FindComicLeftAdapter(Context context) {
        this.f21730for = context;
        this.f21732new = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
        int i2 = this.f21731if;
        this.f21731if = i;
        notifyItemChanged(i2);
        notifyItemChanged(this.f21731if);
        OnItemClickListener onItemClickListener = this.f21729do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(this.f21731if);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ChapterViewHolder(this.f21732new.inflate(R.layout.arg_res_0x7f0c0097, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<FindParentVo> list = this.f21733try;
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
        return this.f21733try;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ChapterViewHolder chapterViewHolder, final int i) {
        if (this.f21731if == i) {
            chapterViewHolder.selectLine.setVisibility(0);
            chapterViewHolder.findLeft.setBackgroundColor(this.f21730for.getResources().getColor(R.color.arg_res_0x7f060110));
        } else {
            chapterViewHolder.selectLine.setVisibility(4);
            chapterViewHolder.findLeft.setBackgroundColor(this.f21730for.getResources().getColor(R.color.arg_res_0x7f060111));
        }
        chapterViewHolder.parentName.setText(this.f21733try.get(i).getParentName());
        chapterViewHolder.findLeft.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.zb0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8503do.lambda$onBindViewHolder$0(i, view);
            }
        });
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized void m25715new(int i) {
        int i2 = this.f21731if;
        if (i != i2) {
            notifyItemChanged(i2);
            this.f21731if = i;
            notifyItemChanged(i);
        }
    }

    public synchronized void refresh(List<FindParentVo> list) {
        int size = this.f21733try.size();
        this.f21733try.clear();
        notifyItemRangeRemoved(0, size);
        this.f21733try.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21729do = onItemClickListener;
    }
}
