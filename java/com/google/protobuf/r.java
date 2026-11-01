package com.google.protobuf;

import java.io.IOException;
import java.util.Objects;

/* loaded from: classes2.dex */
public class r {

    /* renamed from: try, reason: not valid java name */
    private static final Cimplements f17175try = Cimplements.m20607new();

    /* renamed from: do, reason: not valid java name */
    private ByteString f17176do;

    /* renamed from: for, reason: not valid java name */
    public volatile MessageLite f17177for;

    /* renamed from: if, reason: not valid java name */
    private Cimplements f17178if;

    /* renamed from: new, reason: not valid java name */
    private volatile ByteString f17179new;

    public r(Cimplements cimplements, ByteString byteString) {
        m21032do(cimplements, byteString);
        this.f17178if = cimplements;
        this.f17176do = byteString;
    }

    /* renamed from: break, reason: not valid java name */
    private static MessageLite m21031break(MessageLite messageLite, ByteString byteString, Cimplements cimplements) {
        try {
            return messageLite.toBuilder().mergeFrom(byteString, cimplements).build();
        } catch (n unused) {
            return messageLite;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static void m21032do(Cimplements cimplements, ByteString byteString) {
        Objects.requireNonNull(cimplements, "found null ExtensionRegistry");
        Objects.requireNonNull(byteString, "found null ByteString");
    }

    /* renamed from: try, reason: not valid java name */
    public static r m21033try(MessageLite messageLite) {
        r rVar = new r();
        rVar.m21037const(messageLite);
        return rVar;
    }

    /* renamed from: case, reason: not valid java name */
    public int m21034case() {
        if (this.f17179new != null) {
            return this.f17179new.size();
        }
        ByteString byteString = this.f17176do;
        if (byteString != null) {
            return byteString.size();
        }
        if (this.f17177for != null) {
            return this.f17177for.getSerializedSize();
        }
        return 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m21035catch(r rVar) {
        this.f17176do = rVar.f17176do;
        this.f17177for = rVar.f17177for;
        this.f17179new = rVar.f17179new;
        Cimplements cimplements = rVar.f17178if;
        if (cimplements != null) {
            this.f17178if = cimplements;
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m21036class(ByteString byteString, Cimplements cimplements) {
        m21032do(cimplements, byteString);
        this.f17176do = byteString;
        this.f17178if = cimplements;
        this.f17177for = null;
        this.f17179new = null;
    }

    /* renamed from: const, reason: not valid java name */
    public MessageLite m21037const(MessageLite messageLite) {
        MessageLite messageLite2 = this.f17177for;
        this.f17176do = null;
        this.f17179new = null;
        this.f17177for = messageLite;
        return messageLite2;
    }

    /* renamed from: else, reason: not valid java name */
    public MessageLite m21038else(MessageLite messageLite) {
        m21042new(messageLite);
        return this.f17177for;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        MessageLite messageLite = this.f17177for;
        MessageLite messageLite2 = rVar.f17177for;
        return (messageLite == null && messageLite2 == null) ? m21039final().equals(rVar.m21039final()) : (messageLite == null || messageLite2 == null) ? messageLite != null ? messageLite.equals(rVar.m21038else(messageLite.getDefaultInstanceForType())) : m21038else(messageLite2.getDefaultInstanceForType()).equals(messageLite2) : messageLite.equals(messageLite2);
    }

    /* renamed from: final, reason: not valid java name */
    public ByteString m21039final() {
        if (this.f17179new != null) {
            return this.f17179new;
        }
        ByteString byteString = this.f17176do;
        if (byteString != null) {
            return byteString;
        }
        synchronized (this) {
            if (this.f17179new != null) {
                return this.f17179new;
            }
            if (this.f17177for == null) {
                this.f17179new = ByteString.EMPTY;
            } else {
                this.f17179new = this.f17177for.toByteString();
            }
            return this.f17179new;
        }
    }

    /* renamed from: for */
    public boolean mo20998for() {
        ByteString byteString;
        ByteString byteString2 = this.f17179new;
        ByteString byteString3 = ByteString.EMPTY;
        return byteString2 == byteString3 || (this.f17177for == null && ((byteString = this.f17176do) == null || byteString == byteString3));
    }

    /* renamed from: goto, reason: not valid java name */
    public void m21040goto(r rVar) {
        ByteString byteString;
        if (rVar.mo20998for()) {
            return;
        }
        if (mo20998for()) {
            m21035catch(rVar);
            return;
        }
        if (this.f17178if == null) {
            this.f17178if = rVar.f17178if;
        }
        ByteString byteString2 = this.f17176do;
        if (byteString2 != null && (byteString = rVar.f17176do) != null) {
            this.f17176do = byteString2.concat(byteString);
            return;
        }
        if (this.f17177for == null && rVar.f17177for != null) {
            m21037const(m21031break(rVar.f17177for, this.f17176do, this.f17178if));
        } else if (this.f17177for == null || rVar.f17177for != null) {
            m21037const(this.f17177for.toBuilder().mergeFrom(rVar.f17177for).build());
        } else {
            m21037const(m21031break(this.f17177for, rVar.f17176do, rVar.f17178if));
        }
    }

    public int hashCode() {
        return 1;
    }

    /* renamed from: if, reason: not valid java name */
    public void m21041if() {
        this.f17176do = null;
        this.f17177for = null;
        this.f17179new = null;
    }

    /* renamed from: new, reason: not valid java name */
    public void m21042new(MessageLite messageLite) {
        if (this.f17177for != null) {
            return;
        }
        synchronized (this) {
            if (this.f17177for != null) {
                return;
            }
            try {
                if (this.f17176do != null) {
                    this.f17177for = messageLite.getParserForType().parseFrom(this.f17176do, this.f17178if);
                    this.f17179new = this.f17176do;
                } else {
                    this.f17177for = messageLite;
                    this.f17179new = ByteString.EMPTY;
                }
            } catch (n unused) {
                this.f17177for = messageLite;
                this.f17179new = ByteString.EMPTY;
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public void m21043super(Writer writer, int i) throws IOException {
        if (this.f17179new != null) {
            writer.writeBytes(i, this.f17179new);
            return;
        }
        ByteString byteString = this.f17176do;
        if (byteString != null) {
            writer.writeBytes(i, byteString);
        } else if (this.f17177for != null) {
            writer.writeMessage(i, this.f17177for);
        } else {
            writer.writeBytes(i, ByteString.EMPTY);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public void m21044this(CodedInputStream codedInputStream, Cimplements cimplements) throws IOException {
        if (mo20998for()) {
            m21036class(codedInputStream.mo18443throws(), cimplements);
            return;
        }
        if (this.f17178if == null) {
            this.f17178if = cimplements;
        }
        ByteString byteString = this.f17176do;
        if (byteString != null) {
            m21036class(byteString.concat(codedInputStream.mo18443throws()), this.f17178if);
        } else {
            try {
                m21037const(this.f17177for.toBuilder().mergeFrom(codedInputStream, cimplements).build());
            } catch (n unused) {
            }
        }
    }

    public r() {
    }
}
