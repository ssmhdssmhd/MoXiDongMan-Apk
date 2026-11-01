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
import com.wsw.cospa.adapter.ChapterListAdapter;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.listener.OnItemClickListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public class ChapterListAdapter extends RecyclerView.Adapter<ChapterViewHolder> {

    /* renamed from: case, reason: not valid java name */
    private int f21605case;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21606do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21607for;

    /* renamed from: if, reason: not valid java name */
    private Context f21608if;

    /* renamed from: new, reason: not valid java name */
    private List<ChapterListBean> f21609new = new ArrayList();

    /* renamed from: try, reason: not valid java name */
    private ChapterListBean f21610try;

    public static class ChapterViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f090468)
        public TextView tvChapter;

        public ChapterViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ChapterViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ChapterViewHolder f21611do;

        @UiThread
        public ChapterViewHolder_ViewBinding(ChapterViewHolder chapterViewHolder, View view) {
            this.f21611do = chapterViewHolder;
            chapterViewHolder.tvChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090468, "field 'tvChapter'", TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ChapterViewHolder chapterViewHolder = this.f21611do;
            if (chapterViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21611do = null;
            chapterViewHolder.tvChapter = null;
        }
    }

    public ChapterListAdapter(Context context) {
        this.f21608if = context;
        this.f21607for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public /* synthetic */ void m25540for(ChapterListBean chapterListBean, int i, View view) {
        if (this.f21606do != null) {
            int durChapterIndex = chapterListBean.getDurChapterIndex();
            this.f21605case = durChapterIndex;
            m25546this(durChapterIndex);
            this.f21606do.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ int m25542new(int i, ChapterListBean chapterListBean, ChapterListBean chapterListBean2) {
        return i == 100001 ? new Integer(chapterListBean.getDurChapterIndex()).compareTo(Integer.valueOf(chapterListBean2.getDurChapterIndex())) : new Integer(chapterListBean2.getDurChapterIndex()).compareTo(Integer.valueOf(chapterListBean.getDurChapterIndex()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ChapterViewHolder(this.f21607for.inflate(R.layout.arg_res_0x7f0c005c, viewGroup, false));
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized void m25544else(final int i) {
        Collections.sort(this.f21609new, new Comparator() { // from class: android.support.v4.ik
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ChapterListAdapter.m25542new(i, (ChapterListBean) obj, (ChapterListBean) obj2);
            }
        });
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ChapterListBean> list = this.f21609new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public List<ChapterListBean> getList() {
        return this.f21609new;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m25545goto(ChapterListBean chapterListBean) {
        this.f21610try = chapterListBean;
        notifyDataSetChanged();
    }

    public synchronized void refresh(List<ChapterListBean> list) {
        int size = this.f21609new.size();
        this.f21609new.clear();
        notifyItemRangeRemoved(0, size);
        this.f21609new.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21606do = onItemClickListener;
    }

    /* renamed from: this, reason: not valid java name */
    public void m25546this(int i) {
        this.f21605case = i;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ChapterViewHolder chapterViewHolder, final int i) {
        final ChapterListBean chapterListBean = this.f21609new.get(i);
        if (chapterListBean != null) {
            chapterViewHolder.tvChapter.setText(chapterListBean.getDurChapterName());
        }
        ChapterListBean chapterListBean2 = this.f21610try;
        if (chapterListBean2 != null) {
            if (chapterListBean2.equals(chapterListBean)) {
                chapterViewHolder.tvChapter.setTextColor(this.f21608if.getResources().getColor(R.color.arg_res_0x7f06008d));
            } else {
                chapterViewHolder.tvChapter.setTextColor(this.f21608if.getResources().getColor(R.color.arg_res_0x7f060007));
            }
        } else if (this.f21605case == chapterListBean.getDurChapterIndex()) {
            chapterViewHolder.tvChapter.setTextColor(this.f21608if.getResources().getColor(R.color.arg_res_0x7f06008d));
        } else {
            chapterViewHolder.tvChapter.setTextColor(this.f21608if.getResources().getColor(R.color.arg_res_0x7f060007));
        }
        chapterViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.hk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2428do.m25540for(chapterListBean, i, view);
            }
        });
    }
}
