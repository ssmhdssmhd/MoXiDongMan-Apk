package android.support.v4;

import androidx.core.net.MailTo;
import com.google.zxing.client.result.Ctry;
import java.util.List;

/* loaded from: classes2.dex */
public final class wd2 extends xn1 {
    /* renamed from: import, reason: not valid java name */
    private static String[] m9121import(CharSequence charSequence, String str, boolean z) {
        List<List<String>> listM8836return = vd2.m8836return(charSequence, str, z, false);
        if (listM8836return == null || listM8836return.isEmpty()) {
            return null;
        }
        int size = listM8836return.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = listM8836return.get(i).get(0);
        }
        return strArr;
    }

    /* renamed from: public, reason: not valid java name */
    private static String m9122public(String str) {
        return str != null ? (str.startsWith(MailTo.MAILTO_SCHEME) || str.startsWith("MAILTO:")) ? str.substring(7) : str : str;
    }

    /* renamed from: while, reason: not valid java name */
    private static String m9123while(CharSequence charSequence, String str, boolean z) {
        List<String> listM8835public = vd2.m8835public(charSequence, str, z, false);
        if (listM8835public == null || listM8835public.isEmpty()) {
            return null;
        }
        return listM8835public.get(0);
    }

    @Override // android.support.v4.xn1
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public Ctry mo243catch(wn1 wn1Var) throws NumberFormatException {
        double d;
        String strM9548for = xn1.m9548for(wn1Var);
        if (strM9548for.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String strM9123while = m9123while("SUMMARY", strM9548for, true);
        String strM9123while2 = m9123while("DTSTART", strM9548for, true);
        if (strM9123while2 == null) {
            return null;
        }
        String strM9123while3 = m9123while("DTEND", strM9548for, true);
        String strM9123while4 = m9123while("DURATION", strM9548for, true);
        String strM9123while5 = m9123while("LOCATION", strM9548for, true);
        String strM9122public = m9122public(m9123while("ORGANIZER", strM9548for, true));
        String[] strArrM9121import = m9121import("ATTENDEE", strM9548for, true);
        if (strArrM9121import != null) {
            for (int i = 0; i < strArrM9121import.length; i++) {
                strArrM9121import[i] = m9122public(strArrM9121import[i]);
            }
        }
        String strM9123while6 = m9123while("DESCRIPTION", strM9548for, true);
        String strM9123while7 = m9123while("GEO", strM9548for, true);
        double d2 = Double.NaN;
        if (strM9123while7 == null) {
            d = Double.NaN;
        } else {
            int iIndexOf = strM9123while7.indexOf(59);
            if (iIndexOf < 0) {
                return null;
            }
            try {
                d2 = Double.parseDouble(strM9123while7.substring(0, iIndexOf));
                d = Double.parseDouble(strM9123while7.substring(iIndexOf + 1));
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new Ctry(strM9123while, strM9123while2, strM9123while3, strM9123while4, strM9123while5, strM9122public, strArrM9121import, strM9123while6, d2, d);
    }
}
