package net.ricecode.similarity;

import android.support.v4.vy1;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public interface StringSimilarityService {
    vy1 findTop(List<String> list, String str);

    vy1 findTop(List<String> list, String str, Comparator<vy1> comparator);

    double score(String str, String str2);

    List<vy1> scoreAll(List<String> list, String str);
}
