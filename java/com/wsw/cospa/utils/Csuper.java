package com.wsw.cospa.utils;

import androidx.annotation.NonNull;
import com.google.common.cache.Cfor;
import com.google.common.cache.LoadingCache;
import com.wsw.cospa.R;
import com.wsw.cospa.adapter.ChapterListTreeAdapter;
import com.wsw.cospa.bean.ChapterListBean;
import com.wsw.cospa.widget.ListTree;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* renamed from: com.wsw.cospa.utils.super, reason: invalid class name */
/* loaded from: classes2.dex */
public class Csuper {

    /* renamed from: do, reason: not valid java name */
    private List<ChapterListBean> f22731do;

    /* renamed from: for, reason: not valid java name */
    private final long f22732for;

    /* renamed from: if, reason: not valid java name */
    private LoadingCache<String, ListTree.TreeNode> f22733if;

    /* renamed from: new, reason: not valid java name */
    private final int f22734new;

    /* renamed from: com.wsw.cospa.utils.super$if, reason: invalid class name */
    public class Cif extends Cfor<String, ListTree.TreeNode> {
        private Cif() {
        }

        @Override // com.google.common.cache.Cfor
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public ListTree.TreeNode load(@NonNull String str) throws Exception {
            return new ListTree().addNode(null, "null", R.layout.arg_res_0x7f0c0059);
        }
    }

    public Csuper(List<ChapterListBean> list) {
        ArrayList arrayList = new ArrayList();
        this.f22731do = arrayList;
        this.f22732for = 209715200L;
        this.f22734new = 1000;
        arrayList.clear();
        this.f22731do.addAll(list);
        if (this.f22733if != null) {
            m27077do();
        }
        this.f22733if = com.google.common.cache.Cif.m15296abstract().m15330throws(1000).m15319package(209715200L).m15302case(12L, TimeUnit.HOURS).m15313if(new Cif());
    }

    /* renamed from: do, reason: not valid java name */
    public void m27077do() {
        this.f22733if.invalidateAll();
    }

    /* renamed from: for, reason: not valid java name */
    public ListTree.TreeNode m27078for(String str) {
        try {
            ListTree.TreeNode treeNode = this.f22733if.get(str);
            if (treeNode.getData().toString().equals("null")) {
                return null;
            }
            return treeNode;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("");
            sb.append(e);
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m27079if(String str) {
        this.f22733if.invalidate(str);
    }

    /* renamed from: new, reason: not valid java name */
    public ListTree m27080new() throws ExecutionException {
        ListTree listTree = new ListTree();
        for (ChapterListBean chapterListBean : this.f22731do) {
            String parentIdString = chapterListBean.getParentIdString();
            String parentNameString = chapterListBean.getParentNameString();
            if (parentIdString != null) {
                String[] strArrSplit = parentIdString.split(">>");
                String[] strArrSplit2 = new String[0];
                if (parentNameString != null) {
                    strArrSplit2 = parentNameString.split(">>");
                }
                int i = 0;
                for (String str : strArrSplit) {
                    if (m27078for(str) == null) {
                        m27081try(str, i == 0 ? listTree.addNode(null, strArrSplit2[i] != null ? strArrSplit2[i] : "", R.layout.arg_res_0x7f0c0059) : listTree.addNode(this.f22733if.get(strArrSplit[i - 1]), strArrSplit2[i] != null ? strArrSplit2[i] : "", R.layout.arg_res_0x7f0c0059));
                    }
                    i++;
                }
                ChapterListTreeAdapter.Cif cif = new ChapterListTreeAdapter.Cif(chapterListBean);
                if (i == 0) {
                    listTree.addNode(null, cif, R.layout.arg_res_0x7f0c0058).setShowExpandIcon(false);
                } else {
                    listTree.addNode(this.f22733if.get(strArrSplit[i - 1]), cif, R.layout.arg_res_0x7f0c0058).setShowExpandIcon(false);
                }
            }
        }
        return listTree;
    }

    /* renamed from: try, reason: not valid java name */
    public void m27081try(String str, ListTree.TreeNode treeNode) {
        this.f22733if.put(str, treeNode);
    }
}
