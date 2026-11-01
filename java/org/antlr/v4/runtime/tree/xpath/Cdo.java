package org.antlr.v4.runtime.tree.xpath;

import android.support.v4.hp;
import android.support.v4.qc1;
import android.support.v4.qi2;
import android.support.v4.ri2;
import android.support.v4.si2;
import android.support.v4.ss0;
import android.support.v4.ti2;
import android.support.v4.ui2;
import android.support.v4.vi2;
import android.support.v4.wi2;
import android.support.v4.xi2;
import android.support.v4.yi2;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Cif;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.tree.ParseTree;

/* renamed from: org.antlr.v4.runtime.tree.xpath.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: new, reason: not valid java name */
    public static final String f28589new = "*";

    /* renamed from: try, reason: not valid java name */
    public static final String f28590try = "!";

    /* renamed from: do, reason: not valid java name */
    public String f28591do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f28592for;

    /* renamed from: if, reason: not valid java name */
    public qi2[] f28593if;

    /* renamed from: org.antlr.v4.runtime.tree.xpath.do$do, reason: invalid class name and collision with other inner class name */
    public class C0386do extends ri2 {
        public C0386do(CharStream charStream) {
            super(charStream);
        }

        @Override // android.support.v4.is0
        public void g(ss0 ss0Var) {
            throw ss0Var;
        }
    }

    public Cdo(Cgoto cgoto, String str) {
        this.f28592for = cgoto;
        this.f28591do = str;
        this.f28593if = m32103new(str);
    }

    /* renamed from: if, reason: not valid java name */
    public static Collection<ParseTree> m32100if(ParseTree parseTree, String str, Cgoto cgoto) {
        return new Cdo(cgoto, str).m32101do(parseTree);
    }

    /* renamed from: do, reason: not valid java name */
    public Collection<ParseTree> m32101do(ParseTree parseTree) {
        qc1 qc1Var = new qc1();
        qc1Var.f5339new = Collections.singletonList(parseTree);
        Set<ParseTree> setSingleton = Collections.singleton(qc1Var);
        int i = 0;
        while (i < this.f28593if.length) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (ParseTree parseTree2 : setSingleton) {
                if (parseTree2.getChildCount() > 0) {
                    linkedHashSet.addAll(this.f28593if[i].mo6605do(parseTree2));
                }
            }
            i++;
            setSingleton = linkedHashSet;
        }
        return setSingleton;
    }

    /* renamed from: for, reason: not valid java name */
    public qi2 m32102for(Token token, boolean z) {
        if (token.getType() == -1) {
            throw new IllegalArgumentException("Missing path element at end of path");
        }
        String text = token.getText();
        int iM32084while = this.f28592for.m32084while(text);
        int iO = this.f28592for.o(text);
        int type = token.getType();
        if (type != 1) {
            if (type == 5) {
                return z ? new xi2() : new yi2();
            }
            if (type != 8) {
                if (iO != -1) {
                    return z ? new ti2(text, iO) : new ui2(text, iO);
                }
                throw new IllegalArgumentException(text + " at index " + token.getStartIndex() + " isn't a valid rule name");
            }
        }
        if (iM32084while != 0) {
            return z ? new vi2(text, iM32084while) : new wi2(text, iM32084while);
        }
        throw new IllegalArgumentException(text + " at index " + token.getStartIndex() + " isn't a valid token name");
    }

    /* renamed from: new, reason: not valid java name */
    public qi2[] m32103new(String str) {
        try {
            C0386do c0386do = new C0386do(new Cif(new StringReader(str)));
            c0386do.m32079static();
            c0386do.m32075if(new si2());
            hp hpVar = new hp(c0386do);
            try {
                hpVar.m4360new();
                List<Token> listM4351catch = hpVar.m4351catch();
                ArrayList arrayList = new ArrayList();
                int size = listM4351catch.size();
                int i = 0;
                while (i < size) {
                    Token token = listM4351catch.get(i);
                    int type = token.getType();
                    if (type == -1) {
                        break;
                    }
                    if (type != 1 && type != 2) {
                        if (type == 3 || type == 4) {
                            boolean z = token.getType() == 3;
                            int i2 = i + 1;
                            Token token2 = listM4351catch.get(i2);
                            boolean z2 = token2.getType() == 6;
                            if (z2) {
                                i2++;
                                token2 = listM4351catch.get(i2);
                            }
                            qi2 qi2VarM32102for = m32102for(token2, z);
                            qi2VarM32102for.f5435if = z2;
                            arrayList.add(qi2VarM32102for);
                            i = i2 + 1;
                        } else if (type != 5) {
                            throw new IllegalArgumentException("Unknowth path element " + token);
                        }
                    }
                    arrayList.add(m32102for(token, false));
                    i++;
                }
                return (qi2[]) arrayList.toArray(new qi2[0]);
            } catch (ss0 e) {
                throw new IllegalArgumentException("Invalid tokens or characters at index " + c0386do.getCharPositionInLine() + " in path '" + str + "'", e);
            }
        } catch (IOException e2) {
            throw new IllegalArgumentException("Could not read path: " + str, e2);
        }
    }
}
