package com.wsw.cospa.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Cnew;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.RipeFile;
import com.wsw.cospa.listener.OnItemClickListener;
import com.wsw.cospa.listener.OnLongItemClickListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class LocalComicAdapter extends RecyclerView.Adapter<LocalFileViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private Context f21768do;

    /* renamed from: for, reason: not valid java name */
    private LayoutInflater f21769for;

    /* renamed from: if, reason: not valid java name */
    private List<RipeFile> f21770if = new ArrayList();

    /* renamed from: new, reason: not valid java name */
    private OnItemClickListener f21771new;

    /* renamed from: try, reason: not valid java name */
    private OnLongItemClickListener f21772try;

    public class LocalFileViewHolder extends RecyclerView.ViewHolder {

        @BindView(R.id.arg_res_0x7f090241)
        public AppCompatImageView ivFileIcon;

        @BindView(R.id.arg_res_0x7f090486)
        public AppCompatTextView tvFileName;

        @BindView(R.id.arg_res_0x7f090487)
        public AppCompatTextView tvFilePath;

        public LocalFileViewHolder(View view) throws NoSuchMethodException, SecurityException {
            super(view);
            ButterKnife.m10352case(this, view);
        }
    }

    public class LocalFileViewHolder_ViewBinding implements Unbinder {

        /* renamed from: do, reason: not valid java name */
        private LocalFileViewHolder f21774do;

        @UiThread
        public LocalFileViewHolder_ViewBinding(LocalFileViewHolder localFileViewHolder, View view) {
            this.f21774do = localFileViewHolder;
            localFileViewHolder.ivFileIcon = (AppCompatImageView) Cnew.m10373case(view, R.id.arg_res_0x7f090241, "field 'ivFileIcon'", AppCompatImageView.class);
            localFileViewHolder.tvFileName = (AppCompatTextView) Cnew.m10373case(view, R.id.arg_res_0x7f090486, "field 'tvFileName'", AppCompatTextView.class);
            localFileViewHolder.tvFilePath = (AppCompatTextView) Cnew.m10373case(view, R.id.arg_res_0x7f090487, "field 'tvFilePath'", AppCompatTextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void unbind() {
            LocalFileViewHolder localFileViewHolder = this.f21774do;
            if (localFileViewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.f21774do = null;
            localFileViewHolder.ivFileIcon = null;
            localFileViewHolder.tvFileName = null;
            localFileViewHolder.tvFilePath = null;
        }
    }

    public LocalComicAdapter(Context context) {
        this.f21768do = context;
        this.f21769for = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBindViewHolder$0(int i, View view) {
        OnItemClickListener onItemClickListener = this.f21771new;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public /* synthetic */ boolean m25751new(int i, View view) {
        OnLongItemClickListener onLongItemClickListener = this.f21772try;
        if (onLongItemClickListener == null) {
            return false;
        }
        onLongItemClickListener.onLongClick(view, i);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public LocalFileViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new LocalFileViewHolder(this.f21769for.inflate(R.layout.arg_res_0x7f0c00ac, viewGroup, false));
    }

    /* renamed from: for, reason: not valid java name */
    public RipeFile m25753for(int i) {
        return this.f21770if.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<RipeFile> list = this.f21770if;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    public synchronized void refresh(List<RipeFile> list) {
        int size = this.f21770if.size();
        this.f21770if.clear();
        notifyItemRangeRemoved(0, size);
        this.f21770if.addAll(list);
        notifyDataSetChanged();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f21771new = onItemClickListener;
    }

    public void setOnLongItemClickListener(OnLongItemClickListener onLongItemClickListener) {
        this.f21772try = onLongItemClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull LocalFileViewHolder localFileViewHolder, final int i) {
        RipeFile ripeFile = this.f21770if.get(i);
        localFileViewHolder.tvFileName.setText(ripeFile.getName());
        localFileViewHolder.tvFilePath.setText(ripeFile.getPath());
        localFileViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.ot0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f4736do.lambda$onBindViewHolder$0(i, view);
            }
        });
        localFileViewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: android.support.v4.pt0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f5190do.m25751new(i, view);
            }
        });
    }
}
