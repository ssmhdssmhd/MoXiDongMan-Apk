package net.minidev.json.parser;

import android.support.v4.ic1;
import com.alibaba.fastjson.parser.JSONLexer;
import java.io.IOException;
import java.io.Reader;
import net.minidev.json.Cnew;

/* renamed from: net.minidev.json.parser.case, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccase extends Celse {

    /* renamed from: extends, reason: not valid java name */
    private Reader f28216extends;

    public Ccase(int i) {
        super(i);
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: case, reason: not valid java name */
    public void mo31633case() throws IOException {
        int i = this.f28216extends.read();
        this.f28252do = i == -1 ? JSONLexer.EOI : (char) i;
        this.f28253else++;
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: catch, reason: not valid java name */
    public void mo31634catch() throws ic1, IOException {
        int i = this.f28216extends.read();
        if (i == -1) {
            throw new ic1(this.f28253else - 1, 3, "EOF");
        }
        this.f28252do = (char) i;
    }

    @Override // net.minidev.json.parser.Cif
    /* renamed from: final, reason: not valid java name */
    public void mo31635final() throws IOException {
        this.f28259new.m31678do(this.f28252do);
        int i = this.f28216extends.read();
        if (i == -1) {
            this.f28252do = JSONLexer.EOI;
        } else {
            this.f28252do = (char) i;
            this.f28253else++;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public Object m31636return(Reader reader) throws ic1 {
        return m31637static(reader, Cnew.f28214for.f28355if);
    }

    /* renamed from: static, reason: not valid java name */
    public <T> T m31637static(Reader reader, net.minidev.json.writer.Ccase<T> ccase) throws ic1 {
        this.f28257if = ccase.base;
        this.f28216extends = reader;
        return (T) super.m31672new(ccase);
    }
}
