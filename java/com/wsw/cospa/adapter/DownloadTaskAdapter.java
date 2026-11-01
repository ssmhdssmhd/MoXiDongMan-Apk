package com.wsw.cospa.adapter;

import android.content.Context;
import android.support.v4.l22;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
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
import com.wsw.cospa.bean.Task;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import com.wsw.cospa.widget.scroller.FastScroller;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class DownloadTaskAdapter extends RecyclerView.Adapter<TaskViewHolder> implements FastScroller.SectionIndexer {

    /* renamed from: case, reason: not valid java name */
    private Context f21663case;

    /* renamed from: do, reason: not valid java name */
    private OnItemClickListener f21664do;

    /* renamed from: else, reason: not valid java name */
    private LayoutInflater f21665else;

    /* renamed from: for, reason: not valid java name */
    private OnCheckedChangeListener f21666for;

    /* renamed from: if, reason: not valid java name */
    private OnLongItemClickListener f21668if;

    /* renamed from: new, reason: not valid java name */
    private OnRemoveSuccessListener f21669new;

    /* renamed from: try, reason: not valid java name */
    private OnDownloadCompleteListener f21671try;

    /* renamed from: goto, reason: not valid java name */
    private boolean f21667goto = false;

    /* renamed from: this, reason: not valid java name */
    private List<Task> f21670this = new ArrayList();

    public interface OnCheckedChangeListener {
        void onCheckedChanged(int i, boolean z);
    }

    public interface OnDownloadCompleteListener {
        void onComplete();
    }

    public interface OnRemoveSuccessListener {
        void onRemoveSuccess();
    }

    public static class TaskViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f0900f1)
        public CheckBox checkbox;

        @BindView(R.id.arg_res_0x7f090226)
        public LinearLayout itemView;

        @BindView(R.id.arg_res_0x7f090420)
        public View taskLast;

        @BindView(R.id.arg_res_0x7f090421)
        public TextView taskPage;

        @BindView(R.id.arg_res_0x7f090422)
        public ProgressBar taskProgress;

        @BindView(R.id.arg_res_0x7f090424)
        public TextView taskState;

        @BindView(R.id.arg_res_0x7f090425)
        public TextView taskTitle;

        public TaskViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class TaskViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private TaskViewHolder f21672do;

        @UiThread
        public TaskViewHolder_ViewBinding(TaskViewHolder taskViewHolder, View view) {
            this.f21672do = taskViewHolder;
            taskViewHolder.taskTitle = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090425, "field 'taskTitle'", TextView.class);
            taskViewHolder.taskPage = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090421, "field 'taskPage'", TextView.class);
            taskViewHolder.taskState = (TextView) Cnew.m10373case(view, R.id.arg_res_0x7f090424, "field 'taskState'", TextView.class);
            taskViewHolder.taskProgress = (ProgressBar) Cnew.m10373case(view, R.id.arg_res_0x7f090422, "field 'taskProgress'", ProgressBar.class);
            taskViewHolder.taskLast = Cnew.m10381try(view, R.id.arg_res_0x7f090420, "field 'taskLast'");
            taskViewHolder.checkbox = (CheckBox) Cnew.m10373case(view, R.id.arg_res_0x7f0900f1, "field 'checkbox'", CheckBox.class);
            taskViewHolder.itemView = (LinearLayout) Cnew.m10373case(view, R.id.arg_res_0x7f090226, "field 'itemView'", LinearLayout.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            TaskViewHolder taskViewHolder = this.f21672do;
            if (taskViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21672do = null;
            taskViewHolder.taskTitle = null;
            taskViewHolder.taskPage = null;
            taskViewHolder.taskState = null;
            taskViewHolder.taskProgress = null;
            taskViewHolder.taskLast = null;
            taskViewHolder.checkbox = null;
            taskViewHolder.itemView = null;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.DownloadTaskAdapter$do, reason: invalid class name */
    public class Cdo implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ TaskViewHolder f21673do;

        public Cdo(TaskViewHolder taskViewHolder) {
            this.f21673do = taskViewHolder;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (DownloadTaskAdapter.this.f21666for != null) {
                DownloadTaskAdapter.this.f21666for.onCheckedChanged(this.f21673do.getAdapterPosition(), z);
            }
        }
    }

    public DownloadTaskAdapter(Context context) {
        this.f21663case = context;
        this.f21665else = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: class, reason: not valid java name */
    public /* synthetic */ void m25646class(TaskViewHolder taskViewHolder, Task task, View view) {
        if (this.f21667goto) {
            OnCheckedChangeListener onCheckedChangeListener = this.f21666for;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(taskViewHolder.getAdapterPosition(), !task.isChecked());
                return;
            }
            return;
        }
        OnItemClickListener onItemClickListener = this.f21664do;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(taskViewHolder.getAdapterPosition());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: const, reason: not valid java name */
    public /* synthetic */ boolean m25647const(TaskViewHolder taskViewHolder, View view) {
        OnLongItemClickListener onLongItemClickListener = this.f21668if;
        if (onLongItemClickListener == null) {
            return false;
        }
        onLongItemClickListener.onLongClick(view, taskViewHolder.getAdapterPosition());
        return false;
    }

    /* renamed from: this, reason: not valid java name */
    private String m25651this(Task task) {
        int state = task.getState();
        return state != 0 ? state != 2 ? state != 3 ? state != 4 ? state != 5 ? this.f21663case.getString(R.string.arg_res_0x7f110103) : task.getErrorMessage() : this.f21663case.getString(R.string.arg_res_0x7f110106) : this.f21663case.getString(R.string.arg_res_0x7f1100fb) : this.f21663case.getString(R.string.arg_res_0x7f110102) : this.f21663case.getString(R.string.arg_res_0x7f1100fe);
    }

    /* renamed from: break, reason: not valid java name */
    public synchronized void m25652break() {
        this.f21667goto = false;
        for (int i = 0; i < this.f21670this.size(); i++) {
            this.f21670this.get(i).setChecked(false);
        }
        notifyDataSetChanged();
    }

    /* renamed from: case, reason: not valid java name */
    public List<Task> m25653case() {
        return this.f21670this;
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m25654catch() {
        return this.f21667goto;
    }

    /* renamed from: else, reason: not valid java name */
    public synchronized Task m25655else(int i) {
        return this.f21670this.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull final TaskViewHolder taskViewHolder, int i) {
        final Task task = this.f21670this.get(taskViewHolder.getAdapterPosition());
        taskViewHolder.taskTitle.setText(task.getTitle());
        taskViewHolder.taskState.setText(m25651this(task));
        int progress = task.getProgress();
        int max = task.getMax();
        taskViewHolder.taskPage.setText(l22.m4552break(progress, max));
        taskViewHolder.taskProgress.setMax(max);
        taskViewHolder.taskProgress.setProgress(progress);
        taskViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.adapter.this
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f21900do.m25646class(taskViewHolder, task, view);
            }
        });
        taskViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.wsw.cospa.adapter.break
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f21872do.m25647const(taskViewHolder, view);
            }
        });
        taskViewHolder.checkbox.setOnCheckedChangeListener(new Cdo(taskViewHolder));
        if (this.f21667goto) {
            taskViewHolder.checkbox.setVisibility(0);
        } else {
            taskViewHolder.checkbox.setVisibility(8);
        }
        if (task.isChecked()) {
            taskViewHolder.checkbox.setChecked(true);
        } else {
            taskViewHolder.checkbox.setChecked(false);
        }
        m25662try();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<Task> list = this.f21670this;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // com.wsw.cospa.widget.scroller.FastScroller.SectionIndexer
    public CharSequence getSectionText(int i) {
        List<Task> list = this.f21670this;
        return (list == null || list.isEmpty()) ? "" : String.valueOf(this.f21670this.get(i).getDurChapterIndex());
    }

    /* renamed from: goto, reason: not valid java name */
    public synchronized int m25657goto(long j) {
        int size = this.f21670this.size();
        for (int i = 0; i != size; i++) {
            if (this.f21670this.get(i).getId().longValue() == j) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: import, reason: not valid java name */
    public synchronized void m25658import() {
        this.f21667goto = true;
        notifyDataSetChanged();
    }

    /* renamed from: new, reason: not valid java name */
    public synchronized void m25659new(int i, Collection<Task> collection) {
        this.f21670this.addAll(i, collection);
        notifyItemInserted(i);
        notifyItemRangeChanged(i, this.f21670this.size() - i);
    }

    public synchronized void refresh(List<Task> list) {
        int size = this.f21670this.size();
        this.f21670this.clear();
        notifyItemRangeRemoved(0, size);
        this.f21670this.addAll(list);
        notifyDataSetChanged();
        notifyItemRangeChanged(0, this.f21670this.size());
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.f21666for = onCheckedChangeListener;
    }

    public void setOnDownloadCompleteListener(OnDownloadCompleteListener onDownloadCompleteListener) {
        this.f21671try = onDownloadCompleteListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21664do = onItemClickListener;
    }

    public void setOnLongItemClickListener(OnLongItemClickListener onLongItemClickListener) {
        this.f21668if = onLongItemClickListener;
    }

    public void setOnRemoveSuccessListener(OnRemoveSuccessListener onRemoveSuccessListener) {
        this.f21669new = onRemoveSuccessListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public TaskViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new TaskViewHolder(this.f21665else.inflate(R.layout.arg_res_0x7f0c0093, (ViewGroup) null, false));
    }

    /* renamed from: throw, reason: not valid java name */
    public synchronized void m25661throw(List<Long> list) {
        if (this.f21669new != null && list.size() == this.f21670this.size()) {
            this.f21669new.onRemoveSuccess();
        }
        HashSet hashSet = new HashSet(list);
        Iterator<Task> it = this.f21670this.iterator();
        while (it.hasNext()) {
            if (hashSet.contains(it.next().getId())) {
                it.remove();
            }
        }
        notifyDataSetChanged();
    }

    /* renamed from: try, reason: not valid java name */
    public void m25662try() {
        OnDownloadCompleteListener onDownloadCompleteListener;
        ArrayList arrayList = new ArrayList();
        for (Task task : this.f21670this) {
            if (task.isFinish() || task.getState() == 0) {
                arrayList.add(task);
            }
        }
        boolean z = false;
        if (arrayList.size() >= this.f21670this.size() && arrayList.size() >= this.f21670this.size()) {
            z = true;
        }
        if (!z || (onDownloadCompleteListener = this.f21671try) == null) {
            return;
        }
        onDownloadCompleteListener.onComplete();
    }

    /* renamed from: while, reason: not valid java name */
    public void m25663while() {
        Collections.reverse(this.f21670this);
        notifyDataSetChanged();
    }
}
