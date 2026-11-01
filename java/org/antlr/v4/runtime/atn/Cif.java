package org.antlr.v4.runtime.atn;

import android.support.v4.is0;
import android.support.v4.os0;
import android.support.v4.y01;
import java.util.Arrays;
import org.antlr.v4.runtime.CharStream;

/* renamed from: org.antlr.v4.runtime.atn.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private final LexerAction[] f28477do;

    /* renamed from: if, reason: not valid java name */
    private final int f28478if;

    public Cif(LexerAction[] lexerActionArr) {
        this.f28477do = lexerActionArr;
        int iM9665for = y01.m9665for();
        for (LexerAction lexerAction : lexerActionArr) {
            iM9665for = y01.m9663case(iM9665for, lexerAction);
        }
        this.f28478if = y01.m9664do(iM9665for, lexerActionArr.length);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cif m31891do(Cif cif, LexerAction lexerAction) {
        if (cif == null) {
            return new Cif(new LexerAction[]{lexerAction});
        }
        LexerAction[] lexerActionArr = cif.f28477do;
        LexerAction[] lexerActionArr2 = (LexerAction[]) Arrays.copyOf(lexerActionArr, lexerActionArr.length + 1);
        lexerActionArr2[lexerActionArr2.length - 1] = lexerAction;
        return new Cif(lexerActionArr2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return this.f28478if == cif.f28478if && Arrays.equals(this.f28477do, cif.f28477do);
    }

    /* renamed from: for, reason: not valid java name */
    public Cif m31892for(int i) {
        LexerAction[] lexerActionArr = null;
        int i2 = 0;
        while (true) {
            LexerAction[] lexerActionArr2 = this.f28477do;
            if (i2 >= lexerActionArr2.length) {
                break;
            }
            if (lexerActionArr2[i2].isPositionDependent()) {
                LexerAction[] lexerActionArr3 = this.f28477do;
                if (!(lexerActionArr3[i2] instanceof os0)) {
                    if (lexerActionArr == null) {
                        lexerActionArr = (LexerAction[]) lexerActionArr3.clone();
                    }
                    lexerActionArr[i2] = new os0(i, this.f28477do[i2]);
                }
            }
            i2++;
        }
        return lexerActionArr == null ? this : new Cif(lexerActionArr);
    }

    public int hashCode() {
        return this.f28478if;
    }

    /* renamed from: if, reason: not valid java name */
    public void m31893if(is0 is0Var, CharStream charStream, int i) {
        int iIndex = charStream.index();
        boolean z = false;
        try {
            LexerAction[] lexerActionArr = this.f28477do;
            int length = lexerActionArr.length;
            boolean z2 = false;
            for (int i2 = 0; i2 < length; i2++) {
                try {
                    LexerAction lexerActionM5748do = lexerActionArr[i2];
                    if (lexerActionM5748do instanceof os0) {
                        int iM5749if = ((os0) lexerActionM5748do).m5749if() + i;
                        charStream.seek(iM5749if);
                        lexerActionM5748do = ((os0) lexerActionM5748do).m5748do();
                        z2 = iM5749if != iIndex;
                    } else if (lexerActionM5748do.isPositionDependent()) {
                        charStream.seek(iIndex);
                    }
                    lexerActionM5748do.execute(is0Var);
                } catch (Throwable th) {
                    th = th;
                    z = z2;
                    if (z) {
                        charStream.seek(iIndex);
                    }
                    throw th;
                }
            }
            if (z2) {
                charStream.seek(iIndex);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public LexerAction[] m31894new() {
        return this.f28477do;
    }
}
