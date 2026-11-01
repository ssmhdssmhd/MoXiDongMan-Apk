.class public Lorg/antlr/v4/runtime/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/try$if;,
        Lorg/antlr/v4/runtime/try$for;
    }
.end annotation


# static fields
.field public static final synthetic try:Z


# instance fields
.field private final do:Lorg/antlr/v4/runtime/try$for;

.field private final for:Ljava/nio/CharBuffer;

.field private final if:Ljava/nio/ByteBuffer;

.field private final new:Ljava/nio/IntBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/antlr/v4/runtime/try$for;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/antlr/v4/runtime/try;->do:Lorg/antlr/v4/runtime/try$for;

    .line 4
    iput-object p2, p0, Lorg/antlr/v4/runtime/try;->if:Ljava/nio/ByteBuffer;

    .line 5
    iput-object p3, p0, Lorg/antlr/v4/runtime/try;->for:Ljava/nio/CharBuffer;

    .line 6
    iput-object p4, p0, Lorg/antlr/v4/runtime/try;->new:Ljava/nio/IntBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/antlr/v4/runtime/try$for;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;Lorg/antlr/v4/runtime/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/try;-><init>(Lorg/antlr/v4/runtime/try$for;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-void
.end method

.method public static catch(Ljava/nio/ByteBuffer;)Lorg/antlr/v4/runtime/try;
    .locals 3

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/try;

    sget-object v1, Lorg/antlr/v4/runtime/try$for;->BYTE:Lorg/antlr/v4/runtime/try$for;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lorg/antlr/v4/runtime/try;-><init>(Lorg/antlr/v4/runtime/try$for;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static class(Ljava/nio/CharBuffer;)Lorg/antlr/v4/runtime/try;
    .locals 3

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/try;

    sget-object v1, Lorg/antlr/v4/runtime/try$for;->CHAR:Lorg/antlr/v4/runtime/try$for;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lorg/antlr/v4/runtime/try;-><init>(Lorg/antlr/v4/runtime/try$for;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static const(Ljava/nio/IntBuffer;)Lorg/antlr/v4/runtime/try;
    .locals 3

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/try;

    sget-object v1, Lorg/antlr/v4/runtime/try$for;->INT:Lorg/antlr/v4/runtime/try$for;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p0}, Lorg/antlr/v4/runtime/try;-><init>(Lorg/antlr/v4/runtime/try$for;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static if(I)Lorg/antlr/v4/runtime/try$if;
    .locals 2

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/try$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/antlr/v4/runtime/try$if;-><init>(ILorg/antlr/v4/runtime/try$do;)V

    return-object v0
.end method


# virtual methods
.method public break()I
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public case()Lorg/antlr/v4/runtime/try$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->do:Lorg/antlr/v4/runtime/try$for;

    return-object v0
.end method

.method public do()I
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public else()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v0

    return-object v0
.end method

.method public for()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public goto()I
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    return v0

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public new()[C
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    return-object v0
.end method

.method public this(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method public try(I)I
    .locals 2

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$do;->do:[I

    iget-object v1, p0, Lorg/antlr/v4/runtime/try;->do:Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->new:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not reached"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->for:Ljava/nio/CharBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/CharBuffer;->get(I)C

    move-result p1

    return p1

    .line 5
    :cond_2
    iget-object v0, p0, Lorg/antlr/v4/runtime/try;->if:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method
