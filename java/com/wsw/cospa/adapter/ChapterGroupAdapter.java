package com.wsw.cospa.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.bean.ComicInfoBean;
import com.wsw.cospa.bean.Switcher;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.widget.view.ChapterButton;
import com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ChapterGroupAdapter extends SectionedRecyclerViewAdapter<HeaderHolder, DescHolder, RecyclerView.ViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21594do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21595for;

    /* renamed from: if, reason: not valid java name */
    private Context f21596if;

    /* renamed from: new, reason: not valid java name */
    private List<List<Switcher<ChapterListBean>>> f21597new;

    /* renamed from: try, reason: not valid java name */
    private ComicInfoBean f21598try;

    public class DescHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f090468)
        public ChapterButton tvChapter;

        public DescHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class DescHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private DescHolder f21600do;

        @UiThread
        public DescHolder_ViewBinding(DescHolder descHolder, View view) {
            this.f21600do = descHolder;
            descHolder.tvChapter = (ChapterButton) Cnew.m10373case(view, R.id.arg_res_0x7f090468, "field 'tvChapter'", ChapterButton.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            DescHolder descHolder = this.f21600do;
            if (descHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21600do = null;
            descHolder.tvChapter = null;
        }
    }

    public class HeaderHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0900f1)
        public CheckBox checkbox;

        @BindView(R.id.arg_res_0x7f09048a)
        public TextView tvHeader;

        public HeaderHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class HeaderHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private HeaderHolder f21602do;

        @UiThread
        public HeaderHolder_ViewBinding(HeaderHolder headerHolder, View view) {
            this.f21602do = headerHolder;
            headerHolder.tvHeader = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f09048a, "field 'tvHeader'", TextView.class);
            headerHolder.checkbox = (CheckBox) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", CheckBox.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            HeaderHolder headerHolder = this.f21602do;
            if (headerHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21602do = null;
            headerHolder.tvHeader = null;
            headerHolder.checkbox = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterGroupAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Switcher f21603do;

        public Cdo(Switcher switcher) {
            this.f21603do = switcher;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f21603do.switchEnable();
            ChapterGroupAdapter.this.notifyDataSetChanged();
        }
    }

    public ChapterGroupAdapter(Context context, ComicInfoBean comicInfoBean, List<List<Switcher<ChapterListBean>>> list) {
        this.f21597new = new ArrayList();
        this.f21596if = context;
        this.f21598try = comicInfoBean;
        this.f21597new = list;
        this.f21595for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: do, reason: not valid java name */
    public List<List<Switcher<ChapterListBean>>> m25534do() {
        return this.f21597new;
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindSectionHeaderViewHolder(HeaderHolder headerHolder, int i) {
        headerHolder.tvHeader.setText("第" + ((i * 40) + 1) + "章-" + ((i + 1) * 40) + "章");
        headerHolder.checkbox.setChecked(false);
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    public int getItemCountForSection(int i) {
        return this.f21597new.get(i).size();
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    public int getSectionCount() {
        return this.f21597new.size();
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    public boolean hasFooterInSection(int i) {
        return false;
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindItemViewHolder(DescHolder descHolder, int i, int i2) {
        Switcher<ChapterListBean> switcher = this.f21597new.get(i).get(i2);
        if (switcher != null) {
            descHolder.tvChapter.setText(switcher.getElement().getDurChapterName());
        }
        if (switcher.getElement().isDownload()) {
            descHolder.tvChapter.setDownload(true);
            descHolder.tvChapter.setSelected(false);
        } else {
            descHolder.tvChapter.setDownload(false);
            descHolder.tvChapter.setSelected(switcher.isEnable());
        }
        descHolder.itemView.setOnClickListener(new Cdo(switcher));
        OnItemClickListener onItemClickListener = this.f21594do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public DescHolder onCreateItemViewHolder(ViewGroup viewGroup, int i) {
        return new DescHolder(this.f21595for.inflate(R.layout.arg_res_0x7f0c0077, (ViewGroup) null, false));
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    public void onBindSectionFooterViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    public RecyclerView.ViewHolder onCreateSectionFooterViewHolder(ViewGroup viewGroup, int i) {
        return null;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21594do = onItemClickListener;
    }

    @Override // com.wsw.cospa.widget.view.SectionedRecyclerViewAdapter
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public HeaderHolder onCreateSectionHeaderViewHolder(ViewGroup viewGroup, int i) {
        return new HeaderHolder(this.f21595for.inflate(R.layout.arg_res_0x7f0c005a, viewGroup, false));
    }
}
