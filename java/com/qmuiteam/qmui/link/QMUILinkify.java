package com.qmuiteam.qmui.link;

import android.R;
import android.content.res.ColorStateList;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.util.Patterns;
import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.net.MailTo;
import com.qmuiteam.qmui.span.QMUIOnSpanClickListener;
import com.umeng.analytics.pro.ak;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class QMUILinkify {

    /* renamed from: case, reason: not valid java name */
    public static final int f19073case = 4;

    /* renamed from: else, reason: not valid java name */
    public static final int f19078else = 8;

    /* renamed from: for, reason: not valid java name */
    private static final String f19080for = "[$]";

    /* renamed from: goto, reason: not valid java name */
    public static final int f19081goto = 15;

    /* renamed from: new, reason: not valid java name */
    public static final int f19083new = 1;

    /* renamed from: super, reason: not valid java name */
    private static final int f19084super = 21;

    /* renamed from: this, reason: not valid java name */
    private static final int f19085this = 7;

    /* renamed from: try, reason: not valid java name */
    public static final int f19086try = 2;

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f19077do = Pattern.compile("\\+?(\\d{2,8}([- ]?\\d{3,8}){2,6}|\\d{5,20})");

    /* renamed from: if, reason: not valid java name */
    public static final Pattern f19082if = Pattern.compile("^\\d+(\\.\\d+)+(-\\d+)*$");

    /* renamed from: break, reason: not valid java name */
    public static final WebUrlMatcher f19072break = new Cdo();

    /* renamed from: catch, reason: not valid java name */
    private static WebUrlMatcher f19074catch = new Cif();

    /* renamed from: class, reason: not valid java name */
    public static final MatchFilter f19075class = new Cfor();

    /* renamed from: const, reason: not valid java name */
    public static final MatchFilter f19076const = new Cnew();

    /* renamed from: final, reason: not valid java name */
    public static final TransformFilter f19079final = new Ctry();

    public interface MatchFilter {
        boolean acceptMatch(CharSequence charSequence, int i, int i2);
    }

    public static abstract class StyleableURLSpan extends URLSpan implements ITouchableSpan {

        /* renamed from: do, reason: not valid java name */
        public boolean f19089do;

        /* renamed from: for, reason: not valid java name */
        public QMUIOnSpanClickListener f19090for;

        /* renamed from: if, reason: not valid java name */
        public String f19091if;

        public StyleableURLSpan(String str, QMUIOnSpanClickListener qMUIOnSpanClickListener) {
            super(str);
            this.f19089do = false;
            this.f19091if = str;
            this.f19090for = qMUIOnSpanClickListener;
        }

        @Override // android.text.style.URLSpan, android.text.style.ClickableSpan, com.qmuiteam.qmui.link.ITouchableSpan
        public void onClick(View view) {
            if (this.f19090for.onSpanClick(this.f19091if)) {
                return;
            }
            super.onClick(view);
        }

        @Override // com.qmuiteam.qmui.link.ITouchableSpan
        public void setPressed(boolean z) {
            this.f19089do = z;
        }
    }

    public interface TransformFilter {
        String transformUrl(Matcher matcher, String str);
    }

    public interface WebUrlMatcher {
        Pattern getPattern();
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$case, reason: invalid class name */
    public static class Ccase implements Comparator<Celse> {
        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public final int compare(Celse celse, Celse celse2) {
            int i;
            int i2;
            int i3 = celse.f19094if;
            int i4 = celse2.f19094if;
            if (i3 < i4) {
                return -1;
            }
            if (i3 <= i4 && (i = celse.f19093for) >= (i2 = celse2.f19093for)) {
                return i > i2 ? -1 : 0;
            }
            return 1;
        }
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$do, reason: invalid class name */
    public static class Cdo implements WebUrlMatcher {
        @Override // com.qmuiteam.qmui.link.QMUILinkify.WebUrlMatcher
        public Pattern getPattern() {
            return Cgoto.f19099goto;
        }
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: do, reason: not valid java name */
        public String f19092do;

        /* renamed from: for, reason: not valid java name */
        public int f19093for;

        /* renamed from: if, reason: not valid java name */
        public int f19094if;

        private Celse() {
        }

        public /* synthetic */ Celse(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$for, reason: invalid class name */
    public static class Cfor implements MatchFilter {
        @Override // com.qmuiteam.qmui.link.QMUILinkify.MatchFilter
        public final boolean acceptMatch(CharSequence charSequence, int i, int i2) {
            for (int i3 = i; i3 < i2; i3++) {
                try {
                    if (charSequence.charAt(i3) > 256) {
                        return false;
                    }
                } catch (Exception unused) {
                }
            }
            try {
                char cCharAt = charSequence.charAt(i2);
                if (cCharAt < 256 && QMUILinkify.f19080for.indexOf(cCharAt) < 0) {
                    if (!Character.isWhitespace(cCharAt)) {
                        return false;
                    }
                }
            } catch (Exception unused2) {
            }
            if (i == 0) {
                return true;
            }
            return charSequence.charAt(i - 1) != '@';
        }
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$goto, reason: invalid class name */
    public static class Cgoto {

        /* renamed from: case, reason: not valid java name */
        private static final String f19095case = "\\:\\d{1,5}";

        /* renamed from: do, reason: not valid java name */
        private static final String[] f19096do = {"top", "com", "net", "org", "edu", "gov", "int", "mil", "tel", "biz", "cc", "tv", "info", "zw", "name", "hk", "mobi", "asia", "cd", "travel", "pro", "museum", "coop", "aero", ak.aw, "ae", "af", "ag", "ai", "al", "am", "an", "ao", "aq", "ar", "as", "at", "au", "aw", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bm", "bn", "bo", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cq", "cr", "cu", "cv", "cx", "cy", "cz", "de", "dj", ak.bn, "dm", "do", "dz", "ec", "ee", "eg", "eh", "es", "et", "ev", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gh", "gi", "gl", "gm", "gn", "gp", "gr", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "in", "io", "iq", "ir", ak.ae, "it", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", ak.A, "md", "mg", "mh", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nt", "nu", "nz", "om", "qa", "pa", "pe", "pf", ak.aA, "ph", "pk", ak.az, "pm", "pn", ak.ay, "pt", "pw", "py", "re", "ro", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "st", "su", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tm", "tn", TypedValues.Transition.S_TO, "tp", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "uk", "us", "uy", "va", "vc", "ve", "vg", "vn", "vu", "wf", "ws", "ye", "yu", "za", "zm", "zr"};

        /* renamed from: else, reason: not valid java name */
        private static final String f19097else = "[/\\?](?:(?:[a-zA-Z0-9[ -\ud7ff豈-﷏ﷰ-\uffef𐀀-\u1fffd𠀀-\u2fffd𰀀-\u3fffd\u40000-\u4fffd\u50000-\u5fffd\u60000-\u6fffd\u70000-\u7fffd\u80000-\u8fffd\u90000-\u9fffd\ua0000-\uafffd\ub0000-\ubfffd\uc0000-\ucfffd\ud0000-\udfffd\ue1000-\uefffd&&[^ [\u2000-\u200a]\u2028\u2029 \u3000]];/\\?:@&=#~\\-\\.\\+!\\*'\\(\\),_\\$])|(?:%[a-fA-F0-9]{2}))*";

        /* renamed from: for, reason: not valid java name */
        private static final String f19098for = "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))";

        /* renamed from: goto, reason: not valid java name */
        private static Pattern f19099goto = null;

        /* renamed from: if, reason: not valid java name */
        private static final String f19100if = "(?i:http|https|rtsp)://";

        /* renamed from: new, reason: not valid java name */
        private static final String f19101new = "[ -\ud7ff豈-﷏ﷰ-\uffef𐀀-\u1fffd𠀀-\u2fffd𰀀-\u3fffd\u40000-\u4fffd\u50000-\u5fffd\u60000-\u6fffd\u70000-\u7fffd\u80000-\u8fffd\u90000-\u9fffd\ua0000-\uafffd\ub0000-\ubfffd\uc0000-\ucfffd\ud0000-\udfffd\ue1000-\uefffd&&[^ [\u2000-\u200a]\u2028\u2029 \u3000]]";

        /* renamed from: try, reason: not valid java name */
        private static final String f19102try = "a-zA-Z0-9[ -\ud7ff豈-﷏ﷰ-\uffef𐀀-\u1fffd𠀀-\u2fffd𰀀-\u3fffd\u40000-\u4fffd\u50000-\u5fffd\u60000-\u6fffd\u70000-\u7fffd\u80000-\u8fffd\u90000-\u9fffd\ua0000-\uafffd\ub0000-\ubfffd\uc0000-\ucfffd\ud0000-\udfffd\ue1000-\uefffd&&[^ [\u2000-\u200a]\u2028\u2029 \u3000]]";

        static {
            int i = 0;
            StringBuilder sb = new StringBuilder();
            sb.append("(");
            while (true) {
                String[] strArr = f19096do;
                if (i >= strArr.length) {
                    sb.append(")");
                    f19099goto = Pattern.compile("(((?i:http|https|rtsp)://)?(((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))|" + ("((?:(www\\.|[a-zA-Z\\.\\-]+\\.)?[a-zA-Z0-9\\-]+)\\." + sb.toString() + ")") + ")(" + f19095case + ")?(" + f19097else + ")?)");
                    return;
                }
                if (i != 0) {
                    sb.append("|");
                }
                sb.append(strArr[i]);
                i++;
            }
        }

        private Cgoto() {
        }
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$if, reason: invalid class name */
    public static class Cif implements WebUrlMatcher {
        @Override // com.qmuiteam.qmui.link.QMUILinkify.WebUrlMatcher
        public Pattern getPattern() {
            return Patterns.WEB_URL;
        }
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$new, reason: invalid class name */
    public static class Cnew implements MatchFilter {
        @Override // com.qmuiteam.qmui.link.QMUILinkify.MatchFilter
        public final boolean acceptMatch(CharSequence charSequence, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                if (Character.isDigit(charSequence.charAt(i)) && (i3 = i3 + 1) >= 7) {
                    return true;
                }
                i++;
            }
            return false;
        }
    }

    /* renamed from: com.qmuiteam.qmui.link.QMUILinkify$try, reason: invalid class name */
    public static class Ctry implements TransformFilter {
        @Override // com.qmuiteam.qmui.link.QMUILinkify.TransformFilter
        public final String transformUrl(Matcher matcher, String str) {
            return Patterns.digitsAndPlusOnly(matcher);
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static void m23473break(ArrayList<Celse> arrayList, Spannable spannable) throws UnsupportedEncodingException {
        int iIndexOf;
        String string = spannable.toString();
        int i = 0;
        while (true) {
            try {
                String strFindAddress = WebView.findAddress(string);
                if (strFindAddress != null && (iIndexOf = string.indexOf(strFindAddress)) >= 0) {
                    Celse celse = new Celse(null);
                    int length = strFindAddress.length() + iIndexOf;
                    celse.f19094if = iIndexOf + i;
                    i += length;
                    celse.f19093for = i;
                    string = string.substring(length);
                    try {
                        celse.f19092do = "geo:0,0?q=" + URLEncoder.encode(strFindAddress, "UTF-8");
                        arrayList.add(celse);
                    } catch (UnsupportedEncodingException unused) {
                    }
                }
                return;
            } catch (UnsupportedOperationException unused2) {
                return;
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m23474case(Spannable spannable, Pattern pattern, String str, MatchFilter matchFilter, TransformFilter transformFilter) {
        String lowerCase = str == null ? "" : str.toLowerCase(Locale.ROOT);
        Matcher matcher = pattern.matcher(spannable);
        boolean z = false;
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (matchFilter != null ? matchFilter.acceptMatch(spannable, iStart, iEnd) : true) {
                m23482goto(m23480final(matcher.group(0), new String[]{lowerCase}, matcher, transformFilter), iStart, iEnd, spannable, null, null, null);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m23475catch(ArrayList<Celse> arrayList, Spannable spannable, Pattern pattern, Pattern[] patternArr, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            if (!m23476class(matcher.group(), patternArr)) {
                int iStart = matcher.start();
                int iEnd = matcher.end();
                if (matchFilter == null || matchFilter.acceptMatch(spannable, iStart, iEnd)) {
                    Celse celse = new Celse(null);
                    celse.f19092do = m23480final(matcher.group(0), strArr, matcher, transformFilter);
                    celse.f19094if = iStart;
                    celse.f19093for = iEnd;
                    arrayList.add(celse);
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private static boolean m23476class(CharSequence charSequence, Pattern[] patternArr) {
        for (Pattern pattern : patternArr) {
            if (pattern.matcher(charSequence).find()) {
                return true;
            }
        }
        return m23477const(charSequence);
    }

    /* renamed from: const, reason: not valid java name */
    private static boolean m23477const(CharSequence charSequence) {
        if (charSequence.length() <= 21) {
            return false;
        }
        int length = charSequence.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (Character.isDigit(charSequence.charAt(i2)) && (i = i + 1) > 21) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: do, reason: not valid java name */
    private static void m23478do(TextView textView) {
        MovementMethod movementMethod = textView.getMovementMethod();
        if ((movementMethod == null || !(movementMethod instanceof LinkMovementMethod)) && textView.getLinksClickable()) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m23479else(TextView textView, int i, ColorStateList colorStateList, ColorStateList colorStateList2, QMUIOnSpanClickListener qMUIOnSpanClickListener) {
        if (i == 0) {
            return false;
        }
        CharSequence text = textView.getText();
        if (text instanceof Spannable) {
            if (!m23484new((Spannable) text, i, colorStateList, colorStateList2, qMUIOnSpanClickListener)) {
                return false;
            }
            m23478do(textView);
            return true;
        }
        SpannableString spannableStringValueOf = SpannableString.valueOf(text);
        if (!m23484new(spannableStringValueOf, i, colorStateList, colorStateList2, qMUIOnSpanClickListener)) {
            return false;
        }
        m23478do(textView);
        textView.setText(spannableStringValueOf);
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    private static String m23480final(String str, String[] strArr, Matcher matcher, TransformFilter transformFilter) {
        boolean z;
        if (transformFilter != null) {
            str = transformFilter.transformUrl(matcher, str);
        }
        int length = strArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= length) {
                z = false;
                break;
            }
            String str2 = strArr[i];
            if (str.regionMatches(true, 0, str2, 0, str2.length())) {
                if (!str.regionMatches(false, 0, str2, 0, str2.length())) {
                    str = str2 + str.substring(str2.length());
                }
            } else {
                i++;
            }
        }
        if (z) {
            return str;
        }
        return strArr[0] + str;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m23481for(TextView textView, Pattern pattern, String str, MatchFilter matchFilter, TransformFilter transformFilter) {
        SpannableString spannableStringValueOf = SpannableString.valueOf(textView.getText());
        if (m23474case(spannableStringValueOf, pattern, str, matchFilter, transformFilter)) {
            textView.setText(spannableStringValueOf);
            m23478do(textView);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private static void m23482goto(String str, int i, int i2, Spannable spannable, final ColorStateList colorStateList, final ColorStateList colorStateList2, QMUIOnSpanClickListener qMUIOnSpanClickListener) {
        spannable.setSpan(new StyleableURLSpan(str, qMUIOnSpanClickListener) { // from class: com.qmuiteam.qmui.link.QMUILinkify.6
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                ColorStateList colorStateList3 = colorStateList;
                if (colorStateList3 != null) {
                    int colorForState = colorStateList3.getColorForState(new int[]{R.attr.state_enabled, -16842919}, 0);
                    int colorForState2 = colorStateList.getColorForState(new int[]{R.attr.state_pressed}, colorForState);
                    if (this.f19089do) {
                        colorForState = colorForState2;
                    }
                    textPaint.linkColor = colorForState;
                }
                ColorStateList colorStateList4 = colorStateList2;
                if (colorStateList4 != null) {
                    int colorForState3 = colorStateList4.getColorForState(new int[]{R.attr.state_enabled, -16842919}, 0);
                    int colorForState4 = colorStateList2.getColorForState(new int[]{R.attr.state_pressed}, colorForState3);
                    if (this.f19089do) {
                        colorForState3 = colorForState4;
                    }
                    textPaint.bgColor = colorForState3;
                }
                super.updateDrawState(textPaint);
                textPaint.setUnderlineText(false);
            }
        }, i, i2, 33);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m23483if(TextView textView, Pattern pattern, String str) {
        m23481for(textView, pattern, str, null, null);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m23484new(Spannable spannable, int i, ColorStateList colorStateList, ColorStateList colorStateList2, QMUIOnSpanClickListener qMUIOnSpanClickListener) throws UnsupportedEncodingException {
        if (i == 0) {
            return false;
        }
        URLSpan[] uRLSpanArr = (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class);
        for (int length = uRLSpanArr.length - 1; length >= 0; length--) {
            spannable.removeSpan(uRLSpanArr[length]);
        }
        ArrayList arrayList = new ArrayList();
        if ((i & 1) != 0) {
            m23486this(arrayList, spannable, f19074catch.getPattern(), new String[]{"http://", "https://", "rtsp://"}, f19075class, null);
        }
        if ((i & 2) != 0) {
            m23486this(arrayList, spannable, Patterns.EMAIL_ADDRESS, new String[]{MailTo.MAILTO_SCHEME}, null, null);
        }
        if ((i & 4) != 0) {
            m23475catch(arrayList, spannable, f19077do, new Pattern[]{f19082if}, new String[]{"tel:"}, f19076const, f19079final);
        }
        if ((i & 8) != 0) {
            m23473break(arrayList, spannable);
        }
        m23485super(arrayList);
        if (arrayList.size() == 0) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Celse celse = (Celse) it.next();
            m23482goto(celse.f19092do, celse.f19094if, celse.f19093for, spannable, colorStateList, colorStateList2, qMUIOnSpanClickListener);
        }
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    private static void m23485super(ArrayList<Celse> arrayList) {
        int i;
        Collections.sort(arrayList, new Ccase());
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size - 1) {
            Celse celse = arrayList.get(i2);
            int i3 = i2 + 1;
            Celse celse2 = arrayList.get(i3);
            int i4 = celse.f19094if;
            int i5 = celse2.f19094if;
            if (i4 <= i5 && (i = celse.f19093for) > i5) {
                int i6 = celse2.f19093for;
                int i7 = (i6 > i && i - i4 <= i6 - i5) ? i - i4 < i6 - i5 ? i2 : -1 : i3;
                if (i7 != -1) {
                    arrayList.remove(i7);
                    size--;
                }
            }
            i2 = i3;
        }
    }

    /* renamed from: this, reason: not valid java name */
    private static void m23486this(ArrayList<Celse> arrayList, Spannable spannable, Pattern pattern, String[] strArr, MatchFilter matchFilter, TransformFilter transformFilter) {
        Matcher matcher = pattern.matcher(spannable);
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end();
            if (matchFilter == null || matchFilter.acceptMatch(spannable, iStart, iEnd)) {
                Celse celse = new Celse(null);
                celse.f19092do = m23480final(matcher.group(0), strArr, matcher, transformFilter);
                celse.f19094if = iStart;
                celse.f19093for = iEnd;
                arrayList.add(celse);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m23487throw(WebUrlMatcher webUrlMatcher) {
        f19074catch = webUrlMatcher;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m23488try(Spannable spannable, Pattern pattern, String str) {
        return m23474case(spannable, pattern, str, null, null);
    }

    /* renamed from: while, reason: not valid java name */
    public static void m23489while() {
        f19074catch = f19072break;
    }
}
