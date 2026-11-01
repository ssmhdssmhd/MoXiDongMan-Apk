package net.minidev.json.parser;

import android.support.v4.ic1;
import java.io.IOException;

/* renamed from: net.minidev.json.parser.try, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Ctry extends Cif {

    /* renamed from: extends, reason: not valid java name */
    public int f28267extends;

    public Ctry(int i) {
        super(i);
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: break */
    public void mo31654break(boolean[] zArr) throws IOException {
        int i = this.f28253else;
        m31671native(zArr);
        mo31659static(i, this.f28253else);
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: class */
    public Object mo31655class(boolean[] zArr) throws ic1, IOException {
        int i = this.f28253else;
        mo31633case();
        m31670import();
        char c = this.f28252do;
        if (c != '.' && c != 'E' && c != 'e') {
            m31673public();
            char c2 = this.f28252do;
            if (c2 < 0 || c2 >= '~' || zArr[c2] || c2 == 26) {
                mo31659static(i, this.f28253else);
                return m31676try(this.f28248case);
            }
            m31671native(zArr);
            mo31659static(i, this.f28253else);
            if (this.f28247break) {
                return this.f28248case;
            }
            throw new ic1(this.f28253else, 1, this.f28248case);
        }
        if (c == '.') {
            mo31633case();
            m31670import();
        }
        char c3 = this.f28252do;
        if (c3 != 'E' && c3 != 'e') {
            m31673public();
            char c4 = this.f28252do;
            if (c4 < 0 || c4 >= '~' || zArr[c4] || c4 == 26) {
                mo31659static(i, this.f28253else);
                return m31667for();
            }
            m31671native(zArr);
            mo31659static(i, this.f28253else);
            if (this.f28247break) {
                return this.f28248case;
            }
            throw new ic1(this.f28253else, 1, this.f28248case);
        }
        this.f28259new.m31678do('E');
        mo31633case();
        char c5 = this.f28252do;
        if (c5 != '+' && c5 != '-' && (c5 < '0' || c5 > '9')) {
            m31671native(zArr);
            mo31659static(i, this.f28253else);
            if (!this.f28247break) {
                throw new ic1(this.f28253else, 1, this.f28248case);
            }
            if (!this.f28256goto) {
                m31669if();
            }
            return this.f28248case;
        }
        this.f28259new.m31678do(c5);
        mo31633case();
        m31670import();
        m31673public();
        char c6 = this.f28252do;
        if (c6 < 0 || c6 >= '~' || zArr[c6] || c6 == 26) {
            mo31659static(i, this.f28253else);
            return m31667for();
        }
        m31671native(zArr);
        mo31659static(i, this.f28253else);
        if (this.f28247break) {
            return this.f28248case;
        }
        throw new ic1(this.f28253else, 1, this.f28248case);
    }

    /* renamed from: return */
    public abstract void mo31658return(int i, int i2);

    /* renamed from: static */
    public abstract void mo31659static(int i, int i2);

    @Override // net.minidev.json.parser.Cif
    /* renamed from: super */
    public void mo31656super() throws ic1, IOException {
        if (!this.f28249catch && this.f28252do == '\'') {
            if (!this.f28247break) {
                throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
            }
            mo31654break(Cif.f28243return);
            return;
        }
        int iMo31660switch = mo31660switch(this.f28252do, this.f28253else + 1);
        if (iMo31660switch == -1) {
            throw new ic1(this.f28267extends, 3, null);
        }
        mo31658return(this.f28253else + 1, iMo31660switch);
        if (this.f28248case.indexOf(92) != -1) {
            this.f28259new.m31679for();
            m31675throw();
        } else {
            m31665do();
            this.f28253else = iMo31660switch;
            mo31633case();
        }
    }

    /* renamed from: switch */
    public abstract int mo31660switch(char c, int i);
}
