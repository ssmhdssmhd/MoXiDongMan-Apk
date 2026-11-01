package org.seimicrawler.xpath.core;

import android.support.v4.dj2;
import org.jsoup.select.Elements;

/* loaded from: classes3.dex */
public interface AxisSelector {
    dj2 apply(Elements elements);

    String name();
}
