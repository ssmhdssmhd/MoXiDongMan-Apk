package com.bumptech.glide.manager;

import androidx.annotation.NonNull;
import com.bumptech.glide.Cgoto;
import java.util.Set;

/* loaded from: classes.dex */
public interface RequestManagerTreeNode {
    @NonNull
    Set<Cgoto> getDescendants();
}
