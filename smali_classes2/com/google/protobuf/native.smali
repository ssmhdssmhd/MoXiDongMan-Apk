.class public abstract Lcom/google/protobuf/native;
.super Lcom/google/protobuf/throw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/native$else;,
        Lcom/google/protobuf/native$new;,
        Lcom/google/protobuf/native$if;,
        Lcom/google/protobuf/native$this;,
        Lcom/google/protobuf/native$goto;,
        Lcom/google/protobuf/native$try;,
        Lcom/google/protobuf/native$for;,
        Lcom/google/protobuf/native$case;
    }
.end annotation


# static fields
.field public static final case:I = 0x1000

.field private static final for:Ljava/util/logging/Logger;

.field private static final new:Z

.field public static final try:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public do:Lcom/google/protobuf/public;

.field private if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/native;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/native;->for:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/protobuf/z1;->f()Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/native;->new:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/throw;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/native$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/native;-><init>()V

    return-void
.end method

.method public static C(Lcom/google/protobuf/throw;I)Lcom/google/protobuf/native;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    new-instance v0, Lcom/google/protobuf/native$new;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/native$new;-><init>(Lcom/google/protobuf/throw;I)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D(Ljava/io/OutputStream;)Lcom/google/protobuf/native;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p0, v0}, Lcom/google/protobuf/native;->E(Ljava/io/OutputStream;I)Lcom/google/protobuf/native;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/io/OutputStream;I)Lcom/google/protobuf/native;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/native$else;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/native$else;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static F(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/native;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/native$try;

    invoke-direct {v0, p0}, Lcom/google/protobuf/native$try;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/google/protobuf/native$this;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lcom/google/protobuf/native;->K(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/native;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lcom/google/protobuf/native;->J(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/native;

    move-result-object p0

    :goto_0
    return-object p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static G(Ljava/nio/ByteBuffer;I)Lcom/google/protobuf/native;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->F(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/native;

    move-result-object p0

    return-object p0
.end method

.method public static H([B)Lcom/google/protobuf/native;
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/native;->I([BII)Lcom/google/protobuf/native;

    move-result-object p0

    return-object p0
.end method

.method public static I([BII)Lcom/google/protobuf/native;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/native$for;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/native$for;-><init>([BII)V

    return-object v0
.end method

.method public static J(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/native;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/native$goto;

    invoke-direct {v0, p0}, Lcom/google/protobuf/native$goto;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static K(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/native;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/protobuf/native$this;

    invoke-direct {v0, p0}, Lcom/google/protobuf/native$this;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static a(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->c(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static abstract(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->continue(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Lcom/google/protobuf/MessageLite;)I
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/native;->implements(I)I

    move-result p0

    return p0
.end method

.method public static break(I[B)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->catch([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/native;->implements(I)I

    move-result p0

    return p0
.end method

.method public static synthetic case()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/protobuf/native;->new:Z

    return v0
.end method

.method public static catch([B)I
    .locals 0

    .line 1
    array-length p0, p0

    invoke-static {p0}, Lcom/google/protobuf/native;->implements(I)I

    move-result p0

    return p0
.end method

.method public static class(ILjava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->const(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static const(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/native;->implements(I)I

    move-result p0

    return p0
.end method

.method public static continue(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->t(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static d(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static default(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static e(ILcom/google/protobuf/ByteString;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/protobuf/native;->r(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/protobuf/native;->s(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/protobuf/native;->final(ILcom/google/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static extends(ILcom/google/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/google/protobuf/native;->package(Lcom/google/protobuf/MessageLite;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->t(I)I

    move-result p0

    return p0
.end method

.method public static final(ILcom/google/protobuf/ByteString;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->super(Lcom/google/protobuf/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static finally(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->private(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(J)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/native;->v(J)I

    move-result p0

    return p0
.end method

.method public static goto(IZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->this(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->i(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static i(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static implements(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->t(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static import(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->native(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static instanceof(ILcom/google/protobuf/MessageLite;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/protobuf/native;->r(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/protobuf/native;->s(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/protobuf/native;->synchronized(ILcom/google/protobuf/MessageLite;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static interface(ILcom/google/protobuf/r;)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/protobuf/native;->r(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/protobuf/native;->s(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/protobuf/native;->protected(ILcom/google/protobuf/r;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static j(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->k(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static k(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static l(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->m(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static m(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->w(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/native;->t(I)I

    move-result p0

    return p0
.end method

.method public static n(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->o(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static native(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->continue(I)I

    move-result p0

    return p0
.end method

.method public static o(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/native;->x(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/native;->v(J)I

    move-result p0

    return p0
.end method

.method public static p(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->q(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static package(Lcom/google/protobuf/MessageLite;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static private(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p0, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result p0

    return p0
.end method

.method public static protected(ILcom/google/protobuf/r;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->transient(Lcom/google/protobuf/r;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static public(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->return(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static q(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/a2;->catch(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/protobuf/a2$new; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/protobuf/Internal;->do:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/protobuf/native;->implements(I)I

    move-result p0

    return p0
.end method

.method public static r(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/protobuf/c2;->for(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/native;->t(I)I

    move-result p0

    return p0
.end method

.method public static return(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static s(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->t(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static static(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->switch(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static strictfp(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->volatile(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static super(Lcom/google/protobuf/ByteString;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/native;->implements(I)I

    move-result p0

    return p0
.end method

.method public static switch(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static synchronized(ILcom/google/protobuf/MessageLite;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->b(Lcom/google/protobuf/MessageLite;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static t(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static this(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static throw(ID)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->while(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static throws(IF)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/protobuf/native;->default(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static transient(Lcom/google/protobuf/r;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/r;->case()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/native;->implements(I)I

    move-result p0

    return p0
.end method

.method public static u(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/native;->r(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/protobuf/native;->v(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static v(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static volatile(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/protobuf/native;->v(J)I

    move-result p0

    return p0
.end method

.method public static w(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static while(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static x(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;Lcom/google/protobuf/a2$new;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/native;->for:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/protobuf/Internal;->do:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/native;->B0(I)V

    const/4 p2, 0x0

    .line 4
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/native;->try([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/native$case; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    throw p1

    :catch_1
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/protobuf/native$case;

    invoke-direct {p2, p1}, Lcom/google/protobuf/native$case;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract A0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/native;->if:Z

    return v0
.end method

.method public abstract B0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract C0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract L()I
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/protobuf/native;->if:Z

    return-void
.end method

.method public final N(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->do(B)V

    return-void
.end method

.method public abstract O(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract P(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final Q([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/native;->R([BII)V

    return-void
.end method

.method public abstract R([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract S(ILjava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract T(Lcom/google/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final U(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->X(J)V

    return-void
.end method

.method public final V(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->d0(I)V

    return-void
.end method

.method public abstract W(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract X(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final Y(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->W(I)V

    return-void
.end method

.method public final Z(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native;->A0(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native;->b0(Lcom/google/protobuf/MessageLite;)V

    const/4 p2, 0x4

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->A0(II)V

    return-void
.end method

.method public final a0(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native;->A0(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/native;->c0(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V

    const/4 p2, 0x4

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->A0(II)V

    return-void
.end method

.method public final b0(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method

.method public final c0(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/native;->do:Lcom/google/protobuf/public;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public abstract d0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract do(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final e0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->C0(J)V

    return-void
.end method

.method public final else()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/native;->L()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract f0(ILcom/google/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract for([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g0(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h0(Lcom/google/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i0(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract if(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j0(ILcom/google/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final k0(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->do(B)V

    return-void
.end method

.method public final l0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->do(B)V

    return-void
.end method

.method public final m0(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/throw;)V

    return-void
.end method

.method public abstract n0(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract new(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final o0([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/protobuf/native;->for([BII)V

    return-void
.end method

.method public final p0([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/native;->for([BII)V

    return-void
.end method

.method public final q0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->W(I)V

    return-void
.end method

.method public final r0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->X(J)V

    return-void
.end method

.method public abstract s0(ILcom/google/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final t0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->B0(I)V

    return-void
.end method

.method public abstract try([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final u0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->C0(J)V

    return-void
.end method

.method public final v0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->W(I)V

    return-void
.end method

.method public final w0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->X(J)V

    return-void
.end method

.method public abstract writeBool(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes(ILcom/google/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeDouble(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/native;->writeFixed64(IJ)V

    return-void
.end method

.method public final writeEnum(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->writeInt32(II)V

    return-void
.end method

.method public abstract writeFixed32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFixed64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeFloat(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->writeFixed32(II)V

    return-void
.end method

.method public abstract writeInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final writeInt64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/native;->writeUInt64(IJ)V

    return-void
.end method

.method public final writeSFixed32(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->writeFixed32(II)V

    return-void
.end method

.method public final writeSFixed64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/native;->writeFixed64(IJ)V

    return-void
.end method

.method public final writeSInt32(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/native;->w(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->writeUInt32(II)V

    return-void
.end method

.method public final writeSInt64(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/google/protobuf/native;->x(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/native;->writeUInt64(IJ)V

    return-void
.end method

.method public abstract writeString(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeUInt64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final x0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/native;->w(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/native;->B0(I)V

    return-void
.end method

.method public abstract y()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final y0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/protobuf/native;->x(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native;->C0(J)V

    return-void
.end method

.method public abstract z()I
.end method

.method public abstract z0(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
