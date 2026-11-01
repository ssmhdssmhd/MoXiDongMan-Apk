package com.wsw.cospa.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.DownloadChapterAdapter;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.Switcher;
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.model.Cthrow;
import com.wsw.cospa.widget.view.ChapterButton;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public class DownloadChapterAdapter extends RecyclerView.Adapter<ChapterViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21651do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21652for;

    /* renamed from: if, reason: not valid java name */
    private Context f21653if;

    /* renamed from: new, reason: not valid java name */
    private List<Switcher<ChapterListBean>> f21654new;

    /* renamed from: try, reason: not valid java name */
    private ComicInfoBean f21655try;

    public static class ChapterViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f090468)
        public ChapterButton tvChapter;

        public ChapterViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ChapterViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ChapterViewHolder f21656do;

        @UiThread
        public ChapterViewHolder_ViewBinding(ChapterViewHolder chapterViewHolder, View view) {
            this.f21656do = chapterViewHolder;
            chapterViewHolder.tvChapter = (ChapterButton) Cnew.m10373case(view, R.id.arg_res_0x7f090468, "field 'tvChapter'", ChapterButton.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ChapterViewHolder chapterViewHolder = this.f21656do;
            if (chapterViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21656do = null;
            chapterViewHolder.tvChapter = null;
        }
    }

    public DownloadChapterAdapter(Context context, ComicInfoBean comicInfoBean, List<Switcher<ChapterListBean>> list) {
        this.f21654new = new ArrayList();
        this.f21653if = context;
        this.f21655try = comicInfoBean;
        this.f21654new = list;
        this.f21652for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: try, reason: not valid java name */
    public static /* synthetic */ int m25627try(int i, Switcher switcher, Switcher switcher2) {
        return i == 100001 ? Integer.valueOf(((ChapterListBean) switcher.getElement()).getDurChapterIndex()).compareTo(Integer.valueOf(((ChapterListBean) switcher2.getElement()).getDurChapterIndex())) : Integer.valueOf(((ChapterListBean) switcher2.getElement()).getDurChapterIndex()).compareTo(Integer.valueOf(((ChapterListBean) switcher.getElement()).getDurChapterIndex()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ChapterViewHolder chapterViewHolder, int i) {
        Switcher<ChapterListBean> switcher = this.f21654new.get(chapterViewHolder.getAdapterPosition());
        if (switcher != null) {
            chapterViewHolder.tvChapter.setText(switcher.getElement().getDurChapterName());
        }
        if (switcher.getElement().isDownload()) {
            chapterViewHolder.tvChapter.setDownload(true);
            chapterViewHolder.tvChapter.setSelected(false);
        } else {
            chapterViewHolder.tvChapter.setDownload(false);
            chapterViewHolder.tvChapter.setSelected(switcher.isEnable());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public ChapterViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ChapterViewHolder(this.f21652for.inflate(R.layout.arg_res_0x7f0c0077, (ViewGroup) null, false));
    }

    /* renamed from: for, reason: not valid java name */
    public List<Switcher<ChapterListBean>> m25630for() {
        return this.f21654new;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<Switcher<ChapterListBean>> list = this.f21654new;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* renamed from: goto, reason: not valid java name */
    public synchronized void m25631goto(final int i) {
        Collections.sort(this.f21654new, new Comparator() { // from class: android.support.v4.l20
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return DownloadChapterAdapter.m25627try(i, (Switcher) obj, (Switcher) obj2);
            }
        });
        notifyItemRangeChanged(0, this.f21654new.size());
    }

    /* renamed from: if, reason: not valid java name */
    public boolean m25632if(ChapterListBean chapterListBean) {
        List<Task> listM26476case = Cthrow.m26474else().m26476case(this.f21655try.getNoteUrl());
        if (listM26476case != null && listM26476case.size() > 0) {
            for (int i = 0; i < listM26476case.size(); i++) {
                if (listM26476case.get(i).getDurChapterUrl().equals(chapterListBean.getDurChapterUrl())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public Switcher<ChapterListBean> m25633new(int i) {
        return this.f21654new.get(i);
    }

    public synchronized void refresh(List<Switcher<ChapterListBean>> list) {
        int size = this.f21654new.size();
        this.f21654new.clear();
        notifyItemRangeRemoved(0, size);
        this.f21654new.addAll(list);
        notifyItemRangeChanged(0, this.f21654new.size());
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21651do = onItemClickListener;
    }

    /* renamed from: this, reason: not valid java name */
    public void m25634this() {
        Collections.reverse(this.f21654new);
        notifyItemRangeChanged(0, this.f21654new.size());
    }
}
