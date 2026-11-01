package com.wsw.cospa.widget;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.Space;
import androidx.recyclerview.widget.RecyclerView;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.ListTree;
import com.wsw.cospa.widget.ListTreeAdapter.ListTreeViewHolder;

/* loaded from: classes2.dex */
public abstract class ListTreeAdapter<VH extends ListTreeViewHolder> extends RecyclerView.Adapter<VH> {
    private Drawable collapseIcon;
    private Drawable expandIcon;
    public ListTree tree;

    public class ListTreeViewHolder extends RecyclerView.ViewHolder {
        public ImageView arrowIcon;
        public ViewGroup containerView;
        public Space headSpace;

        public ListTreeViewHolder(View view) {
            super(view);
        }

        public void initView() {
            this.containerView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.widget.ListTreeAdapter.ListTreeViewHolder.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ListTree.TreeNode nodeByPlaneIndex = ListTreeAdapter.this.tree.getNodeByPlaneIndex(ListTreeViewHolder.this.getAdapterPosition());
                    if (nodeByPlaneIndex.isShowExpandIcon()) {
                        int nodePlaneIndex = ListTreeAdapter.this.tree.getNodePlaneIndex(nodeByPlaneIndex);
                        if (nodeByPlaneIndex.isExpand()) {
                            int iCollapseNode = ListTreeAdapter.this.tree.collapseNode(nodePlaneIndex);
                            ListTreeAdapter.this.notifyItemChanged(nodePlaneIndex);
                            ListTreeAdapter.this.notifyItemRangeRemoved(nodePlaneIndex + 1, iCollapseNode);
                        } else {
                            int iExpandNode = ListTreeAdapter.this.tree.expandNode(nodePlaneIndex);
                            ListTreeAdapter.this.notifyItemChanged(nodePlaneIndex);
                            ListTreeAdapter.this.notifyItemRangeInserted(nodePlaneIndex + 1, iExpandNode);
                        }
                    }
                }
            });
        }
    }

    public ListTreeAdapter(ListTree listTree) {
        this.expandIcon = null;
        this.collapseIcon = null;
        this.tree = listTree;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.tree.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return this.tree.getNodeByPlaneIndex(i).getLayoutResId();
    }

    public void notifyTreeItemInserted(ListTree.TreeNode treeNode, ListTree.TreeNode treeNode2) {
        int nodePlaneIndex = this.tree.getNodePlaneIndex(treeNode);
        if (treeNode.isExpand()) {
            super.notifyItemInserted(this.tree.getNodePlaneIndex(treeNode2));
            return;
        }
        this.tree.expandNode(nodePlaneIndex);
        super.notifyItemChanged(nodePlaneIndex);
        notifyItemRangeInserted(nodePlaneIndex + 1, treeNode.getExpandDescendantCount());
    }

    public abstract void onBindNodeViewHolder(VH vh, int i);

    public abstract VH onCreateNodeView(ViewGroup viewGroup, int i);

    public void refresh(ListTree listTree) {
        this.tree = listTree;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(VH vh, int i) {
        ListTree.TreeNode nodeByPlaneIndex = this.tree.getNodeByPlaneIndex(i);
        if (!nodeByPlaneIndex.isShowExpandIcon()) {
            vh.arrowIcon.setImageBitmap(null);
        } else if (nodeByPlaneIndex.isExpand()) {
            vh.arrowIcon.setImageDrawable(this.collapseIcon);
        } else {
            vh.arrowIcon.setImageDrawable(this.expandIcon);
        }
        vh.headSpace.getLayoutParams().width = this.tree.getNodeLayerLevel(nodeByPlaneIndex) * 25;
        onBindNodeViewHolder(vh, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (this.expandIcon == null) {
            this.expandIcon = viewGroup.getContext().getResources().getDrawable(R.drawable.arg_res_0x7f0800d9);
        }
        if (this.collapseIcon == null) {
            this.collapseIcon = viewGroup.getContext().getResources().getDrawable(R.drawable.arg_res_0x7f0800c8);
        }
        ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.arg_res_0x7f0c010a, viewGroup, false);
        ImageView imageView = (ImageView) viewGroup2.findViewById(R.id.arg_res_0x7f090267);
        viewGroup.getMeasuredWidth();
        VH vh = (VH) onCreateNodeView(viewGroup2, i);
        if (vh == null) {
            return null;
        }
        vh.containerView = viewGroup2;
        vh.arrowIcon = imageView;
        vh.headSpace = (Space) viewGroup2.findViewById(R.id.arg_res_0x7f090268);
        vh.initView();
        return vh;
    }

    public ListTreeAdapter(ListTree listTree, Drawable drawable, Drawable drawable2) {
        this.expandIcon = null;
        this.collapseIcon = null;
        this.tree = listTree;
        this.expandIcon = drawable;
        this.collapseIcon = drawable2;
    }
}
