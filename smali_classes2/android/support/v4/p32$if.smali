.class public Landroid/support/v4/p32$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/p32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final case:I = 0x4

.field private static final for:I = 0x1

.field private static final if:I = 0x0

.field private static final new:I = 0x2

.field private static final try:I = 0x3


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p32$if;->do:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/support/v4/p32$if;->class(Ljava/lang/String;I)V

    return-void
.end method

.method private break([I)[I
    .locals 6

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :cond_0
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 3
    aget v4, p1, v2

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    if-ltz v1, :cond_1

    aget v4, p1, v2

    if-lt v1, v4, :cond_0

    .line 4
    :cond_1
    aget v1, p1, v2

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    new-array p1, p1, [I

    aput v1, p1, v0

    aput v3, p1, v5

    return-object p1
.end method

.method private case(Ljava/lang/String;I)[I
    .locals 7

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    const-string v2, "/"

    .line 1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2
    invoke-direct {p0, p1, v2}, Landroid/support/v4/p32$if;->this(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    add-int/2addr v2, v4

    .line 3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/p32$if;->case(Ljava/lang/String;I)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    if-lez v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_3

    .line 5
    :cond_2
    invoke-direct {p0, p1, v1}, Landroid/support/v4/p32$if;->case(Ljava/lang/String;I)[I

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    if-le v2, p1, :cond_4

    new-array v0, v4, [I

    const/4 p1, 0x0

    aput p2, v0, p1

    const/4 p1, 0x1

    aput v2, v0, p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private catch(Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2
    array-length v3, v1

    .line 3
    new-array v4, v3, [I

    const/4 v5, 0x0

    if-gez p3, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v7, v3, :cond_3

    .line 4
    aget-object v10, v1, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    aput v10, v4, v7

    .line 5
    aget v10, v4, v7

    if-nez v10, :cond_2

    new-array v0, v8, [I

    if-lt v6, v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v6

    :goto_2
    aput v2, v0, v5

    aput v7, v0, v9

    return-object v0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    if-lt v6, v2, :cond_4

    return-object v4

    :cond_4
    :goto_3
    if-ge v6, v2, :cond_8

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_7

    .line 6
    aget-object v10, v1, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 7
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 8
    aget-object v12, v1, v7

    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move v13, v6

    const/4 v14, 0x0

    :goto_5
    add-int/lit8 v15, v2, -0x1

    if-ge v13, v15, :cond_5

    add-int/lit8 v15, v10, -0x1

    if-ge v14, v15, :cond_5

    if-ne v12, v11, :cond_5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 9
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 10
    aget-object v12, v1, v7

    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, -0x1

    if-ne v14, v10, :cond_6

    if-ne v12, v11, :cond_6

    new-array v0, v8, [I

    aput v6, v0, v5

    aput v7, v0, v9

    return-object v0

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    return-object v4
.end method

.method private class(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "/*"

    const-string v1, "//"

    const-string v2, "/"

    const-string v3, "\""

    const-string v4, "\'"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/p32$if;->catch(Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    .line 3
    aget v1, p2, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    aget p2, p2, v2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->try(Ljava/lang/String;I)[I

    move-result-object p2

    if-eqz p2, :cond_5

    .line 5
    invoke-direct {p0, p2}, Landroid/support/v4/p32$if;->do([I)V

    .line 6
    aget p2, p2, v0

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->class(Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_1
    aget p2, p2, v2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->new(Ljava/lang/String;I)[I

    move-result-object p2

    if-eqz p2, :cond_5

    .line 8
    invoke-direct {p0, p2}, Landroid/support/v4/p32$if;->do([I)V

    .line 9
    aget p2, p2, v0

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->class(Ljava/lang/String;I)V

    goto :goto_0

    .line 10
    :cond_2
    aget p2, p2, v2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->case(Ljava/lang/String;I)[I

    move-result-object p2

    if-eqz p2, :cond_5

    .line 11
    invoke-direct {p0, p2}, Landroid/support/v4/p32$if;->do([I)V

    .line 12
    aget p2, p2, v0

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->class(Ljava/lang/String;I)V

    goto :goto_0

    .line 13
    :cond_3
    aget p2, p2, v2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->for(Ljava/lang/String;I)[I

    move-result-object p2

    if-eqz p2, :cond_5

    .line 14
    invoke-direct {p0, p2}, Landroid/support/v4/p32$if;->do([I)V

    .line 15
    aget p2, p2, v0

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->class(Ljava/lang/String;I)V

    goto :goto_0

    .line 16
    :cond_4
    aget p2, p2, v2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->if(Ljava/lang/String;I)[I

    move-result-object p2

    if-eqz p2, :cond_5

    .line 17
    invoke-direct {p0, p2}, Landroid/support/v4/p32$if;->do([I)V

    .line 18
    aget p2, p2, v0

    add-int/2addr p2, v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->class(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private do([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/p32$if;->do:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p32$if;->do:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/p32$if;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private else(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, -0x1

    if-gez p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    const-string v1, "/"

    .line 1
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2
    invoke-direct {p0, p1, v1}, Landroid/support/v4/p32$if;->this(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    .line 3
    invoke-direct {p0, p1, v1}, Landroid/support/v4/p32$if;->else(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-lez v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_3

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/v4/p32$if;->else(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_3
    if-le v1, v0, :cond_4

    move v0, v1

    :cond_4
    :goto_0
    return v0
.end method

.method private for(Ljava/lang/String;I)[I
    .locals 3

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x2

    const-string v2, "\n"

    .line 1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    :cond_1
    return-object v0
.end method

.method private if(Ljava/lang/String;I)[I
    .locals 3

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x2

    const-string v2, "*/"

    .line 1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    aput p1, v0, p2

    :cond_1
    return-object v0
.end method

.method private new(Ljava/lang/String;I)[I
    .locals 5

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    const-string v2, "\""

    .line 1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 3
    invoke-direct {p0, p1, v1}, Landroid/support/v4/p32$if;->new(Ljava/lang/String;I)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-le v2, p1, :cond_2

    const/4 p1, 0x2

    new-array v0, p1, [I

    const/4 p1, 0x0

    aput p2, v0, p1

    const/4 p1, 0x1

    aput v2, v0, p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private this(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge p2, v1, :cond_2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x2a

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private try(Ljava/lang/String;I)[I
    .locals 5

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    const-string v2, "\'"

    .line 1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 3
    invoke-direct {p0, p1, v1}, Landroid/support/v4/p32$if;->try(Ljava/lang/String;I)[I

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    if-le v2, p1, :cond_2

    const/4 p1, 0x2

    new-array v0, p1, [I

    const/4 p1, 0x0

    aput p2, v0, p1

    const/4 p1, 0x1

    aput v2, v0, p1

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public goto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/p32$if;->do:Ljava/util/List;

    return-object v0
.end method
