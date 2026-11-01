package org.apache.commons.lang3.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.lang3.Cclass;
import org.apache.commons.lang3.Cif;

/* renamed from: org.apache.commons.lang3.text.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements ListIterator<String>, Cloneable {

    /* renamed from: break, reason: not valid java name */
    private static final Ctry f28769break;

    /* renamed from: catch, reason: not valid java name */
    private static final Ctry f28770catch;

    /* renamed from: case, reason: not valid java name */
    private Cnew f28771case;

    /* renamed from: do, reason: not valid java name */
    private char[] f28772do;

    /* renamed from: else, reason: not valid java name */
    private Cnew f28773else;

    /* renamed from: for, reason: not valid java name */
    private int f28774for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f28775goto;

    /* renamed from: if, reason: not valid java name */
    private String[] f28776if;

    /* renamed from: new, reason: not valid java name */
    private Cnew f28777new;

    /* renamed from: this, reason: not valid java name */
    private boolean f28778this;

    /* renamed from: try, reason: not valid java name */
    private Cnew f28779try;

    static {
        Ctry ctry = new Ctry();
        f28769break = ctry;
        ctry.m32594interface(Cnew.m32564new());
        ctry.b(Cnew.m32567try());
        ctry.m32603synchronized(Cnew.m32562goto());
        ctry.c(Cnew.m32565super());
        ctry.m32605transient(false);
        ctry.m32591implements(false);
        Ctry ctry2 = new Ctry();
        f28770catch = ctry2;
        ctry2.m32594interface(Cnew.m32560final());
        ctry2.b(Cnew.m32567try());
        ctry2.m32603synchronized(Cnew.m32562goto());
        ctry2.c(Cnew.m32565super());
        ctry2.m32605transient(false);
        ctry2.m32591implements(false);
    }

    public Ctry() {
        this.f28777new = Cnew.m32557class();
        this.f28779try = Cnew.m32562goto();
        this.f28771case = Cnew.m32562goto();
        this.f28773else = Cnew.m32562goto();
        this.f28775goto = false;
        this.f28778this = true;
        this.f28772do = null;
    }

    /* renamed from: case, reason: not valid java name */
    public static Ctry m32570case() {
        return m32582try();
    }

    /* renamed from: const, reason: not valid java name */
    private static Ctry m32571const() {
        return (Ctry) f28770catch.clone();
    }

    /* renamed from: else, reason: not valid java name */
    public static Ctry m32572else(String str) {
        Ctry ctryM32582try = m32582try();
        ctryM32582try.m32583abstract(str);
        return ctryM32582try;
    }

    /* renamed from: final, reason: not valid java name */
    public static Ctry m32573final() {
        return m32571const();
    }

    /* renamed from: finally, reason: not valid java name */
    private int m32574finally(char[] cArr, int i, int i2, Cif cif, List<String> list) {
        while (i < i2) {
            int iMax = Math.max(m32585catch().mo32569else(cArr, i, i, i2), m32595native().mo32569else(cArr, i, i, i2));
            if (iMax == 0 || m32584break().mo32569else(cArr, i, i, i2) > 0 || m32586class().mo32569else(cArr, i, i, i2) > 0) {
                break;
            }
            i += iMax;
        }
        if (i >= i2) {
            m32577if(list, "");
            return -1;
        }
        int iMo32569else = m32584break().mo32569else(cArr, i, i, i2);
        if (iMo32569else > 0) {
            m32577if(list, "");
            return i + iMo32569else;
        }
        int iMo32569else2 = m32586class().mo32569else(cArr, i, i, i2);
        return iMo32569else2 > 0 ? m32578package(cArr, i + iMo32569else2, i2, cif, list, i, iMo32569else2) : m32578package(cArr, i, i2, cif, list, 0, 0);
    }

    /* renamed from: for, reason: not valid java name */
    private void m32575for() {
        if (this.f28776if == null) {
            char[] cArr = this.f28772do;
            if (cArr == null) {
                List<String> listE = e(null, 0, 0);
                this.f28776if = (String[]) listE.toArray(new String[listE.size()]);
            } else {
                List<String> listE2 = e(cArr, 0, cArr.length);
                this.f28776if = (String[]) listE2.toArray(new String[listE2.size()]);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Ctry m32576goto(char[] cArr) {
        Ctry ctryM32582try = m32582try();
        ctryM32582try.m32587continue(cArr);
        return ctryM32582try;
    }

    /* renamed from: if, reason: not valid java name */
    private void m32577if(List<String> list, String str) {
        if (Cclass.A(str)) {
            if (m32600return()) {
                return;
            }
            if (m32599public()) {
                str = null;
            }
        }
        list.add(str);
    }

    /* renamed from: package, reason: not valid java name */
    private int m32578package(char[] cArr, int i, int i2, Cif cif, List<String> list, int i3, int i4) {
        cif.clear();
        boolean z = i4 > 0;
        int i5 = i;
        int size = 0;
        while (i5 < i2) {
            if (z) {
                int i6 = size;
                int i7 = i5;
                if (m32579static(cArr, i5, i2, i3, i4)) {
                    int i8 = i7 + i4;
                    if (m32579static(cArr, i8, i2, i3, i4)) {
                        cif.append(cArr, i7, i4);
                        i5 = i7 + (i4 * 2);
                        size = cif.size();
                    } else {
                        size = i6;
                        i5 = i8;
                        z = false;
                    }
                } else {
                    i5 = i7 + 1;
                    cif.append(cArr[i7]);
                    size = cif.size();
                }
            } else {
                int i9 = size;
                int i10 = i5;
                int iMo32569else = m32584break().mo32569else(cArr, i10, i, i2);
                if (iMo32569else > 0) {
                    m32577if(list, cif.substring(0, i9));
                    return i10 + iMo32569else;
                }
                if (i4 <= 0 || !m32579static(cArr, i10, i2, i3, i4)) {
                    int iMo32569else2 = m32585catch().mo32569else(cArr, i10, i, i2);
                    if (iMo32569else2 <= 0) {
                        iMo32569else2 = m32595native().mo32569else(cArr, i10, i, i2);
                        if (iMo32569else2 > 0) {
                            cif.append(cArr, i10, iMo32569else2);
                        } else {
                            i5 = i10 + 1;
                            cif.append(cArr[i10]);
                            size = cif.size();
                        }
                    }
                    i5 = i10 + iMo32569else2;
                    size = i9;
                } else {
                    i5 = i10 + i4;
                    size = i9;
                    z = true;
                }
            }
        }
        m32577if(list, cif.substring(0, size));
        return -1;
    }

    /* renamed from: static, reason: not valid java name */
    private boolean m32579static(char[] cArr, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = i + i5;
            if (i6 >= i2 || cArr[i6] != cArr[i3 + i5]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: super, reason: not valid java name */
    public static Ctry m32580super(String str) {
        Ctry ctryM32571const = m32571const();
        ctryM32571const.m32583abstract(str);
        return ctryM32571const;
    }

    /* renamed from: throw, reason: not valid java name */
    public static Ctry m32581throw(char[] cArr) {
        Ctry ctryM32571const = m32571const();
        ctryM32571const.m32587continue(cArr);
        return ctryM32571const;
    }

    /* renamed from: try, reason: not valid java name */
    private static Ctry m32582try() {
        return (Ctry) f28769break.clone();
    }

    public Ctry a(char c) {
        return b(Cnew.m32559do(c));
    }

    /* renamed from: abstract, reason: not valid java name */
    public Ctry m32583abstract(String str) {
        m32597private();
        if (str != null) {
            this.f28772do = str.toCharArray();
        } else {
            this.f28772do = null;
        }
        return this;
    }

    public Ctry b(Cnew cnew) {
        if (cnew != null) {
            this.f28779try = cnew;
        }
        return this;
    }

    /* renamed from: break, reason: not valid java name */
    public Cnew m32584break() {
        return this.f28777new;
    }

    public Ctry c(Cnew cnew) {
        if (cnew != null) {
            this.f28773else = cnew;
        }
        return this;
    }

    /* renamed from: catch, reason: not valid java name */
    public Cnew m32585catch() {
        return this.f28771case;
    }

    /* renamed from: class, reason: not valid java name */
    public Cnew m32586class() {
        return this.f28779try;
    }

    public Object clone() {
        try {
            return m32596new();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public Ctry m32587continue(char[] cArr) {
        m32597private();
        this.f28772do = Cif.m32405abstract(cArr);
        return this;
    }

    public int d() {
        m32575for();
        return this.f28776if.length;
    }

    @Override // java.util.ListIterator
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public String previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        String[] strArr = this.f28776if;
        int i = this.f28774for - 1;
        this.f28774for = i;
        return strArr[i];
    }

    @Override // java.util.ListIterator
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public void add(String str) {
        throw new UnsupportedOperationException("add() is unsupported");
    }

    public List<String> e(char[] cArr, int i, int i2) {
        if (cArr == null || i2 == 0) {
            return Collections.emptyList();
        }
        Cif cif = new Cif();
        ArrayList arrayList = new ArrayList();
        int iM32574finally = i;
        while (iM32574finally >= 0 && iM32574finally < i2) {
            iM32574finally = m32574finally(cArr, iM32574finally, i2, cif, arrayList);
            if (iM32574finally >= i2) {
                m32577if(arrayList, "");
            }
        }
        return arrayList;
    }

    /* renamed from: extends, reason: not valid java name */
    public String m32590extends() {
        if (!hasPrevious()) {
            return null;
        }
        String[] strArr = this.f28776if;
        int i = this.f28774for - 1;
        this.f28774for = i;
        return strArr[i];
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        m32575for();
        return this.f28774for < this.f28776if.length;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        m32575for();
        return this.f28774for > 0;
    }

    /* renamed from: implements, reason: not valid java name */
    public Ctry m32591implements(boolean z) {
        this.f28778this = z;
        return this;
    }

    /* renamed from: import, reason: not valid java name */
    public List<String> m32592import() {
        m32575for();
        ArrayList arrayList = new ArrayList(this.f28776if.length);
        for (String str : this.f28776if) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public Ctry m32593instanceof(char c) {
        return m32603synchronized(Cnew.m32559do(c));
    }

    /* renamed from: interface, reason: not valid java name */
    public Ctry m32594interface(Cnew cnew) {
        if (cnew == null) {
            this.f28777new = Cnew.m32562goto();
        } else {
            this.f28777new = cnew;
        }
        return this;
    }

    /* renamed from: native, reason: not valid java name */
    public Cnew m32595native() {
        return this.f28773else;
    }

    /* renamed from: new, reason: not valid java name */
    public Object m32596new() throws CloneNotSupportedException {
        Ctry ctry = (Ctry) super.clone();
        char[] cArr = ctry.f28772do;
        if (cArr != null) {
            ctry.f28772do = (char[]) cArr.clone();
        }
        ctry.m32597private();
        return ctry;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.f28774for;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.f28774for - 1;
    }

    /* renamed from: private, reason: not valid java name */
    public Ctry m32597private() {
        this.f28774for = 0;
        this.f28776if = null;
        return this;
    }

    /* renamed from: protected, reason: not valid java name */
    public Ctry m32598protected(String str) {
        return m32594interface(Cnew.m32558const(str));
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m32599public() {
        return this.f28775goto;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is unsupported");
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m32600return() {
        return this.f28778this;
    }

    @Override // java.util.ListIterator
    /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
    public void set(String str) {
        throw new UnsupportedOperationException("set() is unsupported");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        String[] strArr = this.f28776if;
        int i = this.f28774for;
        this.f28774for = i + 1;
        return strArr[i];
    }

    /* renamed from: synchronized, reason: not valid java name */
    public Ctry m32603synchronized(Cnew cnew) {
        if (cnew != null) {
            this.f28771case = cnew;
        }
        return this;
    }

    /* renamed from: this */
    public String mo32554this() {
        char[] cArr = this.f28772do;
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    /* renamed from: throws, reason: not valid java name */
    public String m32604throws() {
        if (!hasNext()) {
            return null;
        }
        String[] strArr = this.f28776if;
        int i = this.f28774for;
        this.f28774for = i + 1;
        return strArr[i];
    }

    public String toString() {
        if (this.f28776if == null) {
            return "StrTokenizer[not tokenized yet]";
        }
        return "StrTokenizer" + m32592import();
    }

    /* renamed from: transient, reason: not valid java name */
    public Ctry m32605transient(boolean z) {
        this.f28775goto = z;
        return this;
    }

    /* renamed from: volatile, reason: not valid java name */
    public Ctry m32606volatile(char c) {
        return m32594interface(Cnew.m32559do(c));
    }

    /* renamed from: while, reason: not valid java name */
    public String[] m32607while() {
        m32575for();
        return (String[]) this.f28776if.clone();
    }

    public Ctry(String str) {
        this.f28777new = Cnew.m32557class();
        this.f28779try = Cnew.m32562goto();
        this.f28771case = Cnew.m32562goto();
        this.f28773else = Cnew.m32562goto();
        this.f28775goto = false;
        this.f28778this = true;
        if (str != null) {
            this.f28772do = str.toCharArray();
        } else {
            this.f28772do = null;
        }
    }

    public Ctry(String str, char c) {
        this(str);
        m32606volatile(c);
    }

    public Ctry(String str, String str2) {
        this(str);
        m32598protected(str2);
    }

    public Ctry(String str, Cnew cnew) {
        this(str);
        m32594interface(cnew);
    }

    public Ctry(String str, char c, char c2) {
        this(str, c);
        a(c2);
    }

    public Ctry(String str, Cnew cnew, Cnew cnew2) {
        this(str, cnew);
        b(cnew2);
    }

    public Ctry(char[] cArr) {
        this.f28777new = Cnew.m32557class();
        this.f28779try = Cnew.m32562goto();
        this.f28771case = Cnew.m32562goto();
        this.f28773else = Cnew.m32562goto();
        this.f28775goto = false;
        this.f28778this = true;
        this.f28772do = Cif.m32405abstract(cArr);
    }

    public Ctry(char[] cArr, char c) {
        this(cArr);
        m32606volatile(c);
    }

    public Ctry(char[] cArr, String str) {
        this(cArr);
        m32598protected(str);
    }

    public Ctry(char[] cArr, Cnew cnew) {
        this(cArr);
        m32594interface(cnew);
    }

    public Ctry(char[] cArr, char c, char c2) {
        this(cArr, c);
        a(c2);
    }

    public Ctry(char[] cArr, Cnew cnew, Cnew cnew2) {
        this(cArr, cnew);
        b(cnew2);
    }
}
