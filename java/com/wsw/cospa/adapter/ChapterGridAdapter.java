package com.wsw.cospa.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.ChapterGridAdapter;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.listener.OnItemClickListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public class ChapterGridAdapter extends RecyclerView.Adapter<ChapterViewHolder> {

    /* renamed from: goto, reason: not valid java name */
    private static final int f21584goto = 1;

    /* renamed from: this, reason: not valid java name */
    private static final int f21585this = 0;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21587do;

    /* renamed from: else, reason: not valid java name */
    private ChapterListBean f21588else;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21589for;

    /* renamed from: if, reason: not valid java name */
    private Context f21590if;

    /* renamed from: try, reason: not valid java name */
    private int f21592try;

    /* renamed from: new, reason: not valid java name */
    private List<ChapterListBean> f21591new = new ArrayList();

    /* renamed from: case, reason: not valid java name */
    private int f21586case = 0;

    public static class ChapterViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0901d0)
        public FrameLayout mRootView;

        @BindView(R.id.arg_res_0x7f090468)
        public TextView tvChapter;

        public ChapterViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ChapterViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ChapterViewHolder f21593do;

        @UiThread
        public ChapterViewHolder_ViewBinding(ChapterViewHolder chapterViewHolder, View view) {
            this.f21593do = chapterViewHolder;
            chapterViewHolder.tvChapter = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090468, "field 'tvChapter'", TextView.class);
            chapterViewHolder.mRootView = (FrameLayout) Cnew.m10373case(view, R.id.arg_res_0x7f0901d0, "field 'mRootView'", FrameLayout.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ChapterViewHolder chapterViewHolder = this.f21593do;
            if (chapterViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21593do = null;
            chapterViewHolder.tvChapter = null;
            chapterViewHolder.mRootView = null;
        }
    }

    public ChapterGridAdapter(Context context) {
        this.f21590if = context;
        this.f21589for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public /* synthetic */ void m25525for(ChapterListBean chapterListBean, int i, View view) {
        if (this.f21587do != null) {
            int durChapterIndex = chapterListBean.getDurChapterIndex();
            this.f21592try = durChapterIndex;
            m25528break(durChapterIndex);
            this.f21587do.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public static /* synthetic */ int m25527new(int i, ChapterListBean chapterListBean, ChapterListBean chapterListBean2) {
        return i == 100001 ? Integer.valueOf(chapterListBean.getDurChapterIndex()).compareTo(Integer.valueOf(chapterListBean2.getDurChapterIndex())) : Integer.valueOf(chapterListBean2.getDurChapterIndex()).compareTo(Integer.valueOf(chapterListBean.getDurChapterIndex()));
    }

    /* renamed from: break, reason: not valid java name */
    public synchronized void m25528break(int i) {
        this.f21592try = i;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ChapterViewHolder(this.f21589for.inflate(R.layout.arg_res_0x7f0c005b, viewGroup, false));
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized void m25530else(final int i) {
        Collections.sort(this.f21591new, new Comparator() { // from class: android.support.v4.gk
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ChapterGridAdapter.m25527new(i, (ChapterListBean) obj, (ChapterListBean) obj2);
            }
        });
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<ChapterListBean> list = this.f21591new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public synchronized List<ChapterListBean> getList() {
        return this.f21591new;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m25531goto(int i) {
        this.f21586case = i;
    }

    public synchronized void refresh(List<ChapterListBean> list) {
        int size = this.f21591new.size();
        this.f21591new.clear();
        notifyItemRangeRemoved(0, size);
        this.f21591new.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21587do = onItemClickListener;
    }

    /* renamed from: this, reason: not valid java name */
    public void m25532this(ChapterListBean chapterListBean) {
        this.f21588else = chapterListBean;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ChapterViewHolder chapterViewHolder, final int i) {
        final ChapterListBean chapterListBean = this.f21591new.get(i);
        if (chapterListBean != null) {
            if (this.f21586case == 0) {
                chapterViewHolder.tvChapter.setEllipsize(TextUtils.TruncateAt.END);
                chapterViewHolder.tvChapter.setGravity(17);
            } else {
                chapterViewHolder.tvChapter.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                chapterViewHolder.tvChapter.setGravity(GravityCompat.START);
            }
            chapterViewHolder.tvChapter.setText(chapterListBean.getDurChapterName());
        }
        ChapterListBean chapterListBean2 = this.f21588else;
        if (chapterListBean2 != null) {
            if (chapterListBean2.equals(chapterListBean)) {
                chapterViewHolder.tvChapter.setBackground(ContextCompat.getDrawable(this.f21590if, R.drawable.arg_res_0x7f080073));
                chapterViewHolder.tvChapter.setTextColor(this.f21590if.getResources().getColor(R.color.arg_res_0x7f060380));
            } else {
                chapterViewHolder.tvChapter.setBackground(ContextCompat.getDrawable(this.f21590if, R.drawable.arg_res_0x7f08006b));
                chapterViewHolder.tvChapter.setTextColor(this.f21590if.getResources().getColor(R.color.arg_res_0x7f060117));
            }
        } else if (this.f21592try == chapterListBean.getDurChapterIndex()) {
            chapterViewHolder.tvChapter.setBackground(ContextCompat.getDrawable(this.f21590if, R.drawable.arg_res_0x7f080073));
            chapterViewHolder.tvChapter.setTextColor(this.f21590if.getResources().getColor(R.color.arg_res_0x7f060380));
        } else {
            chapterViewHolder.tvChapter.setBackground(ContextCompat.getDrawable(this.f21590if, R.drawable.arg_res_0x7f08006b));
            chapterViewHolder.tvChapter.setTextColor(this.f21590if.getResources().getColor(R.color.arg_res_0x7f060117));
        }
        chapterViewHolder.mRootView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.fk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1872do.m25525for(chapterListBean, i, view);
            }
        });
    }
}
