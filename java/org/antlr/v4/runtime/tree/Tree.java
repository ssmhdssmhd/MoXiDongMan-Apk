package org.antlr.v4.runtime.tree;

/* loaded from: classes3.dex */
public interface Tree {
    Tree getChild(int i);

    int getChildCount();

    Tree getParent();

    Object getPayload();

    String toStringTree();
}
