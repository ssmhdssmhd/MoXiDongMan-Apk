.class public final Lcom/jayway/jsonpath/internal/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 3
    aget-object p0, p0, v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 4
    :goto_0
    array-length v6, p0

    if-ge v2, v6, :cond_4

    .line 5
    aget-object v6, p0, v2

    .line 6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v4, v6

    const/4 v7, -0x2

    if-eq v5, v7, :cond_3

    if-lez v6, :cond_3

    if-ne v5, v0, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    const/4 v5, -0x2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    return-object v1

    :cond_5
    if-lez v5, :cond_6

    .line 7
    aget-object p0, p0, v5

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    array-length v1, p0

    :goto_2
    if-ge v3, v1, :cond_7

    aget-object v2, p0, v3

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/io/StringWriter;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xfff

    if-le v3, v4, :cond_1

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/jayway/jsonpath/internal/Utils;->hex(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\u0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/jayway/jsonpath/internal/Utils;->hex(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x7f

    const-string v5, "\\u00"

    if-le v3, v4, :cond_3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/jayway/jsonpath/internal/Utils;->hex(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x20

    const/16 v6, 0x5c

    if-ge v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/16 v4, 0xf

    if-le v3, v4, :cond_4

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/jayway/jsonpath/internal/Utils;->hex(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    const/16 v3, 0x72

    .line 9
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(I)V

    goto/16 :goto_1

    .line 10
    :pswitch_2
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    const/16 v3, 0x66

    .line 11
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 12
    :pswitch_3
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    const/16 v3, 0x6e

    .line 13
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 14
    :pswitch_4
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    const/16 v3, 0x74

    .line 15
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 16
    :pswitch_5
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    const/16 v3, 0x62

    .line 17
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 18
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\u000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/jayway/jsonpath/internal/Utils;->hex(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v4, 0x22

    if-eq v3, v4, :cond_a

    const/16 v4, 0x27

    if-eq v3, v4, :cond_8

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_7

    if-eq v3, v6, :cond_6

    .line 19
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 20
    :cond_6
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    .line 21
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    .line 23
    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 24
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    .line 25
    :cond_9
    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 26
    :cond_a
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    .line 27
    invoke-virtual {v1, v4}, Ljava/io/StringWriter;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 28
    :cond_b
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static hex(C)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    .line 8
    invoke-static {p0, v0, p1}, Lcom/jayway/jsonpath/internal/Utils;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs onlyOneIsTrue(Ljava/lang/String;[Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/jayway/jsonpath/internal/Utils;->onlyOneIsTrueNonThrow([Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static varargs onlyOneIsTrueNonThrow([Z)Z
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    aget-boolean v5, p0, v2

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v4, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v0}, Ljava/io/StringWriter;-><init>(I)V

    .line 3
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x5c

    if-ge v5, v0, :cond_e

    .line 4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    if-eqz v7, :cond_1

    .line 5
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-ne v8, v3, :cond_d

    .line 7
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 8
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    .line 10
    new-instance v0, Lcom/jayway/jsonpath/JsonPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse unicode value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/jayway/jsonpath/JsonPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-eqz v6, :cond_b

    const/16 v6, 0x22

    if-eq v9, v6, :cond_a

    const/16 v6, 0x27

    if-eq v9, v6, :cond_9

    if-eq v9, v8, :cond_8

    const/16 v6, 0x62

    if-eq v9, v6, :cond_7

    const/16 v6, 0x66

    if-eq v9, v6, :cond_6

    const/16 v6, 0x6e

    if-eq v9, v6, :cond_5

    const/16 v6, 0x72

    if-eq v9, v6, :cond_4

    const/16 v6, 0x74

    if-eq v9, v6, :cond_3

    const/16 v6, 0x75

    if-eq v9, v6, :cond_2

    .line 11
    invoke-virtual {v1, v9}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/16 v6, 0x9

    .line 12
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    :cond_4
    const/16 v6, 0xd

    .line 13
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    :cond_5
    const/16 v6, 0xa

    .line 14
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    :cond_6
    const/16 v6, 0xc

    .line 15
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    :cond_7
    const/16 v6, 0x8

    .line 16
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 17
    :cond_8
    invoke-virtual {v1, v8}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 18
    :cond_9
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    goto :goto_1

    .line 19
    :cond_a
    invoke-virtual {v1, v6}, Ljava/io/StringWriter;->write(I)V

    :goto_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_b
    if-ne v9, v8, :cond_c

    const/4 v6, 0x1

    goto :goto_2

    .line 20
    :cond_c
    invoke-virtual {v1, v9}, Ljava/io/StringWriter;->write(I)V

    :cond_d
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_e
    if-eqz v6, :cond_f

    .line 21
    invoke-virtual {v1, v8}, Ljava/io/StringWriter;->write(I)V

    .line 22
    :cond_f
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
