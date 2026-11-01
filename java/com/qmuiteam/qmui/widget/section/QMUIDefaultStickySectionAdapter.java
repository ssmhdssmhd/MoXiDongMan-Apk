package com.qmuiteam.qmui.widget.section;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.qmuiteam.qmui.widget.section.QMUISection;
import com.qmuiteam.qmui.widget.section.QMUISection.Model;
import com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter;

/* loaded from: classes2.dex */
public abstract class QMUIDefaultStickySectionAdapter<H extends QMUISection.Model<H>, T extends QMUISection.Model<T>> extends QMUIStickySectionAdapter<H, T, QMUIStickySectionAdapter.ViewHolder> {
    @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter
    @NonNull
    /* renamed from: default, reason: not valid java name */
    public QMUIStickySectionAdapter.ViewHolder mo24155default(@NonNull ViewGroup viewGroup, int i) {
        return new QMUIStickySectionAdapter.ViewHolder(new View(viewGroup.getContext()));
    }

    @Override // com.qmuiteam.qmui.widget.section.QMUIStickySectionAdapter
    @NonNull
    /* renamed from: package, reason: not valid java name */
    public QMUIStickySectionAdapter.ViewHolder mo24156package(@NonNull ViewGroup viewGroup) {
        return new QMUIStickySectionAdapter.ViewHolder(new View(viewGroup.getContext()));
    }
}
