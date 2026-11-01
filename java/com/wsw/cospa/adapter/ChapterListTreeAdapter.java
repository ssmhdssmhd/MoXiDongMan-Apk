package com.wsw.cospa.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.wsw.cospa.R;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.utils.Csuper;
import com.wsw.cospa.widget.ListTree;
import com.wsw.cospa.widget.ListTreeAdapter;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* loaded from: classes2.dex */
public class ChapterListTreeAdapter extends ListTreeAdapter<Cdo> {

    /* renamed from: case, reason: not valid java name */
    private Csuper f21612case;

    /* renamed from: do, reason: not valid java name */
    private ListTree.TreeNode f21613do;

    /* renamed from: for, reason: not valid java name */
    private Context f21614for;

    /* renamed from: if, reason: not valid java name */
    private onClickCallBack f21615if;

    /* renamed from: new, reason: not valid java name */
    private ListTree f21616new;

    /* renamed from: try, reason: not valid java name */
    private ChapterListBean f21617try;

    /* renamed from: com.wsw.cospa.adapter.ChapterListTreeAdapter$do, reason: invalid class name */
    public class Cdo extends ListTreeAdapter.ListTreeViewHolder {
        public Cdo(View view) {
            super(view);
        }
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterListTreeAdapter$for, reason: invalid class name */
    public class Cfor extends Cdo {

        /* renamed from: if, reason: not valid java name */
        public TextView f21620if;

        public Cfor(View view) {
            super(view);
            TextView textView = (TextView) view.findViewById(R.id.arg_res_0x7f090468);
            this.f21620if = textView;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.adapter.for
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f21894do.m25559if(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m25559if(View view) {
            int adapterPosition = getAdapterPosition();
            ChapterListTreeAdapter chapterListTreeAdapter = ChapterListTreeAdapter.this;
            chapterListTreeAdapter.f21613do = chapterListTreeAdapter.f21616new.getNodeByPlaneIndex(adapterPosition);
            ChapterListTreeAdapter.this.f21615if.tvChapterOnClick(((Cif) ChapterListTreeAdapter.this.f21613do.getData()).m25562if(), view, adapterPosition);
        }
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterListTreeAdapter$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private ChapterListBean f21621do;

        public Cif(ChapterListBean chapterListBean) {
            this.f21621do = chapterListBean;
        }

        /* renamed from: for, reason: not valid java name */
        public String m25561for() {
            return this.f21621do.getDurChapterName();
        }

        /* renamed from: if, reason: not valid java name */
        public ChapterListBean m25562if() {
            return this.f21621do;
        }

        /* renamed from: new, reason: not valid java name */
        public void m25563new(ChapterListBean chapterListBean) {
            this.f21621do = chapterListBean;
        }
    }

    /* renamed from: com.wsw.cospa.adapter.ChapterListTreeAdapter$new, reason: invalid class name */
    public class Cnew extends Cdo {

        /* renamed from: if, reason: not valid java name */
        public TextView f21623if;

        public Cnew(View view) {
            super(view);
            TextView textView = (TextView) view.findViewById(R.id.arg_res_0x7f090469);
            this.f21623if = textView;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.adapter.new
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f21899do.m25565if(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public /* synthetic */ void m25565if(View view) {
            int adapterPosition = getAdapterPosition();
            ChapterListTreeAdapter chapterListTreeAdapter = ChapterListTreeAdapter.this;
            chapterListTreeAdapter.f21613do = chapterListTreeAdapter.f21616new.getNodeByPlaneIndex(adapterPosition);
            int nodePlaneIndex = ChapterListTreeAdapter.this.f21616new.getNodePlaneIndex(ChapterListTreeAdapter.this.f21613do);
            if (ChapterListTreeAdapter.this.f21613do.isExpand()) {
                int iCollapseNode = ChapterListTreeAdapter.this.f21616new.collapseNode(nodePlaneIndex);
                ChapterListTreeAdapter.this.notifyItemChanged(nodePlaneIndex);
                ChapterListTreeAdapter.this.notifyItemRangeRemoved(nodePlaneIndex + 1, iCollapseNode);
            } else {
                int iExpandNode = ChapterListTreeAdapter.this.f21616new.expandNode(nodePlaneIndex);
                ChapterListTreeAdapter.this.notifyItemChanged(nodePlaneIndex);
                ChapterListTreeAdapter.this.notifyItemRangeInserted(nodePlaneIndex + 1, iExpandNode);
            }
        }
    }

    public interface onClickCallBack {
        void tvChapterOnClick(ChapterListBean chapterListBean, View view, int i);
    }

    public ChapterListTreeAdapter(Context context, ListTree listTree) {
        super(listTree);
        this.f21614for = context;
        this.f21616new = listTree;
    }

    /* renamed from: break, reason: not valid java name */
    public void m25552break(ChapterListBean chapterListBean) {
        this.f21617try = chapterListBean;
        notifyDataSetChanged();
    }

    /* renamed from: case, reason: not valid java name */
    public ListTree.TreeNode m25553case() {
        return this.f21613do;
    }

    @Override // com.wsw.cospa.widget.ListTreeAdapter
    /* renamed from: else, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindNodeViewHolder(Cdo cdo, int i) {
        View view = cdo.itemView;
        ListTree.TreeNode nodeByPlaneIndex = this.f21616new.getNodeByPlaneIndex(i);
        if (nodeByPlaneIndex.getLayoutResId() == R.layout.arg_res_0x7f0c0059) {
            ((Cnew) cdo).f21623if.setText((String) nodeByPlaneIndex.getData());
            return;
        }
        if (nodeByPlaneIndex.getLayoutResId() == R.layout.arg_res_0x7f0c0058) {
            Cif cif = (Cif) nodeByPlaneIndex.getData();
            Cfor cfor = (Cfor) cdo;
            cfor.f21620if.setText(cif.m25561for());
            ChapterListBean chapterListBean = this.f21617try;
            if (chapterListBean != null) {
                if (chapterListBean.equals(cif.f21621do)) {
                    cfor.f21620if.setBackground(this.f21614for.getResources().getDrawable(R.drawable.arg_res_0x7f080073));
                    cfor.f21620if.setTextColor(this.f21614for.getResources().getColor(R.color.arg_res_0x7f060380));
                } else {
                    cfor.f21620if.setBackground(this.f21614for.getResources().getDrawable(R.drawable.arg_res_0x7f08006b));
                    cfor.f21620if.setTextColor(this.f21614for.getResources().getColor(R.color.arg_res_0x7f060117));
                }
            }
        }
    }

    @Override // com.wsw.cospa.widget.ListTreeAdapter
    /* renamed from: goto, reason: not valid java name and merged with bridge method [inline-methods] */
    public Cdo onCreateNodeView(ViewGroup viewGroup, int i) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        if (i == R.layout.arg_res_0x7f0c0059) {
            return new Cnew(layoutInflaterFrom.inflate(i, viewGroup, true));
        }
        if (i == R.layout.arg_res_0x7f0c0058) {
            return new Cfor(layoutInflaterFrom.inflate(i, viewGroup, true));
        }
        return null;
    }

    public synchronized void refresh(List<ChapterListBean> list) {
        Csuper csuper = new Csuper(list);
        this.f21612case = csuper;
        try {
            ListTree listTreeM27080new = csuper.m27080new();
            this.f21616new = listTreeM27080new;
            refresh(listTreeM27080new);
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
        notifyDataSetChanged();
    }

    /* renamed from: this, reason: not valid java name */
    public void m25556this(onClickCallBack onclickcallback) {
        this.f21615if = onclickcallback;
    }

    /* renamed from: try, reason: not valid java name */
    public onClickCallBack m25557try() {
        return this.f21615if;
    }
}
