.class public Lorg/apache/commons/lang3/text/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/if$for;,
        Lorg/apache/commons/lang3/text/if$do;,
        Lorg/apache/commons/lang3/text/if$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/io/Serializable;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field public buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x20

    .line 3
    :cond_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    if-nez p1, :cond_0

    new-array p1, v0, [C

    .line 5
    iput-object p1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    :goto_0
    return-void
.end method

.method private do(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    return-void
.end method

.method private for(IIILjava/lang/String;I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    if-eq p5, p3, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 3
    iget-object p3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int v1, p1, p5

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v2, p2

    invoke-static {p3, p2, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_0
    if-lez p5, :cond_1

    const/4 p2, 0x0

    .line 5
    iget-object p3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p4, p2, p5, p3, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-void
.end method

.method private if(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/if;
    .locals 10

    if-eqz p1, :cond_3

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    move v8, p3

    :goto_1
    if-ge v8, p4, :cond_3

    if-eqz p5, :cond_3

    .line 4
    invoke-virtual {p1, v7, v8, p3, p4}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result v9

    if-lez v9, :cond_2

    add-int v3, v8, v9

    move-object v1, p0

    move v2, v8

    move v4, v9

    move-object v5, p2

    move v6, v0

    .line 5
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/lang3/text/if;->for(IIILjava/lang/String;I)V

    sub-int/2addr p4, v9

    add-int/2addr p4, v0

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, -0x1

    if-lez p5, :cond_2

    add-int/lit8 p5, p5, -0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object p0
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(C)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/apache/commons/lang3/text/if;
    .locals 3

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 99
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 103
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(F)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(I)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(J)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 101
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/if;
    .locals 0

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 4

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 13
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 15
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/if;
    .locals 3

    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 20
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 21
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 22
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 25
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/if;
    .locals 4

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 29
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    const/4 v2, 0x0

    .line 30
    iget-object v3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 31
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/if;
    .locals 3

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 36
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 37
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 38
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0

    .line 39
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Ljava/lang/StringBuilder;)Lorg/apache/commons/lang3/text/if;
    .locals 4

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 44
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    const/4 v2, 0x0

    .line 45
    iget-object v3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 46
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/if;
    .locals 3

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 51
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 52
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 53
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Lorg/apache/commons/lang3/text/if;)Lorg/apache/commons/lang3/text/if;
    .locals 4

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 59
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 60
    iget-object p1, p1, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Lorg/apache/commons/lang3/text/if;II)Lorg/apache/commons/lang3/text/if;
    .locals 3

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 63
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 64
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 66
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 67
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Lorg/apache/commons/lang3/text/if;->getChars(II[CI)V

    .line 68
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Z)Lorg/apache/commons/lang3/text/if;
    .locals 4

    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 86
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 87
    iget-object p1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/16 v3, 0x74

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 88
    iput v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/16 v3, 0x72

    aput-char v3, p1, v2

    add-int/lit8 v2, v1, 0x1

    .line 89
    iput v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/16 v3, 0x75

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 90
    iput v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    aput-char v0, p1, v2

    goto :goto_0

    .line 91
    :cond_0
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 92
    iget-object p1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/16 v3, 0x66

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 93
    iput v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/16 v3, 0x61

    aput-char v3, p1, v2

    add-int/lit8 v2, v1, 0x1

    .line 94
    iput v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/16 v3, 0x6c

    aput-char v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    .line 95
    iput v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/16 v3, 0x73

    aput-char v3, p1, v2

    add-int/lit8 v2, v1, 0x1

    .line 96
    iput v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    aput-char v0, p1, v1

    :goto_0
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang3/text/if;
    .locals 4

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 74
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    const/4 v2, 0x0

    .line 75
    iget-object v3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0
.end method

.method public append([CII)Lorg/apache/commons/lang3/text/if;
    .locals 2

    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->appendNull()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 78
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 79
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    add-int v1, v0, p3

    .line 81
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 82
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid startIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendAll(Ljava/lang/Iterable;)Lorg/apache/commons/lang3/text/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/apache/commons/lang3/text/if;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/lang3/text/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lorg/apache/commons/lang3/text/if;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs appendAll([Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/commons/lang3/text/if;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/if;
    .locals 6

    if-lez p2, :cond_4

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_2

    sub-int p3, v0, p2

    .line 4
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    invoke-virtual {p1, p3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    :cond_2
    sub-int v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 5
    iget-object v4, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_3
    iget-object p3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v0, p3, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 7
    :goto_2
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_4
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/if;
    .locals 5

    if-lez p2, :cond_4

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_2

    .line 4
    iget-object p3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    invoke-virtual {p1, v1, p2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    :cond_2
    sub-int v2, p2, v0

    .line 5
    iget-object v3, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang3/text/if;->size:I

    invoke-virtual {p1, v1, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_1
    if-ge v1, v2, :cond_3

    .line 6
    iget-object p1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    aput-char p3, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_3
    :goto_2
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_4
    return-object p0
.end method

.method public appendNewLine()Lorg/apache/commons/lang3/text/if;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v32;->instanceof:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object v0

    return-object v0
.end method

.method public appendNull()Lorg/apache/commons/lang3/text/if;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object v0

    return-object v0
.end method

.method public appendPadding(IC)Lorg/apache/commons/lang3/text/if;
    .locals 4

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    aput-char p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/lang3/text/if;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(C)Lorg/apache/commons/lang3/text/if;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/lang3/text/if;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(C)Lorg/apache/commons/lang3/text/if;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/if;->append(C)Lorg/apache/commons/lang3/text/if;

    :goto_0
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/lang3/text/if;
    .locals 0

    if-lez p2, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(C)Lorg/apache/commons/lang3/text/if;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/lang3/text/if;
    .locals 0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/text/if;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p2}, Lorg/apache/commons/lang3/goto;->strictfp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/text/if;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 13
    invoke-static {p2}, Lorg/apache/commons/lang3/goto;->strictfp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    invoke-static {p2}, Lorg/apache/commons/lang3/goto;->strictfp(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    const/4 v0, 0x1

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    .line 6
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(C)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(D)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->append(D)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(F)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(F)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(I)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(I)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(J)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->append(J)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public varargs appendln(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuilder;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuilder;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Lorg/apache/commons/lang3/text/if;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Lorg/apache/commons/lang3/text/if;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Lorg/apache/commons/lang3/text/if;II)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Lorg/apache/commons/lang3/text/if;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Z)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append(Z)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln([C)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->append([C)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public appendln([CII)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append([CII)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->appendNewLine()Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/if$do;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/if$do;-><init>(Lorg/apache/commons/lang3/text/if;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/lang3/text/try;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/if$if;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/if$if;-><init>(Lorg/apache/commons/lang3/text/if;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/text/if$for;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/if$for;-><init>(Lorg/apache/commons/lang3/text/if;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char p1, v0, p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lorg/apache/commons/lang3/text/if;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    return-object p0
.end method

.method public contains(C)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge v2, v3, :cond_1

    .line 3
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/lang3/text/new;)Z
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Lorg/apache/commons/lang3/text/new;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/lang3/text/if;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->validateRange(II)I

    move-result p2

    sub-int v0, p2, p1

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/if;->do(III)V

    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/lang3/text/if;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge v0, v1, :cond_3

    .line 2
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 3
    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, p1, :cond_0

    :cond_1
    sub-int v2, v1, v0

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/if;->do(III)V

    sub-int v0, v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 7
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    add-int v2, v0, v1

    .line 8
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang3/text/if;->do(III)V

    .line 9
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/lang3/text/new;)Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 10
    iget v4, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/if;->replace(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public deleteCharAt(I)Lorg/apache/commons/lang3/text/if;
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/if;->do(III)V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public deleteFirst(C)Lorg/apache/commons/lang3/text/if;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    add-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/lang3/text/if;->do(III)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    add-int v0, p1, v1

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/if;->do(III)V

    :cond_1
    return-object p0
.end method

.method public deleteFirst(Lorg/apache/commons/lang3/text/new;)Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 7
    iget v4, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/if;->replace(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    sub-int/2addr v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 3
    iget-object v5, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    return v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang3/text/if;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    array-length v1, v0

    if-le p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 2
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 5
    instance-of v0, p1, Lorg/apache/commons/lang3/text/if;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lorg/apache/commons/lang3/text/if;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->equals(Lorg/apache/commons/lang3/text/if;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/apache/commons/lang3/text/if;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    iget v2, p1, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 3
    iget-object p1, p1, Lorg/apache/commons/lang3/text/if;->buffer:[C

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 4
    aget-char v4, v2, v1

    aget-char v5, p1, v1

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/lang3/text/if;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    iget v2, p1, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 3
    iget-object p1, p1, Lorg/apache/commons/lang3/text/if;->buffer:[C

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 4
    aget-char v4, v2, v1

    .line 5
    aget-char v5, p1, v1

    if-eq v4, v5, :cond_2

    .line 6
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getChars(II[CI)V
    .locals 1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 6
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public getChars([C)[C
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 3
    :cond_0
    new-array p1, v0, [C

    .line 4
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 2
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 3
    aget-char v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public indexOf(C)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(CI)I

    move-result p1

    return p1
.end method

.method public indexOf(CI)I
    .locals 3

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 4
    :goto_0
    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge p2, v2, :cond_3

    .line 5
    aget-char v2, v0, p2

    if-ne v2, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_7

    .line 7
    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-lt p2, v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->indexOf(CI)I

    move-result p1

    return p1

    :cond_2
    if-nez v2, :cond_3

    return p2

    .line 10
    :cond_3
    iget v4, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-le v2, v4, :cond_4

    return v1

    .line 11
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    sub-int/2addr v4, v2

    add-int/2addr v4, v3

    :goto_0
    if-ge p2, v4, :cond_7

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    .line 12
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p2, v3

    aget-char v7, v5, v7

    if-eq v6, v7, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return p2

    :cond_7
    :goto_2
    return v1
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/new;)I
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Lorg/apache/commons/lang3/text/new;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/new;I)I
    .locals 5

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 14
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-lt p2, v1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 16
    invoke-virtual {p1, v2, v3, p2, v1}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result v4

    if-lez v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public insert(IC)Lorg/apache/commons/lang3/text/if;
    .locals 3

    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->validateIndex(I)V

    .line 45
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 46
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aput-char p2, v0, p1

    .line 48
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 52
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public insert(IF)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 51
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public insert(II)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 49
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public insert(IJ)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 50
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 5

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->nullText:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 8
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-object p0
.end method

.method public insert(IZ)Lorg/apache/commons/lang3/text/if;
    .locals 3

    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->validateIndex(I)V

    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 29
    iget p2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 30
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int/lit8 v1, p1, 0x4

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, p2, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x72

    .line 32
    aput-char v2, p2, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x75

    .line 33
    aput-char v2, p2, p1

    .line 34
    aput-char v0, p2, v1

    .line 35
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    goto :goto_0

    .line 36
    :cond_0
    iget p2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 37
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int/lit8 v1, p1, 0x5

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v2, p1

    invoke-static {p2, p1, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, p2, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x61

    .line 39
    aput-char v2, p2, v1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x6c

    .line 40
    aput-char v2, p2, p1

    add-int/lit8 p1, v1, 0x1

    const/16 v2, 0x73

    .line 41
    aput-char v2, p2, v1

    .line 42
    aput-char v0, p2, p1

    .line 43
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :goto_0
    return-object p0
.end method

.method public insert(I[C)Lorg/apache/commons/lang3/text/if;
    .locals 4

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 12
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 14
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 15
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int v2, p1, v0

    iget v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 16
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0
.end method

.method public insert(I[CII)Lorg/apache/commons/lang3/text/if;
    .locals 3

    .line 18
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 19
    iget-object p2, p0, Lorg/apache/commons/lang3/text/if;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p3, :cond_3

    .line 20
    array-length v0, p2

    if-gt p3, v0, :cond_3

    if-ltz p4, :cond_2

    add-int v0, p3, p4

    .line 21
    array-length v1, p2

    if-gt v0, v1, :cond_2

    if-lez p4, :cond_1

    .line 22
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 23
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int v1, p1, p4

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/2addr p1, p4

    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :cond_1
    return-object p0

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid offset: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(C)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->lastIndexOf(CI)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(CI)I
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, -0x1

    if-gez p2, :cond_1

    return v0

    :cond_1
    :goto_0
    if-ltz p2, :cond_3

    .line 3
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    .line 4
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7

    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_6

    if-gez p2, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 7
    iget v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-gt v2, v3, :cond_5

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->lastIndexOf(CI)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p2, v2

    add-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int v6, p2, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return p2

    :cond_5
    if-nez v2, :cond_6

    return p2

    :cond_6
    :goto_2
    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/new;)I
    .locals 1

    .line 10
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->lastIndexOf(Lorg/apache/commons/lang3/text/new;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/new;I)I
    .locals 4

    .line 11
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, v0, -0x1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    if-gez p2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-ltz p2, :cond_3

    const/4 v3, 0x0

    .line 13
    invoke-virtual {p1, v1, p2, v3, v2}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result v3

    if-lez v3, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 3

    if-gtz p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 2
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-direct {p1, v2, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-lez p2, :cond_3

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int v1, p1, p2

    if-gt v0, v1, :cond_2

    .line 2
    new-instance p2, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {p2, v1, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p2

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public minimizeCapacity()Lorg/apache/commons/lang3/text/if;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    .line 4
    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->validateRange(II)I

    move-result v2

    if-nez p3, :cond_0

    const/4 p2, 0x0

    const/4 v5, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    move v5, p2

    :goto_0
    sub-int v3, v2, p1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/if;->for(IIILjava/lang/String;I)V

    return-object p0
.end method

.method public replace(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 4
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/lang3/text/if;->validateRange(II)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 5
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/if;->if(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public replaceAll(CC)Lorg/apache/commons/lang3/text/if;
    .locals 3

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 3
    aput-char p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    if-nez p2, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v8, v2

    .line 6
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    if-ltz v0, :cond_2

    add-int v4, v0, v1

    move-object v2, p0

    move v3, v0

    move v5, v1

    move-object v6, p2

    move v7, v8

    .line 7
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/if;->for(IIILjava/lang/String;I)V

    add-int/2addr v0, v8

    .line 8
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 9
    iget v4, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/if;->replace(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public replaceFirst(CC)Lorg/apache/commons/lang3/text/if;
    .locals 3

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 3
    aput-char p2, v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v1

    :goto_0
    if-lez v5, :cond_2

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_2

    if-nez p2, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    move v7, v0

    :goto_1
    add-int v4, v3, v5

    move-object v2, p0

    move-object v6, p2

    .line 7
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/if;->for(IIILjava/lang/String;I)V

    :cond_2
    return-object p0
.end method

.method public replaceFirst(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 8
    iget v4, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/if;->replace(Lorg/apache/commons/lang3/text/new;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    div-int/lit8 v1, v0, 0x2

    .line 3
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v3, v1, :cond_1

    .line 4
    aget-char v4, v2, v3

    .line 5
    aget-char v5, v2, v0

    aput-char v5, v2, v3

    .line 6
    aput-char v4, v2, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 3

    if-gtz p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-lt p1, v0, :cond_1

    .line 2
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    sub-int/2addr v0, p1

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public setCharAt(IC)Lorg/apache/commons/lang3/text/if;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aput-char p2, v0, p1

    return-object p0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public setLength(I)Lorg/apache/commons/lang3/text/if;
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge p1, v0, :cond_0

    .line 2
    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    goto :goto_1

    :cond_0
    if-le p1, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/if;->ensureCapacity(I)Lorg/apache/commons/lang3/text/if;

    .line 4
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    .line 5
    iput p1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    :goto_0
    if-ge v0, p1, :cond_1

    .line 6
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/text/if;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/if;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v3, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 3
    iget-object v4, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int/2addr p2, p1

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 5
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/if;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->validateRange(II)I

    move-result p2

    .line 3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/apache/commons/lang3/if;->import:[C

    return-object v0

    .line 3
    :cond_0
    new-array v1, v0, [C

    .line 4
    iget-object v2, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toCharArray(II)[C
    .locals 3

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/if;->validateRange(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_0

    .line 6
    sget-object p1, Lorg/apache/commons/lang3/if;->import:[C

    return-object p1

    .line 7
    :cond_0
    new-array v0, p2, [C

    .line 8
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/if;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public trim()Lorg/apache/commons/lang3/text/if;
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/text/if;->buffer:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_1

    .line 3
    aget-char v5, v1, v3

    if-gt v5, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v0, -0x1

    .line 4
    aget-char v5, v1, v5

    if-gt v5, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5
    :cond_2
    iget v1, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-ge v0, v1, :cond_3

    .line 6
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/text/if;->delete(II)Lorg/apache/commons/lang3/text/if;

    :cond_3
    if-lez v3, :cond_4

    .line 7
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/text/if;->delete(II)Lorg/apache/commons/lang3/text/if;

    :cond_4
    return-object p0
.end method

.method public validateIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public validateRange(II)I
    .locals 1

    if-ltz p1, :cond_2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/text/if;->size:I

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    if-gt p1, p2, :cond_1

    return p2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method
