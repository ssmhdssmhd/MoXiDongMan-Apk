package org.mozilla.javascript;

import java.io.Serializable;
import java.util.ArrayDeque;

/* loaded from: classes3.dex */
public class ConsString implements CharSequence, Serializable {
    private static final long serialVersionUID = -8432806714471372570L;
    private boolean isFlat = false;
    private CharSequence left;
    private final int length;
    private CharSequence right;

    public ConsString(CharSequence charSequence, CharSequence charSequence2) {
        this.left = charSequence;
        this.right = charSequence2;
        this.length = charSequence.length() + this.right.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0041 A[Catch: all -> 0x005d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x0015, B:8:0x0019, B:10:0x001f, B:11:0x0022, B:17:0x0049, B:12:0x002a, B:15:0x0041, B:18:0x0057), top: B:26:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized String flatten() {
        if (!this.isFlat) {
            int length = this.length;
            char[] cArr = new char[length];
            ArrayDeque arrayDeque = new ArrayDeque();
            arrayDeque.addFirst(this.left);
            CharSequence charSequence = this.right;
            do {
                if (charSequence instanceof ConsString) {
                    ConsString consString = (ConsString) charSequence;
                    if (consString.isFlat) {
                        charSequence = consString.left;
                        String str = (String) charSequence;
                        length -= str.length();
                        str.getChars(0, str.length(), cArr, length);
                        charSequence = !arrayDeque.isEmpty() ? null : (CharSequence) arrayDeque.removeFirst();
                    } else {
                        arrayDeque.addFirst(consString.left);
                        charSequence = consString.right;
                    }
                } else {
                    String str2 = (String) charSequence;
                    length -= str2.length();
                    str2.getChars(0, str2.length(), cArr, length);
                    if (!arrayDeque.isEmpty()) {
                    }
                }
            } while (charSequence != null);
            this.left = new String(cArr);
            this.right = "";
            this.isFlat = true;
        }
        return (String) this.left;
    }

    private Object writeReplace() {
        return toString();
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return (this.isFlat ? (String) this.left : flatten()).charAt(i);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.length;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        return (this.isFlat ? (String) this.left : flatten()).substring(i, i2);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.isFlat ? (String) this.left : flatten();
    }
}
