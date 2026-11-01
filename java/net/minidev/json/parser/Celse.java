package net.minidev.json.parser;

import android.support.v4.ic1;
import java.io.IOException;

/* renamed from: net.minidev.json.parser.else, reason: invalid class name */
/* loaded from: classes3.dex */
abstract class Celse extends Cif {
    public Celse(int i) {
        super(i);
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: break, reason: not valid java name */
    public void mo31654break(boolean[] zArr) throws IOException {
        this.f28259new.m31679for();
        m31671native(zArr);
        this.f28248case = this.f28259new.toString().trim();
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: class, reason: not valid java name */
    public Object mo31655class(boolean[] zArr) throws ic1, IOException {
        this.f28259new.m31679for();
        this.f28259new.m31678do(this.f28252do);
        mo31633case();
        m31670import();
        char c = this.f28252do;
        if (c != '.' && c != 'E' && c != 'e') {
            m31673public();
            char c2 = this.f28252do;
            if (c2 < 0 || c2 >= '~' || zArr[c2] || c2 == 26) {
                String strTrim = this.f28259new.toString().trim();
                this.f28248case = strTrim;
                return m31676try(strTrim);
            }
            m31671native(zArr);
            String strTrim2 = this.f28259new.toString().trim();
            this.f28248case = strTrim2;
            if (this.f28247break) {
                return strTrim2;
            }
            throw new ic1(this.f28253else, 1, this.f28248case);
        }
        if (c == '.') {
            this.f28259new.m31678do(c);
            mo31633case();
            m31670import();
        }
        char c3 = this.f28252do;
        if (c3 != 'E' && c3 != 'e') {
            m31673public();
            char c4 = this.f28252do;
            if (c4 < 0 || c4 >= '~' || zArr[c4] || c4 == 26) {
                this.f28248case = this.f28259new.toString().trim();
                return m31667for();
            }
            m31671native(zArr);
            String strTrim3 = this.f28259new.toString().trim();
            this.f28248case = strTrim3;
            if (this.f28247break) {
                return strTrim3;
            }
            throw new ic1(this.f28253else, 1, this.f28248case);
        }
        this.f28259new.m31678do('E');
        mo31633case();
        char c5 = this.f28252do;
        if (c5 != '+' && c5 != '-' && (c5 < '0' || c5 > '9')) {
            m31671native(zArr);
            this.f28248case = this.f28259new.toString().trim();
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
            this.f28248case = this.f28259new.toString().trim();
            return m31667for();
        }
        m31671native(zArr);
        String strTrim4 = this.f28259new.toString().trim();
        this.f28248case = strTrim4;
        if (this.f28247break) {
            return strTrim4;
        }
        throw new ic1(this.f28253else, 1, this.f28248case);
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: super, reason: not valid java name */
    public void mo31656super() throws ic1, IOException {
        if (this.f28249catch || this.f28252do != '\'') {
            this.f28259new.m31679for();
            m31675throw();
        } else {
            if (!this.f28247break) {
                throw new ic1(this.f28253else, 0, Character.valueOf(this.f28252do));
            }
            mo31654break(Cif.f28243return);
        }
    }
}
