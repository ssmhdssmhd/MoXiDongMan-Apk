.class public Lfi/iki/elonen/do$try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/do$try$for;,
        Lfi/iki/elonen/do$try$if;,
        Lfi/iki/elonen/do$try$do;
    }
.end annotation


# static fields
.field public static final else:Ljava/nio/charset/Charset;


# instance fields
.field private transient case:Ljava/lang/String;

.field private do:Lfi/iki/elonen/do$try$for;

.field private for:[B

.field private if:Z

.field private new:[B

.field private transient try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/do$try;->else:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/do$try$for;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/do$try$for;",
            "Ljava/util/List<",
            "Lfi/iki/elonen/do$try;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfi/iki/elonen/do$new;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$try;->while(Lfi/iki/elonen/do$try$for;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$try;->super(Z)V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfi/iki/elonen/do$try;

    .line 16
    invoke-virtual {v4}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    cmp-long p1, v2, v0

    if-ltz p1, :cond_2

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, v2, v0

    if-gtz p1, :cond_2

    long-to-int p1, v2

    .line 17
    iput p1, p0, Lfi/iki/elonen/do$try;->try:I

    .line 18
    new-array p1, p1, [B

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfi/iki/elonen/do$try;

    .line 20
    invoke-virtual {v2}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v3

    invoke-virtual {v2}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-virtual {v2}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$try;->final([B)V

    return-void

    .line 23
    :cond_2
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object p2, Lfi/iki/elonen/do$try$do;->MessageTooBig:Lfi/iki/elonen/do$try$do;

    const-string v0, "Max frame length has been exceeded."

    invoke-direct {p1, p2, v0}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private constructor <init>(Lfi/iki/elonen/do$try$for;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$try;->while(Lfi/iki/elonen/do$try$for;)V

    .line 3
    invoke-virtual {p0, p2}, Lfi/iki/elonen/do$try;->super(Z)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/do$try$for;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;ZLjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/do$try$for;ZLjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z)V

    .line 10
    invoke-virtual {p0, p4}, Lfi/iki/elonen/do$try;->throw([B)V

    .line 11
    invoke-virtual {p0, p3}, Lfi/iki/elonen/do$try;->import(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/do$try$for;Z[B)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z[B[B)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/do$try$for;Z[B[B)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z)V

    .line 6
    invoke-virtual {p0, p4}, Lfi/iki/elonen/do$try;->throw([B)V

    .line 7
    invoke-virtual {p0, p3}, Lfi/iki/elonen/do$try;->final([B)V

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/do$try;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$try;->while(Lfi/iki/elonen/do$try$for;)V

    .line 26
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->goto()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$try;->super(Z)V

    .line 27
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$try;->final([B)V

    .line 28
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->try()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$try;->throw([B)V

    return-void
.end method

.method private break()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try;->new:[B

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfi/iki/elonen/do$try;->new:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "b] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v1

    sget-object v2, Lfi/iki/elonen/do$try$for;->Text:Lfi/iki/elonen/do$try$for;

    const-string v3, "..."

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->else()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x64

    if-le v2, v5, :cond_1

    .line 7
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "0x"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :goto_0
    iget-object v1, p0, Lfi/iki/elonen/do$try;->new:[B

    array-length v1, v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 11
    iget-object v1, p0, Lfi/iki/elonen/do$try;->new:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v1, p0, Lfi/iki/elonen/do$try;->new:[B

    array-length v1, v1

    if-le v1, v2, :cond_4

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static catch(Ljava/io/InputStream;)Lfi/iki/elonen/do$try;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0xf

    int-to-byte v3, v2

    .line 2
    invoke-static {v3}, Lfi/iki/elonen/do$try$for;->find(B)Lfi/iki/elonen/do$try$for;

    move-result-object v3

    and-int/lit8 v0, v0, 0x70

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    .line 3
    invoke-virtual {v3}, Lfi/iki/elonen/do$try$for;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p0, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Fragmented control frame."

    invoke-direct {p0, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    :goto_1
    new-instance v0, Lfi/iki/elonen/do$try;

    invoke-direct {v0, v3, v1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z)V

    .line 6
    invoke-direct {v0, p0}, Lfi/iki/elonen/do$try;->const(Ljava/io/InputStream;)V

    .line 7
    invoke-direct {v0, p0}, Lfi/iki/elonen/do$try;->class(Ljava/io/InputStream;)V

    .line 8
    invoke-virtual {v0}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object p0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Close:Lfi/iki/elonen/do$try$for;

    if-ne p0, v1, :cond_3

    .line 9
    new-instance p0, Lfi/iki/elonen/do$try$if;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lfi/iki/elonen/do$try$if;-><init>(Lfi/iki/elonen/do$try;Lfi/iki/elonen/do$do;)V

    return-object p0

    :cond_3
    return-object v0

    .line 10
    :cond_4
    new-instance p0, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received frame with reserved/unknown opcode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_5
    new-instance p0, Lfi/iki/elonen/do$new;

    sget-object v1, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The reserved bits ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") must be 0."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p0
.end method

.method private class(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    new-array v0, v0, [B

    iput-object v0, p0, Lfi/iki/elonen/do$try;->new:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lfi/iki/elonen/do$try;->try:I

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v3, p0, Lfi/iki/elonen/do$try;->new:[B

    sub-int/2addr v2, v1

    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    invoke-static {v2}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->this()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    :goto_1
    iget-object p1, p0, Lfi/iki/elonen/do$try;->new:[B

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 6
    aget-byte v1, p1, v0

    iget-object v2, p0, Lfi/iki/elonen/do$try;->for:[B

    rem-int/lit8 v3, v0, 0x4

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object p1

    sget-object v0, Lfi/iki/elonen/do$try$for;->Text:Lfi/iki/elonen/do$try$for;

    if-ne p1, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object p1

    invoke-static {p1}, Lfi/iki/elonen/do$try;->do([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/do$try;->case:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private const(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x7f

    and-int/2addr v0, v4

    int-to-byte v0, v0

    .line 2
    iput v0, p0, Lfi/iki/elonen/do$try;->try:I

    const/16 v5, 0x7e

    if-ne v0, v5, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    invoke-static {v4}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v4

    or-int/2addr v0, v4

    const v4, 0xffff

    and-int/2addr v0, v4

    iput v0, p0, Lfi/iki/elonen/do$try;->try:I

    if-lt v0, v5, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Invalid data frame 2byte length. (not using minimal length encoding)"

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    :cond_2
    if-ne v0, v4, :cond_5

    .line 5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x30

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x28

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    int-to-long v6, v0

    const/16 v0, 0x20

    shl-long/2addr v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    int-to-long v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    int-to-long v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    int-to-long v6, v0

    or-long/2addr v4, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    int-to-long v6, v0

    or-long/2addr v4, v6

    const-wide/32 v6, 0x10000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    long-to-int v0, v4

    .line 6
    iput v0, p0, Lfi/iki/elonen/do$try;->try:I

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->MessageTooBig:Lfi/iki/elonen/do$try$do;

    const-string v1, "Max frame length has been exceeded."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Invalid data frame 4byte length. (not using minimal length encoding)"

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    :goto_1
    iget-object v0, p0, Lfi/iki/elonen/do$try;->do:Lfi/iki/elonen/do$try$for;

    invoke-virtual {v0}, Lfi/iki/elonen/do$try$for;->isControlFrame()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    const/16 v4, 0x7d

    if-gt v0, v4, :cond_7

    .line 11
    iget-object v4, p0, Lfi/iki/elonen/do$try;->do:Lfi/iki/elonen/do$try$for;

    sget-object v5, Lfi/iki/elonen/do$try$for;->Close:Lfi/iki/elonen/do$try$for;

    if-ne v4, v5, :cond_8

    if-eq v0, v2, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Received close frame with payload len 1."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Control frame with payload length > 125 bytes."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lfi/iki/elonen/do$try;->for:[B

    .line 15
    :goto_3
    iget-object v0, p0, Lfi/iki/elonen/do$try;->for:[B

    array-length v1, v0

    if-ge v3, v1, :cond_9

    .line 16
    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->for(I)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_3

    :cond_9
    return-void
.end method

.method public static do([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/do$try;->else:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static for(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static if([BII)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lfi/iki/elonen/do$try;->else:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static public(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfi/iki/elonen/do$try;->else:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Lfi/iki/elonen/do$try$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try;->do:Lfi/iki/elonen/do$try$for;

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try;->case:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    invoke-static {v0}, Lfi/iki/elonen/do$try;->do([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/do$try;->case:Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Undetected CharacterCodingException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/do$try;->case:Ljava/lang/String;

    return-object v0
.end method

.method public final([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/do$try;->new:[B

    .line 2
    array-length p1, p1

    iput p1, p0, Lfi/iki/elonen/do$try;->try:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lfi/iki/elonen/do$try;->case:Ljava/lang/String;

    return-void
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfi/iki/elonen/do$try;->if:Z

    return v0
.end method

.method public import(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lfi/iki/elonen/do$try;->public(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/do$try;->new:[B

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lfi/iki/elonen/do$try;->try:I

    .line 3
    iput-object p1, p0, Lfi/iki/elonen/do$try;->case:Ljava/lang/String;

    return-void
.end method

.method public native()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$try;->throw([B)V

    return-void
.end method

.method public new()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try;->new:[B

    return-object v0
.end method

.method public return(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lfi/iki/elonen/do$try;->if:Z

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    int-to-byte v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lfi/iki/elonen/do$try;->do:Lfi/iki/elonen/do$try$for;

    invoke-virtual {v3}, Lfi/iki/elonen/do$try$for;->getValue()B

    move-result v3

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v0, v3

    int-to-byte v0, v0

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 4
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lfi/iki/elonen/do$try;->try:I

    const/16 v3, 0x7d

    if-gt v0, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->this()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    int-to-byte v0, v0

    or-int/2addr v0, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    int-to-byte v0, v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    :cond_2
    const v1, 0xffff

    if-gt v0, v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->this()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xfe

    goto :goto_2

    :cond_3
    const/16 v0, 0x7e

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 7
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 8
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_4

    .line 9
    :cond_4
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->this()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xff

    goto :goto_3

    :cond_5
    const/16 v0, 0x7f

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 10
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x38

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 11
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x30

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 12
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x28

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 13
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x20

    and-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 14
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 15
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 16
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    ushr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 17
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 18
    :goto_4
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->this()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lfi/iki/elonen/do$try;->for:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 20
    :goto_5
    iget v0, p0, Lfi/iki/elonen/do$try;->try:I

    if-ge v2, v0, :cond_7

    .line 21
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    aget-byte v0, v0, v2

    iget-object v1, p0, Lfi/iki/elonen/do$try;->for:[B

    rem-int/lit8 v3, v2, 0x4

    aget-byte v1, v1, v3

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 22
    :cond_6
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 23
    :cond_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public super(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfi/iki/elonen/do$try;->if:Z

    return-void
.end method

.method public this()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try;->for:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public throw([B)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaskingKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasn\'t length 4"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lfi/iki/elonen/do$try;->for:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WS["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->goto()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fin"

    goto :goto_0

    :cond_0
    const-string v2, "inter"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->this()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "masked"

    goto :goto_1

    :cond_1
    const-string v2, "unmasked"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lfi/iki/elonen/do$try;->break()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try;->for:[B

    return-object v0
.end method

.method public while(Lfi/iki/elonen/do$try$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/do$try;->do:Lfi/iki/elonen/do$try$for;

    return-void
.end method
