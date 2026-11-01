package net.minidev.json.parser;

import android.support.v4.ic1;
import com.alibaba.fastjson.parser.JSONLexer;
import net.minidev.json.Cnew;
import net.minidev.json.writer.Ccase;

/* renamed from: net.minidev.json.parser.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor extends Ctry {

    /* renamed from: finally, reason: not valid java name */
    private byte[] f28238finally;

    public Cfor(int i) {
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
            this.f28252do = (char) this.f28238finally[i];
        }
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: catch */
    public void mo31634catch() throws ic1 {
        int i = this.f28253else + 1;
        this.f28253else = i;
        if (i < this.f28267extends) {
            this.f28252do = (char) this.f28238finally[i];
        } else {
            this.f28252do = JSONLexer.EOI;
            throw new ic1(this.f28253else - 1, 3, "EOF");
        }
    }

    /* renamed from: default, reason: not valid java name */
    public <T> T m31657default(byte[] bArr, Ccase<T> ccase) throws ic1 {
        this.f28257if = ccase.base;
        this.f28238finally = bArr;
        this.f28267extends = bArr.length;
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
            this.f28252do = (char) this.f28238finally[i];
        }
    }

    @Override // net.minidev.json.parser.Ctry
    /* renamed from: return, reason: not valid java name */
    public void mo31658return(int i, int i2) {
        this.f28248case = new String(this.f28238finally, i, i2 - i);
    }

    @Override // net.minidev.json.parser.Ctry
    /* renamed from: static, reason: not valid java name */
    public void mo31659static(int i, int i2) {
        byte[] bArr = this.f28238finally;
        while (i < i2 && bArr[i] <= 32) {
            i++;
        }
        while (i < i2 && bArr[i2 - 1] <= 32) {
            i2--;
        }
        this.f28248case = new String(this.f28238finally, i, i2 - i);
    }

    @Override // net.minidev.json.parser.Ctry
    /* renamed from: switch, reason: not valid java name */
    public int mo31660switch(char c, int i) {
        int i2 = i;
        while (i < this.f28267extends) {
            if (this.f28238finally[i2] == ((byte) c)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    /* renamed from: throws, reason: not valid java name */
    public Object m31661throws(byte[] bArr) throws ic1 {
        return m31657default(bArr, Cnew.f28214for.f28355if);
    }
}
