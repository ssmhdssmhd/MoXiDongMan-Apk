package net.minidev.json.parser;

import android.support.v4.ic1;
import com.alibaba.fastjson.parser.JSONLexer;
import net.minidev.json.Cnew;
import net.minidev.json.writer.Ccase;

/* renamed from: net.minidev.json.parser.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto extends Ctry {

    /* renamed from: finally, reason: not valid java name */
    private String f28239finally;

    public Cgoto(int i) {
        super(i);
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: case */
    public void mo31633case() {
        int i = this.f28253else + 1;
        this.f28253else = i;
        if (i >= this.f28267extends) {
            this.f28252do = JSONLexer.EOI;
        } else {
            this.f28252do = this.f28239finally.charAt(i);
        }
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: catch */
    public void mo31634catch() throws ic1 {
        int i = this.f28253else + 1;
        this.f28253else = i;
        if (i < this.f28267extends) {
            this.f28252do = this.f28239finally.charAt(i);
        } else {
            this.f28252do = JSONLexer.EOI;
            throw new ic1(this.f28253else - 1, 3, "EOF");
        }
    }

    /* renamed from: default, reason: not valid java name */
    public <T> T m31662default(String str, Ccase<T> ccase) throws ic1 {
        this.f28257if = ccase.base;
        this.f28239finally = str;
        this.f28267extends = str.length();
        return (T) m31672new(ccase);
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: final */
    public void mo31635final() {
        int i = this.f28253else + 1;
        this.f28253else = i;
        if (i >= this.f28267extends) {
            this.f28252do = JSONLexer.EOI;
        } else {
            this.f28252do = this.f28239finally.charAt(i);
        }
    }

    @Override // net.minidev.json.parser.Ctry
    /* renamed from: return */
    public void mo31658return(int i, int i2) {
        this.f28248case = this.f28239finally.substring(i, i2);
    }

    @Override // net.minidev.json.parser.Ctry
    /* renamed from: static */
    public void mo31659static(int i, int i2) {
        while (i < i2 - 1 && Character.isWhitespace(this.f28239finally.charAt(i))) {
            i++;
        }
        while (true) {
            int i3 = i2 - 1;
            if (i3 <= i || !Character.isWhitespace(this.f28239finally.charAt(i3))) {
                break;
            } else {
                i2--;
            }
        }
        mo31658return(i, i2);
    }

    @Override // net.minidev.json.parser.Ctry
    /* renamed from: switch */
    public int mo31660switch(char c, int i) {
        return this.f28239finally.indexOf(c, i);
    }

    /* renamed from: throws, reason: not valid java name */
    public Object m31663throws(String str) throws ic1 {
        return m31662default(str, Cnew.f28214for.f28355if);
    }
}
