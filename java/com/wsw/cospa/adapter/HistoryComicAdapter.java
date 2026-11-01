package com.wsw.cospa.adapter;

import android.content.Context;
import android.support.v4.tm1;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.HistoryComicBean;
import com.wsw.cospa.dao.DatabaseHelper;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.utils.Ccase;
import com.wsw.cospa.utils.Cfinally;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeHeaders;
import com.wsw.cospa.widget.itemtouch.DefaultItemTouchHelpCallback;
import com.wsw.cospa.widget.itemtouch.ItemTouchHelperAdapter;
import com.wsw.cospa.widget.view.MarqueTextView;
import com.wsw.cospa.widget.view.RoundImageView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class HistoryComicAdapter extends RecyclerView.Adapter<ComicViewHolder> implements ItemTouchHelperAdapter {

    /* renamed from: break, reason: not valid java name */
    private ItemTouchHelper f21749break;

    /* renamed from: case, reason: not valid java name */
    private List<HistoryComicBean> f21750case = new ArrayList();

    /* renamed from: catch, reason: not valid java name */
    private DefaultItemTouchHelpCallback.OnItemTouchCallbackListener f21751catch = new Cnew();

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21752do;

    /* renamed from: else, reason: not valid java name */
    private OnLongItemClickListener f21753else;

    /* renamed from: for, reason: not valid java name */
    private OnSlideRemoveListener f21754for;

    /* renamed from: goto, reason: not valid java name */
    private OnCheckedChangeListener f21755goto;

    /* renamed from: if, reason: not valid java name */
    private OnItemSearchClickListener f21756if;

    /* renamed from: new, reason: not valid java name */
    private Context f21757new;

    /* renamed from: this, reason: not valid java name */
    private boolean f21758this;

    /* renamed from: try, reason: not valid java name */
    private LayoutInflater f21759try;

    public static class ComicViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0900f1)
        public CheckBox checkbox;

        @BindView(R.id.arg_res_0x7f09023a)
        public RoundImageView ivCover;

        @BindView(R.id.arg_res_0x7f09046f)
        public MarqueTextView tvComicName;

        @BindView(R.id.arg_res_0x7f090494)
        public TextView tvLastChapter;

        @BindView(R.id.arg_res_0x7f0904a0)
        public TextView tvOrigin;

        @BindView(R.id.arg_res_0x7f0904aa)
        public TextView tvSearch;

        public ComicViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class ComicViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private ComicViewHolder f21760do;

        @UiThread
        public ComicViewHolder_ViewBinding(ComicViewHolder comicViewHolder, View view) {
            this.f21760do = comicViewHolder;
            comicViewHolder.ivCover = (RoundImageView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f09023a, "field 'ivCover'", RoundImageView.class);
            comicViewHolder.tvOrigin = (TextView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f0904a0, "field 'tvOrigin'", TextView.class);
            comicViewHolder.tvComicName = (MarqueTextView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f09046f, "field 'tvComicName'", MarqueTextView.class);
            comicViewHolder.tvLastChapter = (TextView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f090494, "field 'tvLastChapter'", TextView.class);
            comicViewHolder.tvSearch = (TextView) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f0904aa, "field 'tvSearch'", TextView.class);
            comicViewHolder.checkbox = (CheckBox) butterknife.internal.Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", CheckBox.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            ComicViewHolder comicViewHolder = this.f21760do;
            if (comicViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21760do = null;
            comicViewHolder.ivCover = null;
            comicViewHolder.tvOrigin = null;
            comicViewHolder.tvComicName = null;
            comicViewHolder.tvLastChapter = null;
            comicViewHolder.tvSearch = null;
            comicViewHolder.checkbox = null;
        }
    }

    public interface OnCheckedChangeListener {
        void onCheckedChanged(int i, boolean z);
    }

    public interface OnItemSearchClickListener {
        void onItemSearchClick(int i);
    }

    public interface OnSlideRemoveListener {
        void onSlideRemove();
    }

    /* renamed from: com.wsw.cospa.adapter.HistoryComicAdapter$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ List f21761do;

        public Cdo(List list) {
            this.f21761do = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            DatabaseHelper.m26016switch().b(this.f21761do);
        }
    }

    /* renamed from: com.wsw.cospa.adapter.HistoryComicAdapter$for, reason: invalid class name */
    public class Cfor implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicViewHolder f21763do;

        public Cfor(ComicViewHolder comicViewHolder) {
            this.f21763do = comicViewHolder;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (HistoryComicAdapter.this.f21755goto != null) {
                HistoryComicAdapter.this.f21755goto.onCheckedChanged(this.f21763do.getAdapterPosition(), z);
            }
        }
    }

    /* renamed from: com.wsw.cospa.adapter.HistoryComicAdapter$if, reason: invalid class name */
    public class Cif implements View.OnLongClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ComicViewHolder f21765do;

        public Cif(ComicViewHolder comicViewHolder) {
            this.f21765do = comicViewHolder;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (HistoryComicAdapter.this.f21753else == null) {
                return false;
            }
            HistoryComicAdapter.this.f21753else.onLongClick(view, this.f21765do.getAdapterPosition());
            return false;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.HistoryComicAdapter$new, reason: invalid class name */
    public class Cnew implements DefaultItemTouchHelpCallback.OnItemTouchCallbackListener {
        public Cnew() {
        }

        @Override // com.wsw.cospa.widget.itemtouch.DefaultItemTouchHelpCallback.OnItemTouchCallbackListener
        public boolean onMove(int i, int i2) {
            return false;
        }

        @Override // com.wsw.cospa.widget.itemtouch.DefaultItemTouchHelpCallback.OnItemTouchCallbackListener
        public void onSwiped(int i) {
        }

        @Override // com.wsw.cospa.widget.itemtouch.DefaultItemTouchHelpCallback.OnItemTouchCallbackListener
        public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
            if (HistoryComicAdapter.this.f21750case != null) {
                try {
                    DatabaseHelper.m26016switch().m26045transient(((HistoryComicBean) HistoryComicAdapter.this.f21750case.get(viewHolder.getAdapterPosition())).getNoteUrl());
                    HistoryComicAdapter.this.f21750case.remove(viewHolder.getAdapterPosition());
                    HistoryComicAdapter.this.notifyItemRemoved(viewHolder.getAdapterPosition());
                } catch (Exception e) {
                    Objects.requireNonNull(e.getMessage());
                }
            }
        }
    }

    public HistoryComicAdapter(Context context) {
        this.f21757new = context;
        this.f21759try = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public /* synthetic */ void m25733break(ComicViewHolder comicViewHolder, View view) {
        OnItemClickListener onItemClickListener = this.f21752do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(comicViewHolder.getAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public /* synthetic */ void m25734catch(ComicViewHolder comicViewHolder, View view) {
        OnItemSearchClickListener onItemSearchClickListener = this.f21756if;
        if (onItemSearchClickListener != null) {
            onItemSearchClickListener.onItemSearchClick(comicViewHolder.getAdapterPosition());
        }
    }

    /* renamed from: final, reason: not valid java name */
    private synchronized void m25736final(List<HistoryComicBean> list) {
        Ccase.m26722this().m26725else().execute(new Cdo(list));
    }

    /* renamed from: case, reason: not valid java name */
    public synchronized void m25741case(List<HistoryComicBean> list) {
        m25736final(list);
        this.f21750case.addAll(list);
        notifyItemInserted(list.size());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final ComicViewHolder comicViewHolder, int i) {
        HistoryComicBean historyComicBean = this.f21750case.get(comicViewHolder.getAdapterPosition());
        System.out.println(historyComicBean.getCoverUrl());
        Object tag = comicViewHolder.ivCover.getTag(R.id.arg_res_0x7f090391);
        if (tag == null || !tag.equals(historyComicBean.getCoverUrl())) {
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, null);
            if (!TextUtils.isEmpty(historyComicBean.getCoverUrl())) {
                Cfinally.m26887class(this.f21757new, historyComicBean.getCoverUrl(), comicViewHolder.ivCover, historyComicBean.getCoverHeader(), AnalyzeHeaders.getDefaultUserAgent(com.wsw.cospa.model.Cdo.m26358abstract(historyComicBean.getTag())));
            }
            comicViewHolder.ivCover.setTag(R.id.arg_res_0x7f090391, historyComicBean.getCoverUrl());
        }
        comicViewHolder.tvComicName.setText(historyComicBean.getName());
        comicViewHolder.tvOrigin.setText(historyComicBean.getOrigin());
        if (TextUtils.isEmpty(historyComicBean.getLastChapter())) {
            comicViewHolder.tvLastChapter.setVisibility(8);
        } else {
            comicViewHolder.tvLastChapter.setVisibility(0);
            if ((historyComicBean.getLastChapter().contains("话") || historyComicBean.getLastChapter().contains("-") || historyComicBean.getLastChapter().contains("上") || historyComicBean.getLastChapter().contains("下") || historyComicBean.getLastChapter().contains("卷") || historyComicBean.getLastChapter().contains("章") || historyComicBean.getLastChapter().contains("局")) && !historyComicBean.getLastChapter().contains("更新至")) {
                comicViewHolder.tvLastChapter.setText("更新至" + historyComicBean.getLastChapter());
            } else if (historyComicBean.getLastChapter().contains("连载中") || historyComicBean.getLastChapter().contains("已完结") || historyComicBean.getLastChapter().contains("更") || historyComicBean.getLastChapter().contains("更新至")) {
                comicViewHolder.tvLastChapter.setText(historyComicBean.getLastChapter());
            } else if (tm1.m7998case(historyComicBean.getLastChapter())) {
                comicViewHolder.tvLastChapter.setText("更新至" + historyComicBean.getLastChapter());
            } else {
                comicViewHolder.tvLastChapter.setText("更新至" + historyComicBean.getLastChapter());
            }
        }
        comicViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.adapter.const
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f21884do.m25733break(comicViewHolder, view);
            }
        });
        comicViewHolder.itemView.setOnLongClickListener(new Cif(comicViewHolder));
        comicViewHolder.tvSearch.setVisibility(0);
        comicViewHolder.tvSearch.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.adapter.class
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f21882do.m25734catch(comicViewHolder, view);
            }
        });
        comicViewHolder.checkbox.setOnCheckedChangeListener(null);
        if (this.f21758this) {
            comicViewHolder.checkbox.setVisibility(0);
        } else {
            comicViewHolder.checkbox.setVisibility(8);
        }
        comicViewHolder.checkbox.setChecked(historyComicBean.isChecked());
        comicViewHolder.checkbox.setOnCheckedChangeListener(new Cfor(comicViewHolder));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public ComicViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ComicViewHolder(this.f21759try.inflate(R.layout.arg_res_0x7f0c009d, viewGroup, false));
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized List<HistoryComicBean> m25744else() {
        return this.f21750case;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<HistoryComicBean> list = this.f21750case;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: goto, reason: not valid java name */
    public HistoryComicBean m25745goto(int i) {
        return this.f21750case.get(i);
    }

    @Override // com.wsw.cospa.widget.itemtouch.ItemTouchHelperAdapter
    public void onItemDismiss(int i) {
        OnSlideRemoveListener onSlideRemoveListener;
        try {
            DatabaseHelper.m26016switch().m26045transient(this.f21750case.get(i).getNoteUrl());
            this.f21750case.remove(i);
            notifyItemRemoved(i);
            if (this.f21750case.size() > 0 || (onSlideRemoveListener = this.f21754for) == null) {
                return;
            }
            onSlideRemoveListener.onSlideRemove();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.wsw.cospa.widget.itemtouch.ItemTouchHelperAdapter
    public boolean onItemMove(int i, int i2) {
        return true;
    }

    public synchronized void refresh(List<HistoryComicBean> list) {
        int size = this.f21750case.size();
        this.f21750case.clear();
        notifyItemRangeRemoved(0, size);
        m25736final(list);
        this.f21750case.addAll(list);
        notifyDataSetChanged();
    }

    public void setItemSearchListener(OnItemSearchClickListener onItemSearchClickListener) {
        this.f21756if = onItemSearchClickListener;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f21755goto = onCheckedChangeListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21752do = onItemClickListener;
    }

    public void setOnLongItemClickListener(OnLongItemClickListener onLongItemClickListener) {
        this.f21753else = onLongItemClickListener;
    }

    public void setOnSlideRemoveListener(OnSlideRemoveListener onSlideRemoveListener) {
        this.f21754for = onSlideRemoveListener;
    }

    /* renamed from: super, reason: not valid java name */
    public void m25746super(ItemTouchHelper itemTouchHelper) {
        this.f21749break = itemTouchHelper;
    }

    /* renamed from: this, reason: not valid java name */
    public DefaultItemTouchHelpCallback.OnItemTouchCallbackListener m25747this() {
        return this.f21751catch;
    }

    /* renamed from: throw, reason: not valid java name */
    public synchronized void m25748throw(boolean z) {
        this.f21758this = z;
        notifyItemRangeChanged(0, this.f21750case.size());
    }
}
