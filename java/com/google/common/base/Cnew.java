package com.google.common.base;

import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.ki0;
import android.support.v4.li0;
import java.util.Arrays;
import java.util.BitSet;

@ki0(emulated = true)
/* renamed from: com.google.common.base.new, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cnew implements Predicate<Character> {

    /* renamed from: do, reason: not valid java name */
    private static final int f13679do = 65536;

    /* renamed from: com.google.common.base.new$break, reason: invalid class name */
    public static final class Cbreak extends Cnew {

        /* renamed from: if, reason: not valid java name */
        private final Predicate<? super Character> f13680if;

        public Cbreak(Predicate<? super Character> predicate) {
            this.f13680if = (Predicate) af1.m205continue(predicate);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return this.f13680if.apply(Character.valueOf(c));
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.forPredicate(" + this.f13680if + ")";
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        /* renamed from: try, reason: merged with bridge method [inline-methods] */
        public boolean apply(Character ch) {
            return this.f13680if.apply(af1.m205continue(ch));
        }
    }

    @li0
    /* renamed from: com.google.common.base.new$case, reason: invalid class name */
    public static final class Ccase extends Cstatic {

        /* renamed from: for, reason: not valid java name */
        private final BitSet f13681for;

        public /* synthetic */ Ccase(BitSet bitSet, String str, Cdo cdo) {
            this(bitSet, str);
        }

        @Override // com.google.common.base.Cnew
        public void d(BitSet bitSet) {
            bitSet.or(this.f13681for);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return this.f13681for.get(c);
        }

        private Ccase(BitSet bitSet, String str) {
            super(str);
            this.f13681for = bitSet.length() + 64 < bitSet.size() ? (BitSet) bitSet.clone() : bitSet;
        }
    }

    /* renamed from: com.google.common.base.new$catch, reason: invalid class name */
    public static final class Ccatch extends Cthis {

        /* renamed from: for, reason: not valid java name */
        private final char f13682for;

        /* renamed from: if, reason: not valid java name */
        private final char f13683if;

        public Ccatch(char c, char c2) {
            af1.m220new(c2 >= c);
            this.f13683if = c;
            this.f13682for = c2;
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            bitSet.set(this.f13683if, this.f13682for + 1);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return this.f13683if <= c && c <= this.f13682for;
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.inRange('" + Cnew.e(this.f13683if) + "', '" + Cnew.e(this.f13682for) + "')";
        }
    }

    /* renamed from: com.google.common.base.new$class, reason: invalid class name */
    public static final class Cclass extends Cfinally {

        /* renamed from: case, reason: not valid java name */
        private static final String f13684case = "  \u00ad\u0605\u061c\u06dd\u070f\u08e2\u1680\u180e\u200f \u2064\u206f\u3000\uf8ff\ufeff\ufffb";

        /* renamed from: else, reason: not valid java name */
        public static final Cclass f13685else = new Cclass();

        /* renamed from: try, reason: not valid java name */
        private static final String f13686try = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9";

        private Cclass() {
            super("CharMatcher.invisible()", f13686try.toCharArray(), f13684case.toCharArray());
        }
    }

    /* renamed from: com.google.common.base.new$const, reason: invalid class name */
    public static final class Cconst extends Cthis {

        /* renamed from: if, reason: not valid java name */
        private final char f13687if;

        public Cconst(char c) {
            this.f13687if = c;
        }

        @Override // com.google.common.base.Cnew
        public String a(CharSequence charSequence, char c) {
            return charSequence.toString().replace(this.f13687if, c);
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            bitSet.set(this.f13687if);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: if */
        public Cnew mo15149if(Cnew cnew) {
            return cnew.mo15151package(this.f13687if) ? this : Cnew.m15142volatile();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return c == this.f13687if;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: protected */
        public Cnew mo15153protected(Cnew cnew) {
            return cnew.mo15151package(this.f13687if) ? cnew : super.mo15153protected(cnew);
        }

        @Override // com.google.common.base.Cnew.Cthis, com.google.common.base.Cnew
        /* renamed from: strictfp */
        public Cnew mo15154strictfp() {
            return Cnew.m15134native(this.f13687if);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.is('" + Cnew.e(this.f13687if) + "')";
        }
    }

    /* renamed from: com.google.common.base.new$default, reason: invalid class name */
    public static final class Cdefault extends Cstatic {

        /* renamed from: for, reason: not valid java name */
        public static final Cdefault f13688for = new Cdefault();

        private Cdefault() {
            super("CharMatcher.none()");
        }

        @Override // com.google.common.base.Cnew
        public String a(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.Cnew
        public String b(CharSequence charSequence, CharSequence charSequence2) {
            af1.m205continue(charSequence2);
            return charSequence.toString();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: continue */
        public boolean mo15145continue(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return true;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: final */
        public int mo15146final(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return -1;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: finally */
        public int mo15147finally(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return -1;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: goto */
        public String mo15148goto(CharSequence charSequence, char c) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.Cnew
        public String h(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.Cnew
        public String i(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: if */
        public Cnew mo15149if(Cnew cnew) {
            af1.m205continue(cnew);
            return this;
        }

        @Override // com.google.common.base.Cnew
        public String j(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return false;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: private */
        public boolean mo15152private(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: protected */
        public Cnew mo15153protected(Cnew cnew) {
            return (Cnew) af1.m205continue(cnew);
        }

        @Override // com.google.common.base.Cnew.Cthis, com.google.common.base.Cnew
        /* renamed from: strictfp */
        public Cnew mo15154strictfp() {
            return Cnew.m15130for();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: super */
        public int mo15155super(CharSequence charSequence, int i) {
            af1.q(i, charSequence.length());
            return -1;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: synchronized */
        public String mo15156synchronized(CharSequence charSequence) {
            return charSequence.toString();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: this */
        public int mo15157this(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return 0;
        }
    }

    /* renamed from: com.google.common.base.new$do, reason: invalid class name */
    public class Cdo extends Cthrows {

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ String f13689for;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(Cnew cnew, String str) {
            super(cnew);
            this.f13689for = str;
        }

        @Override // com.google.common.base.Cnew.Cswitch, com.google.common.base.Cnew
        public String toString() {
            return this.f13689for;
        }
    }

    /* renamed from: com.google.common.base.new$else, reason: invalid class name */
    public static final class Celse extends Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cnew f13691if = new Celse();

        private Celse() {
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            if (c != ' ' && c != 133 && c != 5760) {
                if (c == 8199) {
                    return false;
                }
                if (c != 8287 && c != 12288 && c != 8232 && c != 8233) {
                    switch (c) {
                        case '\t':
                        case '\n':
                        case 11:
                        case '\f':
                        case '\r':
                            break;
                        default:
                            return c >= 8192 && c <= 8202;
                    }
                }
            }
            return true;
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.breakingWhitespace()";
        }
    }

    /* renamed from: com.google.common.base.new$extends, reason: invalid class name */
    public static final class Cextends extends Cnew {

        /* renamed from: for, reason: not valid java name */
        public final Cnew f13692for;

        /* renamed from: if, reason: not valid java name */
        public final Cnew f13693if;

        public Cextends(Cnew cnew, Cnew cnew2) {
            this.f13693if = (Cnew) af1.m205continue(cnew);
            this.f13692for = (Cnew) af1.m205continue(cnew2);
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            this.f13693if.d(bitSet);
            this.f13692for.d(bitSet);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return this.f13693if.mo15151package(c) || this.f13692for.mo15151package(c);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.or(" + this.f13693if + ", " + this.f13692for + ")";
        }
    }

    /* renamed from: com.google.common.base.new$final, reason: invalid class name */
    public static final class Cfinal extends Cthis {

        /* renamed from: for, reason: not valid java name */
        private final char f13694for;

        /* renamed from: if, reason: not valid java name */
        private final char f13695if;

        public Cfinal(char c, char c2) {
            this.f13695if = c;
            this.f13694for = c2;
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            bitSet.set(this.f13695if);
            bitSet.set(this.f13694for);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return c == this.f13695if || c == this.f13694for;
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.anyOf(\"" + Cnew.e(this.f13695if) + Cnew.e(this.f13694for) + "\")";
        }
    }

    /* renamed from: com.google.common.base.new$finally, reason: invalid class name */
    public static class Cfinally extends Cnew {

        /* renamed from: for, reason: not valid java name */
        private final char[] f13696for;

        /* renamed from: if, reason: not valid java name */
        private final String f13697if;

        /* renamed from: new, reason: not valid java name */
        private final char[] f13698new;

        public Cfinally(String str, char[] cArr, char[] cArr2) {
            this.f13697if = str;
            this.f13696for = cArr;
            this.f13698new = cArr2;
            af1.m220new(cArr.length == cArr2.length);
            int i = 0;
            while (i < cArr.length) {
                af1.m220new(cArr[i] <= cArr2[i]);
                int i2 = i + 1;
                if (i2 < cArr.length) {
                    af1.m220new(cArr2[i] < cArr[i2]);
                }
                i = i2;
            }
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            int iBinarySearch = Arrays.binarySearch(this.f13696for, c);
            if (iBinarySearch >= 0) {
                return true;
            }
            int i = (iBinarySearch ^ (-1)) - 1;
            return i >= 0 && c <= this.f13698new[i];
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return this.f13697if;
        }
    }

    /* renamed from: com.google.common.base.new$for, reason: invalid class name */
    public static final class Cfor extends Cstatic {

        /* renamed from: for, reason: not valid java name */
        public static final Cfor f13699for = new Cfor();

        private Cfor() {
            super("CharMatcher.any()");
        }

        @Override // com.google.common.base.Cnew
        public String a(CharSequence charSequence, char c) {
            char[] cArr = new char[charSequence.length()];
            Arrays.fill(cArr, c);
            return new String(cArr);
        }

        @Override // com.google.common.base.Cnew
        public String b(CharSequence charSequence, CharSequence charSequence2) {
            StringBuilder sb = new StringBuilder(charSequence.length() * charSequence2.length());
            for (int i = 0; i < charSequence.length(); i++) {
                sb.append(charSequence2);
            }
            return sb.toString();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: continue */
        public boolean mo15145continue(CharSequence charSequence) {
            return charSequence.length() == 0;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: final */
        public int mo15146final(CharSequence charSequence) {
            return charSequence.length() == 0 ? -1 : 0;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: finally */
        public int mo15147finally(CharSequence charSequence) {
            return charSequence.length() - 1;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: goto */
        public String mo15148goto(CharSequence charSequence, char c) {
            return charSequence.length() == 0 ? "" : String.valueOf(c);
        }

        @Override // com.google.common.base.Cnew
        public String h(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return "";
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: if */
        public Cnew mo15149if(Cnew cnew) {
            return (Cnew) af1.m205continue(cnew);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return true;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: private */
        public boolean mo15152private(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return true;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: protected */
        public Cnew mo15153protected(Cnew cnew) {
            af1.m205continue(cnew);
            return this;
        }

        @Override // com.google.common.base.Cnew.Cthis, com.google.common.base.Cnew
        /* renamed from: strictfp */
        public Cnew mo15154strictfp() {
            return Cnew.m15142volatile();
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: super */
        public int mo15155super(CharSequence charSequence, int i) {
            int length = charSequence.length();
            af1.q(i, length);
            if (i == length) {
                return -1;
            }
            return i;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: synchronized */
        public String mo15156synchronized(CharSequence charSequence) {
            af1.m205continue(charSequence);
            return "";
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: this */
        public int mo15157this(CharSequence charSequence) {
            return charSequence.length();
        }
    }

    /* renamed from: com.google.common.base.new$goto, reason: invalid class name */
    public static final class Cgoto extends Cfinally {

        /* renamed from: case, reason: not valid java name */
        public static final Cgoto f13700case = new Cgoto();

        /* renamed from: try, reason: not valid java name */
        private static final String f13701try = "0٠۰߀०০੦૦୦௦౦೦൦෦๐໐༠၀႐០᠐᥆᧐᪀᪐᭐᮰᱀᱐꘠꣐꤀꧐꧰꩐꯰０";

        private Cgoto() {
            super("CharMatcher.digit()", m(), l());
        }

        private static char[] l() {
            char[] cArr = new char[37];
            for (int i = 0; i < 37; i++) {
                cArr[i] = (char) (f13701try.charAt(i) + '\t');
            }
            return cArr;
        }

        private static char[] m() {
            return f13701try.toCharArray();
        }
    }

    /* renamed from: com.google.common.base.new$if, reason: invalid class name */
    public static final class Cif extends Cnew {

        /* renamed from: for, reason: not valid java name */
        public final Cnew f13702for;

        /* renamed from: if, reason: not valid java name */
        public final Cnew f13703if;

        public Cif(Cnew cnew, Cnew cnew2) {
            this.f13703if = (Cnew) af1.m205continue(cnew);
            this.f13702for = (Cnew) af1.m205continue(cnew2);
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f13703if.d(bitSet2);
            BitSet bitSet3 = new BitSet();
            this.f13702for.d(bitSet3);
            bitSet2.and(bitSet3);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return this.f13703if.mo15151package(c) && this.f13702for.mo15151package(c);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.and(" + this.f13703if + ", " + this.f13702for + ")";
        }
    }

    /* renamed from: com.google.common.base.new$import, reason: invalid class name */
    public static final class Cimport extends Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cimport f13704if = new Cimport();

        private Cimport() {
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return Character.isLetter(c);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.javaLetter()";
        }
    }

    /* renamed from: com.google.common.base.new$native, reason: invalid class name */
    public static final class Cnative extends Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cnative f13705if = new Cnative();

        private Cnative() {
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return Character.isLetterOrDigit(c);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.javaLetterOrDigit()";
        }
    }

    /* renamed from: com.google.common.base.new$new, reason: invalid class name and collision with other inner class name */
    public static final class C0077new extends Cnew {

        /* renamed from: if, reason: not valid java name */
        private final char[] f13706if;

        public C0077new(CharSequence charSequence) {
            char[] charArray = charSequence.toString().toCharArray();
            this.f13706if = charArray;
            Arrays.sort(charArray);
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            for (char c : this.f13706if) {
                bitSet.set(c);
            }
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return Arrays.binarySearch(this.f13706if, c) >= 0;
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
            for (char c : this.f13706if) {
                sb.append(Cnew.e(c));
            }
            sb.append("\")");
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.base.new$package, reason: invalid class name */
    public static final class Cpackage extends Cfinally {

        /* renamed from: try, reason: not valid java name */
        public static final Cpackage f13707try = new Cpackage();

        private Cpackage() {
            super("CharMatcher.singleWidth()", "\u0000־א׳\u0600ݐ\u0e00Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ\u0e7f₯℺﷿\ufeffￜ".toCharArray());
        }
    }

    @af2
    /* renamed from: com.google.common.base.new$private, reason: invalid class name */
    public static final class Cprivate extends Cstatic {

        /* renamed from: for, reason: not valid java name */
        public static final String f13709for = "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000";

        /* renamed from: new, reason: not valid java name */
        public static final int f13710new = 1682554634;

        /* renamed from: try, reason: not valid java name */
        public static final int f13711try = Integer.numberOfLeadingZeros(31);

        /* renamed from: case, reason: not valid java name */
        public static final Cprivate f13708case = new Cprivate();

        public Cprivate() {
            super("CharMatcher.whitespace()");
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            for (int i = 0; i < 32; i++) {
                bitSet.set(f13709for.charAt(i));
            }
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return f13709for.charAt((f13710new * c) >>> f13711try) == c;
        }
    }

    /* renamed from: com.google.common.base.new$public, reason: invalid class name */
    public static final class Cpublic extends Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cpublic f13712if = new Cpublic();

        private Cpublic() {
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return Character.isLowerCase(c);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.javaLowerCase()";
        }
    }

    /* renamed from: com.google.common.base.new$return, reason: invalid class name */
    public static final class Creturn extends Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Creturn f13713if = new Creturn();

        private Creturn() {
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return Character.isUpperCase(c);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.javaUpperCase()";
        }
    }

    /* renamed from: com.google.common.base.new$static, reason: invalid class name */
    public static abstract class Cstatic extends Cthis {

        /* renamed from: if, reason: not valid java name */
        private final String f13714if;

        public Cstatic(String str) {
            this.f13714if = (String) af1.m205continue(str);
        }

        @Override // com.google.common.base.Cnew
        public final String toString() {
            return this.f13714if;
        }
    }

    /* renamed from: com.google.common.base.new$super, reason: invalid class name */
    public static final class Csuper extends Cthis {

        /* renamed from: if, reason: not valid java name */
        private final char f13715if;

        public Csuper(char c) {
            this.f13715if = c;
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            bitSet.set(0, this.f13715if);
            bitSet.set(this.f13715if + 1, 65536);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: if */
        public Cnew mo15149if(Cnew cnew) {
            return cnew.mo15151package(this.f13715if) ? super.mo15149if(cnew) : cnew;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return c != this.f13715if;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: protected */
        public Cnew mo15153protected(Cnew cnew) {
            return cnew.mo15151package(this.f13715if) ? Cnew.m15130for() : this;
        }

        @Override // com.google.common.base.Cnew.Cthis, com.google.common.base.Cnew
        /* renamed from: strictfp */
        public Cnew mo15154strictfp() {
            return Cnew.m15143while(this.f13715if);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.isNot('" + Cnew.e(this.f13715if) + "')";
        }
    }

    /* renamed from: com.google.common.base.new$switch, reason: invalid class name */
    public static class Cswitch extends Cnew {

        /* renamed from: if, reason: not valid java name */
        public final Cnew f13716if;

        public Cswitch(Cnew cnew) {
            this.f13716if = (Cnew) af1.m205continue(cnew);
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: continue */
        public boolean mo15145continue(CharSequence charSequence) {
            return this.f13716if.mo15152private(charSequence);
        }

        @Override // com.google.common.base.Cnew
        @li0
        public void d(BitSet bitSet) {
            BitSet bitSet2 = new BitSet();
            this.f13716if.d(bitSet2);
            bitSet2.flip(0, 65536);
            bitSet.or(bitSet2);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return !this.f13716if.mo15151package(c);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: private */
        public boolean mo15152private(CharSequence charSequence) {
            return this.f13716if.mo15145continue(charSequence);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: strictfp */
        public Cnew mo15154strictfp() {
            return this.f13716if;
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: this */
        public int mo15157this(CharSequence charSequence) {
            return charSequence.length() - this.f13716if.mo15157this(charSequence);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return this.f13716if + ".negate()";
        }
    }

    /* renamed from: com.google.common.base.new$this, reason: invalid class name */
    public static abstract class Cthis extends Cnew {
        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: strictfp */
        public Cnew mo15154strictfp() {
            return new Cthrows(this);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: transient */
        public final Cnew mo15158transient() {
            return this;
        }
    }

    /* renamed from: com.google.common.base.new$throw, reason: invalid class name */
    public static final class Cthrow extends Cnew {

        /* renamed from: if, reason: not valid java name */
        public static final Cthrow f13717if = new Cthrow();

        private Cthrow() {
        }

        @Override // com.google.common.base.Cnew, com.google.common.base.Predicate
        @Deprecated
        public /* bridge */ /* synthetic */ boolean apply(Character ch) {
            return super.apply(ch);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return Character.isDigit(c);
        }

        @Override // com.google.common.base.Cnew
        public String toString() {
            return "CharMatcher.javaDigit()";
        }
    }

    /* renamed from: com.google.common.base.new$throws, reason: invalid class name */
    public static class Cthrows extends Cswitch {
        public Cthrows(Cnew cnew) {
            super(cnew);
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: transient */
        public final Cnew mo15158transient() {
            return this;
        }
    }

    /* renamed from: com.google.common.base.new$try, reason: invalid class name */
    public static final class Ctry extends Cstatic {

        /* renamed from: for, reason: not valid java name */
        public static final Ctry f13718for = new Ctry();

        public Ctry() {
            super("CharMatcher.ascii()");
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return c <= 127;
        }
    }

    /* renamed from: com.google.common.base.new$while, reason: invalid class name */
    public static final class Cwhile extends Cstatic {

        /* renamed from: for, reason: not valid java name */
        public static final Cwhile f13719for = new Cwhile();

        private Cwhile() {
            super("CharMatcher.javaIsoControl()");
        }

        @Override // com.google.common.base.Cnew
        /* renamed from: package */
        public boolean mo15151package(char c) {
            return c <= 31 || (c >= 127 && c <= 159);
        }
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public static Cnew m15121break() {
        return Cgoto.f13700case;
    }

    /* renamed from: case, reason: not valid java name */
    public static Cnew m15122case() {
        return Ctry.f13718for;
    }

    /* renamed from: catch, reason: not valid java name */
    private String m15123catch(CharSequence charSequence, int i, int i2, char c, StringBuilder sb, boolean z) {
        while (i < i2) {
            char cCharAt = charSequence.charAt(i);
            if (!mo15151package(cCharAt)) {
                sb.append(cCharAt);
                z = false;
            } else if (!z) {
                sb.append(c);
                z = true;
            }
            i++;
        }
        return sb.toString();
    }

    /* renamed from: class, reason: not valid java name */
    public static Cnew m15124class(Predicate<? super Character> predicate) {
        return predicate instanceof Cnew ? (Cnew) predicate : new Cbreak(predicate);
    }

    /* renamed from: const, reason: not valid java name */
    public static Cnew m15125const(char c, char c2) {
        return new Ccatch(c, c2);
    }

    @Deprecated
    /* renamed from: default, reason: not valid java name */
    public static Cnew m15126default() {
        return Cpublic.f13712if;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(char c) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = net.lingala.zip4j.crypto.PBKDF2.Cdo.f28079do.charAt(c & 15);
            c = (char) (c >> 4);
        }
        return String.copyValueOf(cArr);
    }

    /* renamed from: else, reason: not valid java name */
    public static Cnew m15128else() {
        return Celse.f13691if;
    }

    @Deprecated
    /* renamed from: extends, reason: not valid java name */
    public static Cnew m15129extends() {
        return Creturn.f13713if;
    }

    @Deprecated
    public static Cnew f() {
        return Cpackage.f13707try;
    }

    /* renamed from: for, reason: not valid java name */
    public static Cnew m15130for() {
        return Cfor.f13699for;
    }

    /* renamed from: import, reason: not valid java name */
    private static Cfinal m15131import(char c, char c2) {
        return new Cfinal(c, c2);
    }

    @li0
    /* renamed from: instanceof, reason: not valid java name */
    private static Cnew m15132instanceof(int i, BitSet bitSet, String str) {
        if (i == 0) {
            return m15142volatile();
        }
        if (i == 1) {
            return m15143while((char) bitSet.nextSetBit(0));
        }
        if (i != 2) {
            return m15136public(i, bitSet.length()) ? com.google.common.base.Cstatic.n(bitSet, str) : new Ccase(bitSet, str, null);
        }
        char cNextSetBit = (char) bitSet.nextSetBit(0);
        return m15131import(cNextSetBit, (char) bitSet.nextSetBit(cNextSetBit + 1));
    }

    /* renamed from: interface, reason: not valid java name */
    public static Cnew m15133interface(CharSequence charSequence) {
        return m15135new(charSequence).mo15154strictfp();
    }

    public static Cnew k() {
        return Cprivate.f13708case;
    }

    /* renamed from: native, reason: not valid java name */
    public static Cnew m15134native(char c) {
        return new Csuper(c);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cnew m15135new(CharSequence charSequence) {
        int length = charSequence.length();
        return length != 0 ? length != 1 ? length != 2 ? new C0077new(charSequence) : m15131import(charSequence.charAt(0), charSequence.charAt(1)) : m15143while(charSequence.charAt(0)) : m15142volatile();
    }

    @li0
    /* renamed from: public, reason: not valid java name */
    private static boolean m15136public(int i, int i2) {
        return i <= 1023 && i2 > (i * 4) * 16;
    }

    @Deprecated
    /* renamed from: return, reason: not valid java name */
    public static Cnew m15137return() {
        return Cthrow.f13717if;
    }

    /* renamed from: static, reason: not valid java name */
    public static Cnew m15138static() {
        return Cwhile.f13719for;
    }

    @Deprecated
    /* renamed from: switch, reason: not valid java name */
    public static Cnew m15139switch() {
        return Cimport.f13704if;
    }

    @Deprecated
    /* renamed from: throw, reason: not valid java name */
    public static Cnew m15140throw() {
        return Cclass.f13685else;
    }

    @Deprecated
    /* renamed from: throws, reason: not valid java name */
    public static Cnew m15141throws() {
        return Cnative.f13705if;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static Cnew m15142volatile() {
        return Cdefault.f13688for;
    }

    /* renamed from: while, reason: not valid java name */
    public static Cnew m15143while(char c) {
        return new Cconst(c);
    }

    public String a(CharSequence charSequence, char c) {
        String string = charSequence.toString();
        int iMo15146final = mo15146final(string);
        if (iMo15146final == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        charArray[iMo15146final] = c;
        while (true) {
            iMo15146final++;
            if (iMo15146final >= charArray.length) {
                return new String(charArray);
            }
            if (mo15151package(charArray[iMo15146final])) {
                charArray[iMo15146final] = c;
            }
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m15144abstract(CharSequence charSequence) {
        return !mo15145continue(charSequence);
    }

    public String b(CharSequence charSequence, CharSequence charSequence2) {
        int length = charSequence2.length();
        if (length == 0) {
            return mo15156synchronized(charSequence);
        }
        int i = 0;
        if (length == 1) {
            return a(charSequence, charSequence2.charAt(0));
        }
        String string = charSequence.toString();
        int iMo15146final = mo15146final(string);
        if (iMo15146final == -1) {
            return string;
        }
        int length2 = string.length();
        StringBuilder sb = new StringBuilder(((length2 * 3) / 2) + 16);
        do {
            sb.append((CharSequence) string, i, iMo15146final);
            sb.append(charSequence2);
            i = iMo15146final + 1;
            iMo15146final = mo15155super(string, i);
        } while (iMo15146final != -1);
        sb.append((CharSequence) string, i, length2);
        return sb.toString();
    }

    public String c(CharSequence charSequence) {
        return mo15154strictfp().mo15156synchronized(charSequence);
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean mo15145continue(CharSequence charSequence) {
        return mo15146final(charSequence) == -1;
    }

    @li0
    public void d(BitSet bitSet) {
        for (int i = 65535; i >= 0; i--) {
            if (mo15151package((char) i)) {
                bitSet.set(i);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public int mo15146final(CharSequence charSequence) {
        return mo15155super(charSequence, 0);
    }

    /* renamed from: finally, reason: not valid java name */
    public int mo15147finally(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (mo15151package(charSequence.charAt(length))) {
                return length;
            }
        }
        return -1;
    }

    public String g(CharSequence charSequence, char c) {
        int length = charSequence.length();
        int i = length - 1;
        int i2 = 0;
        while (i2 < length && mo15151package(charSequence.charAt(i2))) {
            i2++;
        }
        int i3 = i;
        while (i3 > i2 && mo15151package(charSequence.charAt(i3))) {
            i3--;
        }
        if (i2 == 0 && i3 == i) {
            return mo15148goto(charSequence, c);
        }
        int i4 = i3 + 1;
        return m15123catch(charSequence, i2, i4, c, new StringBuilder(i4 - i2), false);
    }

    /* renamed from: goto, reason: not valid java name */
    public String mo15148goto(CharSequence charSequence, char c) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (mo15151package(cCharAt)) {
                if (cCharAt != c || (i != length - 1 && mo15151package(charSequence.charAt(i + 1)))) {
                    StringBuilder sb = new StringBuilder(length);
                    sb.append(charSequence, 0, i);
                    sb.append(c);
                    return m15123catch(charSequence, i + 1, length, c, sb, true);
                }
                i++;
            }
            i++;
        }
        return charSequence.toString();
    }

    public String h(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && mo15151package(charSequence.charAt(i))) {
            i++;
        }
        int i2 = length - 1;
        while (i2 > i && mo15151package(charSequence.charAt(i2))) {
            i2--;
        }
        return charSequence.subSequence(i, i2 + 1).toString();
    }

    public String i(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!mo15151package(charSequence.charAt(i))) {
                return charSequence.subSequence(i, length).toString();
            }
        }
        return "";
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew mo15149if(Cnew cnew) {
        return new Cif(this, cnew);
    }

    @li0
    /* renamed from: implements, reason: not valid java name */
    public Cnew m15150implements() {
        String strSubstring;
        BitSet bitSet = new BitSet();
        d(bitSet);
        int iCardinality = bitSet.cardinality();
        if (iCardinality * 2 <= 65536) {
            return m15132instanceof(iCardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i = 65536 - iCardinality;
        String string = toString();
        if (string.endsWith(".negate()")) {
            strSubstring = string.substring(0, string.length() - 9);
        } else {
            strSubstring = string + ".negate()";
        }
        return new Cdo(m15132instanceof(i, bitSet, strSubstring), string);
    }

    public String j(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!mo15151package(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1).toString();
            }
        }
        return "";
    }

    /* renamed from: package, reason: not valid java name */
    public abstract boolean mo15151package(char c);

    /* renamed from: private, reason: not valid java name */
    public boolean mo15152private(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!mo15151package(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: protected, reason: not valid java name */
    public Cnew mo15153protected(Cnew cnew) {
        return new Cextends(this, cnew);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Cnew mo15154strictfp() {
        return new Cswitch(this);
    }

    /* renamed from: super, reason: not valid java name */
    public int mo15155super(CharSequence charSequence, int i) {
        int length = charSequence.length();
        af1.q(i, length);
        while (i < length) {
            if (mo15151package(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public String mo15156synchronized(CharSequence charSequence) {
        String string = charSequence.toString();
        int iMo15146final = mo15146final(string);
        if (iMo15146final == -1) {
            return string;
        }
        char[] charArray = string.toCharArray();
        int i = 1;
        while (true) {
            iMo15146final++;
            while (iMo15146final != charArray.length) {
                if (mo15151package(charArray[iMo15146final])) {
                    break;
                }
                charArray[iMo15146final - i] = charArray[iMo15146final];
                iMo15146final++;
            }
            return new String(charArray, 0, iMo15146final - i);
            i++;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public int mo15157this(CharSequence charSequence) {
        int i = 0;
        for (int i2 = 0; i2 < charSequence.length(); i2++) {
            if (mo15151package(charSequence.charAt(i2))) {
                i++;
            }
        }
        return i;
    }

    public String toString() {
        return super.toString();
    }

    /* renamed from: transient, reason: not valid java name */
    public Cnew mo15158transient() {
        return com.google.common.base.Cnative.m15109break(this);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    /* renamed from: try, reason: not valid java name */
    public boolean apply(Character ch) {
        return mo15151package(ch.charValue());
    }
}
