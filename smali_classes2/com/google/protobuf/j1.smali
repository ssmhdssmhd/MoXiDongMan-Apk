.class public final Lcom/google/protobuf/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/j1$if;,
        Lcom/google/protobuf/j1$new;,
        Lcom/google/protobuf/j1$goto;,
        Lcom/google/protobuf/j1$for;,
        Lcom/google/protobuf/j1$else;,
        Lcom/google/protobuf/j1$case;,
        Lcom/google/protobuf/j1$try;
    }
.end annotation


# static fields
.field private static final do:Ljava/util/logging/Logger;

.field private static final if:Lcom/google/protobuf/j1$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/j1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/j1;->do:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/protobuf/j1$new;->catch()Lcom/google/protobuf/j1$new$do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/j1$new$do;->do()Lcom/google/protobuf/j1$new;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/j1;->if:Lcom/google/protobuf/j1$new;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/j1$try;->return(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static abstract(Lcom/google/protobuf/t1;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/j1$try;->throw(Lcom/google/protobuf/t1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/protobuf/t1;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/j1$try;->static(Lcom/google/protobuf/t1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static break(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static c(Ljava/lang/Appendable;)Lcom/google/protobuf/j1$case;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/j1$case;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/j1$case;-><init>(Ljava/lang/Appendable;ZLcom/google/protobuf/j1$do;)V

    return-object v0
.end method

.method public static case([B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->for([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static catch(B)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static class(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/j1;->if:Lcom/google/protobuf/j1$new;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/j1$new;->new(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static const(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/j1;->if:Lcom/google/protobuf/j1$new;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$new;->try(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static continue(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/j1$try;->for(Z)Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/j1$try;->super(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$if;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_12

    .line 4
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_11

    add-int/lit8 v3, v3, 0x1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    .line 7
    invoke-static {v5}, Lcom/google/protobuf/j1;->catch(B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    invoke-static {v5}, Lcom/google/protobuf/j1;->new(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/j1;->catch(B)Z

    move-result v7

    if-eqz v7, :cond_0

    mul-int/lit8 v5, v5, 0x8

    .line 10
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/j1;->new(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_0
    add-int/lit8 v6, v3, 0x1

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/j1;->catch(B)Z

    move-result v7

    if-eqz v7, :cond_1

    mul-int/lit8 v5, v5, 0x8

    .line 12
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/j1;->new(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_1
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 13
    aput-byte v5, v1, v4

    goto/16 :goto_2

    :cond_2
    const/16 v7, 0x22

    if-eq v5, v7, :cond_f

    const/16 v7, 0x27

    if-eq v5, v7, :cond_e

    if-eq v5, v6, :cond_d

    const/16 v6, 0x66

    if-eq v5, v6, :cond_c

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_b

    const/16 v6, 0x72

    if-eq v5, v6, :cond_a

    const/16 v6, 0x74

    if-eq v5, v6, :cond_9

    const/16 v6, 0x76

    if-eq v5, v6, :cond_8

    const/16 v6, 0x78

    if-eq v5, v6, :cond_5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_4

    const/16 v6, 0x62

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x8

    .line 14
    aput-byte v6, v1, v4

    goto/16 :goto_1

    .line 15
    :cond_3
    new-instance p0, Lcom/google/protobuf/j1$if;

    int-to-char v0, v5

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x7

    .line 16
    aput-byte v6, v1, v4

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 17
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/j1;->break(B)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/j1;->new(B)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/j1;->break(B)Z

    move-result v7

    if-eqz v7, :cond_6

    mul-int/lit8 v5, v5, 0x10

    .line 20
    invoke-virtual {p0, v6}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/j1;->new(B)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v6

    :cond_6
    add-int/lit8 v6, v4, 0x1

    int-to-byte v5, v5

    .line 21
    aput-byte v5, v1, v4

    goto :goto_2

    .line 22
    :cond_7
    new-instance p0, Lcom/google/protobuf/j1$if;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xb

    .line 23
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x9

    .line 24
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_a
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xd

    .line 25
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_b
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xa

    .line 26
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_c
    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xc

    .line 27
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_d
    add-int/lit8 v5, v4, 0x1

    .line 28
    aput-byte v6, v1, v4

    goto :goto_1

    :cond_e
    add-int/lit8 v5, v4, 0x1

    .line 29
    aput-byte v7, v1, v4

    goto :goto_1

    :cond_f
    add-int/lit8 v5, v4, 0x1

    .line 30
    aput-byte v7, v1, v4

    :goto_1
    move v4, v5

    goto :goto_3

    .line 31
    :cond_10
    new-instance p0, Lcom/google/protobuf/j1$if;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/google/protobuf/j1$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    add-int/lit8 v6, v4, 0x1

    .line 32
    aput-byte v5, v1, v4

    :goto_2
    move v4, v6

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    if-ne v0, v4, :cond_13

    .line 33
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->wrap([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    goto :goto_4

    .line 34
    :cond_13
    invoke-static {v1, v2, v4}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public static default(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$try;->case(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static synthetic do(Ljava/lang/Appendable;)Lcom/google/protobuf/j1$case;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/j1;->throw(Ljava/lang/Appendable;)Lcom/google/protobuf/j1$case;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$if;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/j1;->d(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static else(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extends(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/j1$try;->this(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static f(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final(Ljava/lang/Readable;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/j1;->if:Lcom/google/protobuf/j1$new;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/j1$new;->case(Ljava/lang/Readable;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static finally(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$try;->break(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic for(Ljava/lang/Appendable;)Lcom/google/protobuf/j1$case;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/j1;->c(Ljava/lang/Appendable;)Lcom/google/protobuf/j1$case;

    move-result-object p0

    return-object p0
.end method

.method public static g(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr p0, v0

    .line 2
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/j1;->try(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic if()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/j1;->do:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static implements(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/j1;->throw(Ljava/lang/Appendable;)Lcom/google/protobuf/j1$case;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/j1;->transient(ILjava/lang/Object;Lcom/google/protobuf/j1$case;)V

    return-void
.end method

.method public static import(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/google/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/Internal;->break(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Message;

    invoke-interface {p1}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/google/protobuf/j1;->const(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V

    .line 3
    invoke-interface {p1}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method

.method public static instanceof()Lcom/google/protobuf/j1$try;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1$try;->if()Lcom/google/protobuf/j1$try;

    move-result-object v0

    return-object v0
.end method

.method public static interface(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/j1$try;->for(Z)Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$try;->case(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static native(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/j1;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private static new(B)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_1

    sub-int/2addr p0, v0

    :goto_0
    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_1
    add-int/lit8 p0, p0, -0x41

    goto :goto_0
.end method

.method public static package(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/j1$try;->class(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static private(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/j1$try;->super(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static protected(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/j1$try;->for(Z)Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/j1$try;->class(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static public(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/j1;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static return(Ljava/lang/String;ZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number must be positive: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/16 v0, 0xa

    const-string v3, "0x"

    .line 3
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x10

    goto :goto_2

    :cond_3
    const-string v3, "0"

    .line 4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x8

    .line 5
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v3, v4, :cond_b

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_5

    neg-long v0, v0

    :cond_5
    if-nez p2, :cond_15

    if-eqz p1, :cond_8

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_6

    const-wide/32 p1, -0x80000000

    cmp-long v2, v0, p1

    if-gez v2, :cond_15

    .line 8
    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const-wide p1, 0x100000000L

    cmp-long v2, v0, p1

    if-gez v2, :cond_9

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_15

    .line 9
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_b
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_c

    .line 11
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_c
    if-nez p2, :cond_10

    if-eqz p1, :cond_e

    .line 12
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-le p1, p2, :cond_14

    .line 13
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_e
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-le p1, p2, :cond_14

    .line 15
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    if-eqz p1, :cond_12

    .line 16
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-le p1, p2, :cond_14

    .line 17
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_11
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_12
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-le p1, p2, :cond_14

    .line 19
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_13
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_14
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_15
    return-wide v0
.end method

.method public static static(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/google/protobuf/j1;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static strictfp(Lcom/google/protobuf/t1;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/j1$try;->for(Z)Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/j1$try;->throw(Lcom/google/protobuf/t1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static super(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/j1;->if:Lcom/google/protobuf/j1$new;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$new;->else(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V

    return-void
.end method

.method public static switch(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/j1;->return(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synchronized(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$try;->public(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static this()Lcom/google/protobuf/j1$new;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/j1;->if:Lcom/google/protobuf/j1$new;

    return-object v0
.end method

.method private static throw(Ljava/lang/Appendable;)Lcom/google/protobuf/j1$case;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/j1$case;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/j1$case;-><init>(Ljava/lang/Appendable;ZLcom/google/protobuf/j1$do;)V

    return-object v0
.end method

.method public static throws(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$try;->try(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    return-void
.end method

.method private static transient(ILjava/lang/Object;Lcom/google/protobuf/j1$case;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/c2;->if(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    .line 2
    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Bad tag: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    check-cast p1, Lcom/google/protobuf/t1;

    invoke-static {p1, p2}, Lcom/google/protobuf/j1$try;->do(Lcom/google/protobuf/t1;Lcom/google/protobuf/j1$case;)V

    goto :goto_0

    .line 5
    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-static {p0}, Lcom/google/protobuf/t1;->class(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/t1;

    move-result-object p0

    const-string v0, "{"

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/protobuf/j1$case;->do()V

    .line 8
    invoke-virtual {p2}, Lcom/google/protobuf/j1$case;->if()V

    .line 9
    invoke-static {p0, p2}, Lcom/google/protobuf/j1$try;->do(Lcom/google/protobuf/t1;Lcom/google/protobuf/j1$case;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/protobuf/j1$case;->for()V

    const-string p0, "}"

    .line 11
    invoke-virtual {p2, p0}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "\""

    .line 12
    invoke-virtual {p2, p0}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V

    .line 13
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/j1;->try(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p2, p0}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    .line 15
    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/j1;->g(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/j1$case;->new(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static try(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/TextFormatEscaper;->do(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static volatile(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/j1;->instanceof()Lcom/google/protobuf/j1$try;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/j1$try;->for(Z)Lcom/google/protobuf/j1$try;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/j1$try;->try(Lcom/google/protobuf/MessageOrBuilder;Ljava/lang/Appendable;)V

    return-void
.end method

.method public static while(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Ljava/lang/Class;)Lcom/google/protobuf/Message;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lcom/google/protobuf/protected;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/j1$for;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/Internal;->break(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Message;

    invoke-interface {p2}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p2

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/j1;->class(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    .line 3
    invoke-interface {p2}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p0

    return-object p0
.end method
