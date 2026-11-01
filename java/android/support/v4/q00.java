package android.support.v4;

import java.util.ArrayList;
import java.util.Set;
import java.util.TreeSet;
import net.ricecode.similarity.SimilarityStrategy;

/* loaded from: classes3.dex */
public class q00 implements SimilarityStrategy {
    /* renamed from: do, reason: not valid java name */
    private Set<String> m6291do(String str) {
        ArrayList arrayList = new ArrayList();
        if (str.length() < 2) {
            arrayList.add(str);
        } else {
            for (int i = 1; i < str.length(); i++) {
                StringBuilder sb = new StringBuilder();
                sb.append(str.charAt(i - 1));
                sb.append(str.charAt(i));
                arrayList.add(sb.toString());
            }
        }
        return new TreeSet(arrayList);
    }

    @Override // net.ricecode.similarity.SimilarityStrategy
    public double score(String str, String str2) {
        Set<String> setM6291do = m6291do(str);
        Set<String> setM6291do2 = m6291do(str2);
        int size = setM6291do.size();
        int size2 = setM6291do2.size();
        setM6291do.retainAll(setM6291do2);
        double size3 = setM6291do.size();
        Double.isNaN(size3);
        double d = size + size2;
        Double.isNaN(d);
        return (size3 * 2.0d) / d;
    }
}
