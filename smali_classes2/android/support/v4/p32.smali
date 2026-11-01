.class public Landroid/support/v4/p32;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/p32$if;,
        Landroid/support/v4/p32$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    if-le p2, v2, :cond_2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge p2, v0, :cond_2

    move v4, p2

    move v5, v4

    :cond_0
    add-int/2addr v4, v3

    .line 4
    invoke-virtual {p1, p4, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v5, v3

    .line 5
    invoke-virtual {p1, p3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ge v5, v4, :cond_1

    if-le v5, v2, :cond_1

    if-lt v4, v0, :cond_0

    :cond_1
    if-le v4, p2, :cond_2

    .line 6
    new-instance p1, Landroid/support/v4/p32$do;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p3, 0x0

    aput v1, p2, p3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr v4, p3

    aput v4, p2, v3

    invoke-direct {p1, p0, p2}, Landroid/support/v4/p32$do;-><init>(Ljava/lang/String;[I)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string p1, "@get:"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "@put:"

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "@Header:"

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/support/v4/p32$if;

    invoke-direct {p1, v1}, Landroid/support/v4/p32$if;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/p32$if;->goto()Ljava/util/List;

    move-result-object v5

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 11
    invoke-static {v1, p1, v5}, Landroid/support/v4/p32;->if(Ljava/lang/String;ILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {p0, v1, v2, v3, v4}, Landroid/support/v4/p32;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Landroid/support/v4/p32;->try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/p32$do;

    move-result-object p0

    return-object p0

    .line 14
    :cond_2
    :goto_0
    invoke-static {p0, v1, v2, v3, v4}, Landroid/support/v4/p32;->case(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/p32$do;

    move-result-object p0

    return-object p0
.end method

.method private static for(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[I>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    .line 2
    invoke-static {p0, p2, p3}, Landroid/support/v4/p32;->if(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 5
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/p32;->for(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    return p2
.end method

.method private static if(Ljava/lang/String;ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[I>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    .line 3
    aget v1, p2, v0

    if-gt v1, p1, :cond_0

    const/4 v1, 0x1

    aget p2, p2, v1

    if-lt p2, p1, :cond_0

    return v1

    :cond_1
    return v0
.end method

.method private static new(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[I>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {p0, v0, p2}, Landroid/support/v4/p32;->if(Ljava/lang/String;ILjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    invoke-static {p0, p1, v0, p2}, Landroid/support/v4/p32;->for(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    return v0
.end method

.method private static try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/p32$do;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[I>;)",
            "Landroid/support/v4/p32$do;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p5}, Landroid/support/v4/p32;->new(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    if-le p2, v2, :cond_2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge p2, v0, :cond_2

    move v4, p2

    move v5, v4

    :cond_0
    add-int/2addr v4, v3

    .line 4
    invoke-static {p1, p4, v4, p5}, Landroid/support/v4/p32;->for(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)I

    move-result v4

    add-int/2addr v5, v3

    .line 5
    invoke-static {p1, p3, v5, p5}, Landroid/support/v4/p32;->for(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)I

    move-result v5

    if-ge v5, v4, :cond_1

    if-le v5, v2, :cond_1

    if-lt v4, v0, :cond_0

    :cond_1
    if-le v4, p2, :cond_2

    .line 6
    new-instance p1, Landroid/support/v4/p32$do;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p3, 0x0

    aput v1, p2, p3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr v4, p3

    aput v4, p2, v3

    invoke-direct {p1, p0, p2}, Landroid/support/v4/p32$do;-><init>(Ljava/lang/String;[I)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
