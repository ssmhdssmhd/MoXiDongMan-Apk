package com.qmuiteam.qmui.qqface;

import android.graphics.drawable.Drawable;
import android.support.v4.kh1;
import android.support.v4.yh1;
import android.text.Spannable;
import android.util.LruCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* renamed from: com.qmuiteam.qmui.qqface.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: for, reason: not valid java name */
    private static final int f19269for = 2;

    /* renamed from: new, reason: not valid java name */
    private static volatile Cdo f19270new;

    /* renamed from: do, reason: not valid java name */
    private LruCache<CharSequence, Cfor> f19271do = new LruCache<>(30);

    /* renamed from: if, reason: not valid java name */
    private IQMUIQQFaceManager f19272if;

    /* renamed from: com.qmuiteam.qmui.qqface.do$do, reason: invalid class name and collision with other inner class name */
    public class C0185do implements Comparator<yh1> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Spannable f19273do;

        public C0185do(Spannable spannable) {
            this.f19273do = spannable;
        }

        @Override // java.util.Comparator
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public int compare(yh1 yh1Var, yh1 yh1Var2) {
            int spanStart = this.f19273do.getSpanStart(yh1Var);
            int spanStart2 = this.f19273do.getSpanStart(yh1Var2);
            if (spanStart > spanStart2) {
                return 1;
            }
            return spanStart == spanStart2 ? 0 : -1;
        }
    }

    /* renamed from: com.qmuiteam.qmui.qqface.do$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        private int f19275do;

        /* renamed from: if, reason: not valid java name */
        private int f19277if;

        /* renamed from: for, reason: not valid java name */
        private int f19276for = 0;

        /* renamed from: new, reason: not valid java name */
        private int f19278new = 0;

        /* renamed from: try, reason: not valid java name */
        private List<Cif> f19279try = new ArrayList();

        public Cfor(int i, int i2) {
            this.f19275do = i;
            this.f19277if = i2;
        }

        /* renamed from: case, reason: not valid java name */
        public int m23602case() {
            return this.f19275do;
        }

        /* renamed from: do, reason: not valid java name */
        public void m23603do(Cif cif) {
            if (cif.m23615catch() == Cnew.DRAWABLE) {
                this.f19276for++;
            } else if (cif.m23615catch() == Cnew.NEXTLINE) {
                this.f19278new++;
            } else if (cif.m23615catch() == Cnew.SPAN && cif.m23614case() != null) {
                this.f19276for += cif.m23614case().m23607try();
                this.f19278new += cif.m23614case().m23606new();
            }
            this.f19279try.add(cif);
        }

        /* renamed from: for, reason: not valid java name */
        public int m23604for() {
            return this.f19277if;
        }

        /* renamed from: if, reason: not valid java name */
        public List<Cif> m23605if() {
            return this.f19279try;
        }

        /* renamed from: new, reason: not valid java name */
        public int m23606new() {
            return this.f19278new;
        }

        /* renamed from: try, reason: not valid java name */
        public int m23607try() {
            return this.f19276for;
        }
    }

    /* renamed from: com.qmuiteam.qmui.qqface.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: case, reason: not valid java name */
        private yh1 f19280case;

        /* renamed from: do, reason: not valid java name */
        private Cnew f19281do;

        /* renamed from: for, reason: not valid java name */
        private int f19282for;

        /* renamed from: if, reason: not valid java name */
        private CharSequence f19283if;

        /* renamed from: new, reason: not valid java name */
        private Drawable f19284new;

        /* renamed from: try, reason: not valid java name */
        private Cfor f19285try;

        /* renamed from: do, reason: not valid java name */
        public static Cif m23608do(int i) {
            Cif cif = new Cif();
            cif.f19281do = Cnew.DRAWABLE;
            cif.f19282for = i;
            return cif;
        }

        /* renamed from: for, reason: not valid java name */
        public static Cif m23609for(Drawable drawable) {
            Cif cif = new Cif();
            cif.f19281do = Cnew.SPECIAL_BOUNDS_DRAWABLE;
            cif.f19284new = drawable;
            return cif;
        }

        /* renamed from: if, reason: not valid java name */
        public static Cif m23610if() {
            Cif cif = new Cif();
            cif.f19281do = Cnew.NEXTLINE;
            return cif;
        }

        /* renamed from: new, reason: not valid java name */
        public static Cif m23611new(CharSequence charSequence) {
            Cif cif = new Cif();
            cif.f19281do = Cnew.TEXT;
            cif.f19283if = charSequence;
            return cif;
        }

        /* renamed from: try, reason: not valid java name */
        public static Cif m23612try(CharSequence charSequence, yh1 yh1Var, Cdo cdo) {
            Cif cif = new Cif();
            cif.f19281do = Cnew.SPAN;
            cif.f19285try = cdo.m23595new(charSequence, 0, charSequence.length(), true);
            cif.f19280case = yh1Var;
            return cif;
        }

        /* renamed from: break, reason: not valid java name */
        public yh1 m23613break() {
            return this.f19280case;
        }

        /* renamed from: case, reason: not valid java name */
        public Cfor m23614case() {
            return this.f19285try;
        }

        /* renamed from: catch, reason: not valid java name */
        public Cnew m23615catch() {
            return this.f19281do;
        }

        /* renamed from: else, reason: not valid java name */
        public int m23616else() {
            return this.f19282for;
        }

        /* renamed from: goto, reason: not valid java name */
        public Drawable m23617goto() {
            return this.f19284new;
        }

        /* renamed from: this, reason: not valid java name */
        public CharSequence m23618this() {
            return this.f19283if;
        }
    }

    /* renamed from: com.qmuiteam.qmui.qqface.do$new, reason: invalid class name */
    public enum Cnew {
        TEXT,
        DRAWABLE,
        SPECIAL_BOUNDS_DRAWABLE,
        SPAN,
        NEXTLINE
    }

    private Cdo(IQMUIQQFaceManager iQMUIQQFaceManager) {
        this.f19272if = iQMUIQQFaceManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0160  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Cfor m23594else(CharSequence charSequence, int i, int i2, yh1[] yh1VarArr, int[] iArr) {
        int i3;
        int i4;
        int i5;
        int doubleUnicodeEmoji;
        int iCharCount;
        int i6;
        int iCodePointAt;
        yh1[] yh1VarArr2 = yh1VarArr;
        int length = charSequence.length();
        int i7 = 1;
        if (yh1VarArr2 == null || yh1VarArr2.length <= 0) {
            i3 = -1;
            i4 = Integer.MAX_VALUE;
            i5 = Integer.MAX_VALUE;
        } else {
            int i8 = iArr[0];
            i5 = iArr[1];
            i4 = i8;
            i3 = 0;
        }
        Cfor cfor = new Cfor(i, i2);
        if (i > 0) {
            cfor.m23603do(Cif.m23611new(charSequence.subSequence(0, i)));
        }
        int i9 = i;
        int i10 = i9;
        loop0: while (true) {
            boolean z = false;
            while (i9 < i2) {
                if (i9 == i4) {
                    if (i9 - i10 > 0) {
                        if (z) {
                            i10--;
                            z = false;
                        }
                        cfor.m23603do(Cif.m23611new(charSequence.subSequence(i10, i9)));
                    }
                    cfor.m23603do(Cif.m23612try(charSequence.subSequence(i4, i5), yh1VarArr2[i3], this));
                    i3++;
                    if (i3 >= yh1VarArr2.length) {
                        i9 = i5;
                        i10 = i9;
                        i4 = Integer.MAX_VALUE;
                        i5 = Integer.MAX_VALUE;
                    } else {
                        int i11 = i3 * 2;
                        int i12 = iArr[i11];
                        i10 = i5;
                        i5 = iArr[i11 + i7];
                        i4 = i12;
                        i9 = i10;
                    }
                } else {
                    char cCharAt = charSequence.charAt(i9);
                    if (cCharAt == '[') {
                        if (i9 - i10 > 0) {
                            cfor.m23603do(Cif.m23611new(charSequence.subSequence(i10, i9)));
                        }
                        i10 = i9;
                        i7 = 1;
                        z = true;
                        i9++;
                    } else if (cCharAt == ']' && z) {
                        i9++;
                        if (i9 - i10 > 0) {
                            String string = charSequence.subSequence(i10, i9).toString();
                            Drawable specialBoundsDrawable = this.f19272if.getSpecialBoundsDrawable(string);
                            if (specialBoundsDrawable != null) {
                                cfor.m23603do(Cif.m23609for(specialBoundsDrawable));
                            } else {
                                int qQfaceResource = this.f19272if.getQQfaceResource(string);
                                if (qQfaceResource != 0) {
                                    cfor.m23603do(Cif.m23608do(qQfaceResource));
                                }
                            }
                            i10 = i9;
                        }
                        i7 = 1;
                    } else if (cCharAt == '\n') {
                        if (z) {
                            z = false;
                        }
                        if (i9 - i10 > 0) {
                            cfor.m23603do(Cif.m23611new(charSequence.subSequence(i10, i9)));
                        }
                        cfor.m23603do(Cif.m23610if());
                        i10 = i9 + 1;
                        i9 = i10;
                        i7 = 1;
                    } else if (!z) {
                        if (this.f19272if.maybeSoftBankEmoji(cCharAt)) {
                            doubleUnicodeEmoji = 0;
                        } else {
                            doubleUnicodeEmoji = this.f19272if.getSoftbankEmojiResource(cCharAt);
                            if (doubleUnicodeEmoji != 0) {
                                iCharCount = 1;
                            }
                            if (doubleUnicodeEmoji == 0) {
                                int iCodePointAt2 = Character.codePointAt(charSequence, i9);
                                int iCharCount2 = Character.charCount(iCodePointAt2);
                                if (this.f19272if.maybeEmoji(iCodePointAt2)) {
                                    doubleUnicodeEmoji = this.f19272if.getEmojiResource(iCodePointAt2);
                                }
                                iCharCount = (doubleUnicodeEmoji != 0 || (i6 = i + iCharCount2) >= i2 || (doubleUnicodeEmoji = this.f19272if.getDoubleUnicodeEmoji(iCodePointAt2, (iCodePointAt = Character.codePointAt(charSequence, i6)))) == 0) ? iCharCount2 : iCharCount2 + Character.charCount(iCodePointAt);
                            }
                            if (doubleUnicodeEmoji != 0) {
                                if (i10 != i9) {
                                    cfor.m23603do(Cif.m23611new(charSequence.subSequence(i10, i9)));
                                }
                                cfor.m23603do(Cif.m23608do(doubleUnicodeEmoji));
                                i9 += iCharCount;
                                i10 = i9;
                            } else {
                                i9++;
                            }
                            yh1VarArr2 = yh1VarArr;
                            i7 = 1;
                        }
                        iCharCount = 0;
                        if (doubleUnicodeEmoji == 0) {
                        }
                        if (doubleUnicodeEmoji != 0) {
                        }
                        yh1VarArr2 = yh1VarArr;
                        i7 = 1;
                    } else if (i9 - i10 > 8) {
                        z = false;
                        if (this.f19272if.maybeSoftBankEmoji(cCharAt)) {
                        }
                        iCharCount = 0;
                        if (doubleUnicodeEmoji == 0) {
                        }
                        if (doubleUnicodeEmoji != 0) {
                        }
                        yh1VarArr2 = yh1VarArr;
                        i7 = 1;
                    } else {
                        i9++;
                        i7 = 1;
                    }
                }
            }
            break loop0;
        }
        if (i10 < i2) {
            cfor.m23603do(Cif.m23611new(charSequence.subSequence(i10, length)));
        }
        return cfor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public Cfor m23595new(CharSequence charSequence, int i, int i2, boolean z) {
        yh1[] yh1VarArr;
        int[] iArr;
        int[] iArr2 = null;
        if (kh1.m4402case(charSequence)) {
            return null;
        }
        if (i < 0 || i >= charSequence.length()) {
            throw new IllegalArgumentException("start must >= 0 and < text.length");
        }
        if (i2 <= i) {
            throw new IllegalArgumentException("end must > start");
        }
        int length = charSequence.length();
        int i3 = i2 > length ? length : i2;
        int i4 = 0;
        if (z || !(charSequence instanceof Spannable)) {
            yh1VarArr = null;
            iArr = null;
        } else {
            Spannable spannable = (Spannable) charSequence;
            yh1[] yh1VarArr2 = (yh1[]) spannable.getSpans(0, charSequence.length() - 1, yh1.class);
            Arrays.sort(yh1VarArr2, new C0185do(spannable));
            int i5 = yh1VarArr2.length > 0 ? 1 : 0;
            if (i5 != 0) {
                iArr2 = new int[yh1VarArr2.length * 2];
                while (i4 < yh1VarArr2.length) {
                    int i6 = i4 * 2;
                    iArr2[i6] = spannable.getSpanStart(yh1VarArr2[i4]);
                    iArr2[i6 + 1] = spannable.getSpanEnd(yh1VarArr2[i4]);
                    i4++;
                }
            }
            yh1VarArr = yh1VarArr2;
            iArr = iArr2;
            i4 = i5;
        }
        Cfor cfor = this.f19271do.get(charSequence);
        if (i4 == 0 && cfor != null && i == cfor.m23602case() && i3 == cfor.m23604for()) {
            return cfor;
        }
        Cfor cforM23594else = m23594else(charSequence, i, i3, yh1VarArr, iArr);
        this.f19271do.put(charSequence, cforM23594else);
        return cforM23594else;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m23596try(IQMUIQQFaceManager iQMUIQQFaceManager) {
        if (f19270new == null) {
            synchronized (Cdo.class) {
                if (f19270new == null) {
                    f19270new = new Cdo(iQMUIQQFaceManager);
                }
            }
        }
        return f19270new;
    }

    /* renamed from: case, reason: not valid java name */
    public int m23597case() {
        return this.f19272if.getSpecialDrawableMaxHeight();
    }

    /* renamed from: for, reason: not valid java name */
    public Cfor m23598for(CharSequence charSequence, int i, int i2) {
        return m23595new(charSequence, i, i2, false);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m23599goto(LruCache<CharSequence, Cfor> lruCache) {
        this.f19271do = lruCache;
    }

    /* renamed from: if, reason: not valid java name */
    public Cfor m23600if(CharSequence charSequence) {
        if (kh1.m4402case(charSequence)) {
            return null;
        }
        return m23598for(charSequence, 0, charSequence.length());
    }
}
