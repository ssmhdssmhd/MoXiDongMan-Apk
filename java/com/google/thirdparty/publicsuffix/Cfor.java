package com.google.thirdparty.publicsuffix;

import android.support.v4.ki0;
import com.google.common.base.Cfinal;
import com.google.common.collect.x0;
import com.google.common.collect.x1;
import java.util.List;

@ki0
/* renamed from: com.google.thirdparty.publicsuffix.for, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cfor {

    /* renamed from: do, reason: not valid java name */
    private static final Cfinal f17391do = Cfinal.m15071throw("");

    /* renamed from: do, reason: not valid java name */
    private static int m21723do(List<CharSequence> list, CharSequence charSequence, int i, x0.Cif<String, Cif> cif) {
        int length = charSequence.length();
        int i2 = i;
        char cCharAt = 0;
        while (i2 < length && (cCharAt = charSequence.charAt(i2)) != '&' && cCharAt != '?' && cCharAt != '!' && cCharAt != ':' && cCharAt != ',') {
            i2++;
        }
        list.add(0, m21724for(charSequence.subSequence(i, i2)));
        if (cCharAt == '!' || cCharAt == '?' || cCharAt == ':' || cCharAt == ',') {
            String strM15073catch = f17391do.m15073catch(list);
            if (strM15073catch.length() > 0) {
                cif.mo15869new(strM15073catch, Cif.fromCode(cCharAt));
            }
        }
        int iM21723do = i2 + 1;
        if (cCharAt != '?' && cCharAt != ',') {
            while (iM21723do < length) {
                iM21723do += m21723do(list, charSequence, iM21723do, cif);
                if (charSequence.charAt(iM21723do) == '?' || charSequence.charAt(iM21723do) == ',') {
                    iM21723do++;
                    break;
                }
            }
        }
        list.remove(0);
        return iM21723do - i;
    }

    /* renamed from: for, reason: not valid java name */
    private static CharSequence m21724for(CharSequence charSequence) {
        return new StringBuilder(charSequence).reverse();
    }

    /* renamed from: if, reason: not valid java name */
    public static x0<String, Cif> m21725if(CharSequence charSequence) {
        x0.Cif cifBuilder = x0.builder();
        int length = charSequence.length();
        int iM21723do = 0;
        while (iM21723do < length) {
            iM21723do += m21723do(x1.m16497default(), charSequence, iM21723do, cifBuilder);
        }
        return cifBuilder.mo15865do();
    }
}
