.class public Lcom/googlecode/protobuf/format/case;
.super Lcom/googlecode/protobuf/format/do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/protobuf/format/case$if;,
        Lcom/googlecode/protobuf/format/case$new;,
        Lcom/googlecode/protobuf/format/case$try;,
        Lcom/googlecode/protobuf/format/case$for;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/protobuf/format/do;-><init>()V

    return-void
.end method

.method public static abstract(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/googlecode/protobuf/format/case;->package(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static continue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    :cond_0
    return-object p0
.end method

.method public static extends(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/googlecode/protobuf/format/case;->package(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static finally(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lcom/googlecode/protobuf/format/case;->package(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static implements(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$if;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_f

    add-int/lit8 v2, v2, 0x1

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 6
    invoke-static {v4}, Landroid/support/v4/i62;->try(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-static {v4}, Landroid/support/v4/i62;->do(C)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/support/v4/i62;->try(C)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v4, v4, 0x8

    .line 9
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/support/v4/i62;->do(C)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_0
    add-int/lit8 v5, v2, 0x1

    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/support/v4/i62;->try(C)Z

    move-result v6

    if-eqz v6, :cond_1

    mul-int/lit8 v4, v4, 0x8

    .line 11
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/support/v4/i62;->do(C)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 12
    aput-byte v4, v0, v3

    goto/16 :goto_3

    :cond_2
    const/16 v6, 0x22

    if-eq v4, v6, :cond_d

    const/16 v6, 0x27

    if-eq v4, v6, :cond_c

    if-eq v4, v5, :cond_b

    const/16 v5, 0x66

    if-eq v4, v5, :cond_a

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_9

    const/16 v5, 0x72

    if-eq v4, v5, :cond_8

    const/16 v5, 0x78

    if-eq v4, v5, :cond_5

    const/16 v5, 0x61

    if-eq v4, v5, :cond_4

    const/16 v5, 0x62

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 13
    new-instance p0, Lcom/googlecode/protobuf/format/case$if;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/case$if;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    .line 14
    aput-byte v5, v0, v3

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    .line 15
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/support/v4/i62;->do(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0x30

    add-int/lit8 v5, v2, 0x2

    .line 16
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/support/v4/i62;->do(C)I

    move-result v5

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    .line 17
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/support/v4/i62;->do(C)I

    move-result v5

    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x4

    .line 18
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/support/v4/i62;->do(C)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 19
    aput-byte v4, v0, v3

    :goto_1
    move v4, v5

    goto/16 :goto_2

    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 20
    aput-byte v5, v0, v3

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    .line 21
    aput-byte v5, v0, v3

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    .line 22
    aput-byte v5, v0, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/support/v4/i62;->new(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 24
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/support/v4/i62;->do(C)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    .line 25
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/support/v4/i62;->new(C)Z

    move-result v6

    if-eqz v6, :cond_6

    mul-int/lit8 v4, v4, 0x10

    .line 26
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/support/v4/i62;->do(C)I

    move-result v2

    add-int/2addr v4, v2

    move v2, v5

    :cond_6
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 27
    aput-byte v4, v0, v3

    goto :goto_1

    .line 28
    :cond_7
    new-instance p0, Lcom/googlecode/protobuf/format/case$if;

    const-string v0, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/case$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    .line 29
    aput-byte v5, v0, v3

    goto :goto_2

    :cond_9
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    .line 30
    aput-byte v5, v0, v3

    goto :goto_2

    :cond_a
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    .line 31
    aput-byte v5, v0, v3

    goto :goto_2

    :cond_b
    add-int/lit8 v4, v3, 0x1

    .line 32
    aput-byte v5, v0, v3

    goto :goto_2

    :cond_c
    add-int/lit8 v4, v3, 0x1

    .line 33
    aput-byte v6, v0, v3

    goto :goto_2

    :cond_d
    add-int/lit8 v4, v3, 0x1

    .line 34
    aput-byte v6, v0, v3

    :goto_2
    move v3, v4

    goto :goto_4

    .line 35
    :cond_e
    new-instance p0, Lcom/googlecode/protobuf/format/case$if;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/case$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    add-int/lit8 v5, v3, 0x1

    int-to-byte v4, v4

    .line 36
    aput-byte v4, v0, v3

    :goto_3
    move v3, v5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 37
    :cond_10
    invoke-static {v0, v1, v3}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static import(Ljava/lang/StringBuilder;C)V
    .locals 1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    const-string v0, "\\u000"

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    const-string v0, "\\u00"

    goto :goto_0

    :cond_1
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_2

    const-string v0, "\\u0"

    goto :goto_0

    :cond_2
    const-string v0, "\\u"

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static instanceof(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$if;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_c

    .line 4
    aget-char v2, p0, v1

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_b

    add-int/lit8 v1, v1, 0x1

    .line 5
    array-length v2, p0

    if-ge v1, v2, :cond_a

    .line 6
    aget-char v2, p0, v1

    const/16 v4, 0x22

    if-eq v2, v4, :cond_9

    const/16 v4, 0x27

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_7

    const/16 v3, 0x62

    if-eq v2, v3, :cond_6

    const/16 v3, 0x66

    if-eq v2, v3, :cond_5

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x72

    if-eq v2, v3, :cond_3

    const/16 v3, 0x74

    if-eq v2, v3, :cond_2

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x4

    .line 7
    array-length v3, p0

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 8
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 10
    :cond_0
    new-instance p0, Lcom/googlecode/protobuf/format/case$if;

    const-string v0, "Invalid escape sequence: \'\\u\' at end of string."

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/case$if;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Lcom/googlecode/protobuf/format/case$if;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escape sequence: \'\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/case$if;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v2, 0x9

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v2, 0xd

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v2, 0xa

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v2, 0xc

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v2, 0x8

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 19
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 20
    :cond_a
    new-instance p0, Lcom/googlecode/protobuf/format/case$if;

    const-string v0, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {p0, v0}, Lcom/googlecode/protobuf/format/case$if;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 22
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private interface(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/case$for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/googlecode/protobuf/format/case$do;->do:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "{"

    .line 2
    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 3
    check-cast p2, Lcom/google/protobuf/Message;

    invoke-virtual {p0, p2, p3}, Lcom/googlecode/protobuf/format/case;->strictfp(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/case$for;)V

    const-string p1, "}"

    .line 4
    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 6
    check-cast p2, Lcom/google/protobuf/Descriptors$case;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$case;->for()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 9
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Lcom/googlecode/protobuf/format/case;->native(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 12
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/googlecode/protobuf/format/case;->public(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/i62;->native(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static native(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    int-to-char v2, v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    int-to-char v2, v2

    .line 5
    invoke-static {v2}, Lcom/googlecode/protobuf/format/case;->synchronized(C)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v2, "\\r"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v2, "\\f"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "\\v"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "\\n"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "\\t"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v2, "\\b"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string v2, "\\a"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "\\\\"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "\\\'"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "\\\""

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static package(Ljava/lang/String;ZZ)J
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

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number must be positive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0xa

    const-string v3, "0x"

    .line 3
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const-string v3, "0"

    .line 4
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x8

    .line 5
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/protobuf/format/case;->continue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "Number out of range for 32-bit signed integer: "

    const-string v6, "Number out of range for 32-bit unsigned integer: "

    if-ge v3, v4, :cond_8

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    if-eqz v2, :cond_4

    neg-long v0, v0

    :cond_4
    if-nez p2, :cond_10

    if-eqz p1, :cond_6

    const-wide/32 p1, 0x7fffffff

    cmp-long v2, v0, p1

    if-gtz v2, :cond_5

    const-wide/32 p1, -0x80000000

    cmp-long v2, v0, p1

    if-ltz v2, :cond_5

    goto/16 :goto_3

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-wide p1, 0x100000000L

    cmp-long v2, v0, p1

    if-gez v2, :cond_7

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    goto/16 :goto_3

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_9

    .line 11
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    :cond_9
    if-nez p2, :cond_d

    if-eqz p1, :cond_b

    .line 12
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_a

    goto :goto_2

    .line 13
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_b
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_c

    goto :goto_2

    .line 15
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    if-eqz p1, :cond_f

    .line 16
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x3f

    if-gt p1, p2, :cond_e

    goto :goto_2

    .line 17
    :cond_e
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit signed integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_f
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_11

    .line 19
    :goto_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_10
    :goto_3
    return-wide v0

    .line 20
    :cond_11
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static private(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/googlecode/protobuf/format/case;->package(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private protected(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/case$for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->extends()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p3, v1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->native()Lcom/google/protobuf/DescriptorProtos$catch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$catch;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->MESSAGE:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->package()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->super()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    invoke-virtual {p3, v1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {p3, v1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v0, v2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->for()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {p3, v1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 14
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    const-string v2, ": "

    if-ne v0, v1, :cond_3

    .line 15
    invoke-virtual {p3, v2}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p3}, Lcom/googlecode/protobuf/format/case$for;->do()V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p3, v2}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 18
    :goto_3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "["

    .line 19
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 20
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/googlecode/protobuf/format/case;->interface(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/case$for;)V

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ","

    .line 23
    invoke-virtual {p3, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    const-string p1, "]"

    .line 24
    invoke-virtual {p3, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 25
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/case;->interface(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/case$for;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object p1

    if-ne p1, v1, :cond_7

    .line 27
    invoke-virtual {p3}, Lcom/googlecode/protobuf/format/case$for;->if()V

    :cond_7
    :goto_5
    return-void
.end method

.method public static public(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v1}, Ljava/text/CharacterIterator;->first()C

    move-result p0

    :goto_0
    const v2, 0xffff

    if-eq p0, v2, :cond_7

    const/16 v3, 0xc

    if-eq p0, v3, :cond_6

    const/16 v3, 0xd

    if-eq p0, v3, :cond_5

    const/16 v3, 0x22

    if-eq p0, v3, :cond_4

    const/16 v3, 0x5c

    if-eq p0, v3, :cond_3

    packed-switch p0, :pswitch_data_0

    if-ltz p0, :cond_0

    const/16 v3, 0x1f

    if-gt p0, v3, :cond_0

    .line 4
    invoke-static {v0, p0}, Lcom/googlecode/protobuf/format/case;->import(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {v0, p0}, Lcom/googlecode/protobuf/format/case;->import(Ljava/lang/StringBuilder;C)V

    .line 7
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    move-result p0

    if-eq p0, v2, :cond_1

    .line 8
    invoke-static {v0, p0}, Lcom/googlecode/protobuf/format/case;->import(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid unicode string: unexpected high surrogate pair value without corresponding low value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string p0, "\\n"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string p0, "\\t"

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string p0, "\\b"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p0, "\\\\"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p0, "\\\""

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p0, "\\r"

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string p0, "\\f"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :goto_1
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    move-result p0

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private return(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    const-string v0, ":"

    .line 1
    invoke-virtual {p1, v0}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->const()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ","

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->else()Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/case;->return(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    .line 6
    invoke-virtual {p1, v2}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "}"

    .line 7
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->const()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, v1}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/case;->return(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    .line 11
    invoke-virtual {p1, v2}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "]"

    .line 12
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->const()Ljava/lang/String;

    move-result-object p2

    const-string p3, "null"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {p1, p3}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->while()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->case()F

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->import()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->this()J

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->throw()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 20
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->for()Z

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->break()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    if-nez p5, :cond_0

    .line 1
    invoke-interface {p3, p4}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$else;)Lcom/google/protobuf/Message$Builder;

    move-result-object p3

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p5, Lcom/google/protobuf/protected$for;->if:Lcom/google/protobuf/Message;

    invoke-interface {p3}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object p3

    :goto_0
    if-eqz p6, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->new()Lcom/google/protobuf/ByteString;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-interface {p3, p2}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Message$Builder;

    .line 5
    invoke-interface {p3}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 6
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to build "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$else;->if()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/case$try;->public(Ljava/lang/String;)Lcom/googlecode/protobuf/format/case$new;

    move-result-object p1

    throw p1

    :cond_1
    const-string p4, "{"

    .line 7
    invoke-virtual {p1, p4}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    const-string p4, "}"

    .line 8
    :goto_1
    invoke-virtual {p1, p4}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->do()Z

    move-result p5

    if-nez p5, :cond_2

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/case;->default(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    const-string p5, ","

    .line 11
    invoke-virtual {p1, p5}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    goto :goto_1

    .line 12
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/case$try;->public(Ljava/lang/String;)Lcom/googlecode/protobuf/format/case$new;

    move-result-object p1

    throw p1

    .line 13
    :cond_3
    invoke-interface {p3}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method private switch(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->const()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_0
    sget-object v0, Lcom/googlecode/protobuf/format/case$do;->do:[I

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t get here."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$else;->final()Lcom/google/protobuf/Descriptors$try;

    move-result-object p2

    .line 6
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->import()Z

    move-result v0

    const-string v1, "Enum type \""

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->goto()I

    move-result v0

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/protobuf/Descriptors$try;->else(I)Lcom/google/protobuf/Descriptors$case;

    move-result-object v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" has no value with number "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/case$try;->return(Ljava/lang/String;)Lcom/googlecode/protobuf/format/case$new;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->else()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/protobuf/Descriptors$try;->case(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$case;

    move-result-object v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 14
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$try;->if()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" has no value named \""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/case$try;->return(Ljava/lang/String;)Lcom/googlecode/protobuf/format/case$new;

    move-result-object p1

    throw p1

    .line 17
    :pswitch_2
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->new()Lcom/google/protobuf/ByteString;

    move-result-object v2

    goto :goto_0

    .line 18
    :pswitch_3
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->break()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 19
    :pswitch_4
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->class()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 20
    :pswitch_5
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->catch()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 21
    :pswitch_6
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->for()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 22
    :pswitch_7
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->try()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 23
    :pswitch_8
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->case()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 24
    :pswitch_9
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->this()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 25
    :pswitch_a
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->goto()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synchronized(C)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private throws(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/protobuf/format/case;->static(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/googlecode/protobuf/format/case;->switch(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/Descriptors$else;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$else;->isRepeated()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p3, p4, p1}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p3, p4, p1}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic while(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/googlecode/protobuf/format/case;->continue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public const(Ljava/lang/CharSequence;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/case$try;

    invoke-direct {v0, p1}, Lcom/googlecode/protobuf/format/case$try;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "{"

    .line 2
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    :goto_0
    const-string p1, "}"

    .line 3
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v0, p2, p3}, Lcom/googlecode/protobuf/format/case;->default(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/googlecode/protobuf/format/case$try;->do()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "Expecting the end of the stream, but there seems to be more data!  Check the input for a valid JSON format."

    .line 6
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/case$try;->public(Ljava/lang/String;)Lcom/googlecode/protobuf/format/case$new;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public default(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/protobuf/format/case$new;
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$if;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/googlecode/protobuf/format/case$try;->else()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/protobuf/Descriptors$if;->this(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$else;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-eq v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->static()Lcom/google/protobuf/Descriptors$else$if;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$else$if;->GROUP:Lcom/google/protobuf/Descriptors$else$if;

    if-ne v4, v5, :cond_1

    .line 8
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$if;->for()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    .line 9
    invoke-static {v1}, Landroid/support/v4/i62;->for(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/Descriptors$if;->break(I)Lcom/google/protobuf/Descriptors$else;

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/protobuf/protected;->final(Ljava/lang/String;)Lcom/google/protobuf/protected$for;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 12
    iget-object v3, v11, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->class()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    if-ne v3, v0, :cond_3

    .line 13
    iget-object v0, v11, Lcom/google/protobuf/protected$for;->do:Lcom/google/protobuf/Descriptors$else;

    goto :goto_2

    .line 14
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Extension \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\" does not extend message type \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$if;->if()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Lcom/googlecode/protobuf/format/case$try;->return(Ljava/lang/String;)Lcom/googlecode/protobuf/format/case$new;

    move-result-object p1

    throw p1

    :cond_4
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_5

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/case;->return(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    :cond_5
    const-string v1, ","

    if-eqz v0, :cond_7

    const-string v3, ":"

    .line 18
    invoke-virtual {p1, v3}, Lcom/googlecode/protobuf/format/case$try;->if(Ljava/lang/String;)V

    const-string v3, "["

    .line 19
    invoke-virtual {p1, v3}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_3
    const-string v3, "]"

    .line 20
    invoke-virtual {p1, v3}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    move-object v9, v11

    move v10, v2

    .line 21
    invoke-direct/range {v4 .. v10}, Lcom/googlecode/protobuf/format/case;->throws(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Z)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    goto :goto_3

    :cond_6
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    move-object v9, v11

    move v10, v2

    .line 23
    invoke-direct/range {v4 .. v10}, Lcom/googlecode/protobuf/format/case;->throws(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$else;Lcom/google/protobuf/protected$for;Z)V

    .line 24
    :cond_7
    invoke-virtual {p1, v1}, Lcom/googlecode/protobuf/format/case$try;->switch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/case;->default(Lcom/googlecode/protobuf/format/case$try;Lcom/google/protobuf/protected;Lcom/google/protobuf/Message$Builder;)V

    :cond_8
    return-void
.end method

.method public strictfp(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/case$for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$else;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1, p2}, Lcom/googlecode/protobuf/format/case;->volatile(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/case$for;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 5
    invoke-virtual {p2, v1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/t1;->if()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ", "

    .line 7
    invoke-virtual {p2, v0}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/t1;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/googlecode/protobuf/format/case;->transient(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/case$for;)V

    return-void
.end method

.method public super(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/case$for;

    invoke-direct {v0, p2}, Lcom/googlecode/protobuf/format/case$for;-><init>(Ljava/lang/Appendable;)V

    const-string p2, "{"

    .line 2
    invoke-virtual {v0, p2}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/protobuf/format/case;->strictfp(Lcom/google/protobuf/Message;Lcom/googlecode/protobuf/format/case$for;)V

    const-string p1, "}"

    .line 4
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public throw(Lcom/google/protobuf/t1;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/googlecode/protobuf/format/case$for;

    invoke-direct {v0, p2}, Lcom/googlecode/protobuf/format/case$for;-><init>(Ljava/lang/Appendable;)V

    const-string p2, "{"

    .line 2
    invoke-virtual {v0, p2}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/protobuf/format/case;->transient(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/case$for;)V

    const-string p1, "}"

    .line 4
    invoke-virtual {v0, p1}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public transient(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/case$for;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/t1;->if()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/t1$for;

    const-string v4, ", "

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v6, "\""

    .line 4
    invoke-virtual {p2, v6}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2, v6}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    const-string v2, ": ["

    .line 7
    invoke-virtual {p2, v2}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v3}, Lcom/google/protobuf/t1$for;->public()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x1

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 10
    :goto_3
    invoke-static {v8, v9}, Landroid/support/v4/i62;->public(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v3}, Lcom/google/protobuf/t1$for;->const()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_5

    .line 12
    :cond_3
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    :goto_5
    new-array v10, v0, [Ljava/lang/Object;

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v5

    const-string v8, "0x%08x"

    invoke-static {v9, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 14
    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/t1$for;->final()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_7

    .line 15
    :cond_5
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    :goto_7
    new-array v8, v0, [Ljava/lang/Object;

    .line 16
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v5

    const-string v10, "0x%016x"

    invoke-static {v9, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 17
    :cond_6
    invoke-virtual {v3}, Lcom/google/protobuf/t1$for;->while()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/ByteString;

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    goto :goto_9

    .line 18
    :cond_7
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 19
    :goto_9
    invoke-virtual {p2, v6}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 20
    invoke-static {v8}, Lcom/googlecode/protobuf/format/case;->native(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {p2, v6}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 22
    :cond_8
    invoke-virtual {v3}, Lcom/google/protobuf/t1$for;->super()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/t1;

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    goto :goto_b

    .line 23
    :cond_9
    invoke-virtual {p2, v4}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    :goto_b
    const-string v6, "{"

    .line 24
    invoke-virtual {p2, v6}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {p0, v3, p2}, Lcom/googlecode/protobuf/format/case;->transient(Lcom/google/protobuf/t1;Lcom/googlecode/protobuf/format/case$for;)V

    const-string v3, "}"

    .line 26
    invoke-virtual {p2, v3}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_a
    const-string v2, "]"

    .line 27
    invoke-virtual {p2, v2}, Lcom/googlecode/protobuf/format/case$for;->for(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public volatile(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/case$for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/protobuf/format/case;->protected(Lcom/google/protobuf/Descriptors$else;Ljava/lang/Object;Lcom/googlecode/protobuf/format/case$for;)V

    return-void
.end method
