package android.support.v4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import net.ricecode.similarity.SimilarityStrategy;
import net.ricecode.similarity.StringSimilarityService;

/* loaded from: classes3.dex */
public class i22 implements StringSimilarityService {

    /* renamed from: do, reason: not valid java name */
    private SimilarityStrategy f2605do;

    public i22(SimilarityStrategy similarityStrategy) {
        this.f2605do = similarityStrategy;
    }

    @Override // net.ricecode.similarity.StringSimilarityService
    public vy1 findTop(List<String> list, String str) {
        return findTop(list, str, new lz());
    }

    @Override // net.ricecode.similarity.StringSimilarityService
    public double score(String str, String str2) {
        return this.f2605do.score(str, str2);
    }

    @Override // net.ricecode.similarity.StringSimilarityService
    public List<vy1> scoreAll(List<String> list, String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            arrayList.add(new vy1(str2, this.f2605do.score(str2, str)));
        }
        return arrayList;
    }

    @Override // net.ricecode.similarity.StringSimilarityService
    public vy1 findTop(List<String> list, String str, Comparator<vy1> comparator) {
        if (list.size() == 0) {
            return null;
        }
        List<vy1> listScoreAll = scoreAll(list, str);
        Collections.sort(listScoreAll, comparator);
        return listScoreAll.get(0);
    }
}
