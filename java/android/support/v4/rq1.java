package android.support.v4;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes2.dex */
public final class rq1 extends xn1 {
    /* renamed from: while, reason: not valid java name */
    private static void m7080while(Collection<String> collection, Collection<String> collection2, String str) {
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            collection.add(str);
            collection2.add(null);
        } else {
            collection.add(str.substring(0, iIndexOf));
            String strSubstring = str.substring(iIndexOf + 1);
            collection2.add(strSubstring.startsWith("via=") ? strSubstring.substring(4) : null);
        }
    }

    @Override // android.support.v4.xn1
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public sq1 mo243catch(wn1 wn1Var) {
        String str;
        String strM9548for = xn1.m9548for(wn1Var);
        String str2 = null;
        if (!strM9548for.startsWith("sms:") && !strM9548for.startsWith("SMS:") && !strM9548for.startsWith("mms:") && !strM9548for.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> mapM9544const = xn1.m9544const(strM9548for);
        boolean z = false;
        if (mapM9544const == null || mapM9544const.isEmpty()) {
            str = null;
        } else {
            str2 = mapM9544const.get("subject");
            str = mapM9544const.get("body");
            z = true;
        }
        int iIndexOf = strM9548for.indexOf(63, 4);
        String strSubstring = (iIndexOf < 0 || !z) ? strM9548for.substring(4) : strM9548for.substring(4, iIndexOf);
        int i = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i2 = i + 1;
            int iIndexOf2 = strSubstring.indexOf(44, i2);
            if (iIndexOf2 <= i) {
                m7080while(arrayList, arrayList2, strSubstring.substring(i2));
                return new sq1((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
            m7080while(arrayList, arrayList2, strSubstring.substring(i2, iIndexOf2));
            i = iIndexOf2;
        }
    }
}
