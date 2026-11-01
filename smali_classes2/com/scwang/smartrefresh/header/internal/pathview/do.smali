.class Lcom/scwang/smartrefresh/header/internal/pathview/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scwang/smartrefresh/header/internal/pathview/do$for;,
        Lcom/scwang/smartrefresh/header/internal/pathview/do$if;
    }
.end annotation


# static fields
.field private static final do:Ljava/lang/String; = "PathParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static break(FF[Lcom/scwang/smartrefresh/header/internal/pathview/do$for;)V
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 2
    iget-char v3, v2, Lcom/scwang/smartrefresh/header/internal/pathview/do$for;->do:C

    iget-object v2, v2, Lcom/scwang/smartrefresh/header/internal/pathview/do$for;->if:[F

    invoke-static {p0, p1, v3, v2}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->this(FFC[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static case(Ljava/lang/String;)[F
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    new-array p0, v0, [F

    return-object p0

    .line 2
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 3
    new-instance v3, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;-><init>(Lcom/scwang/smartrefresh/header/internal/pathview/do$do;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    .line 5
    invoke-static {p0, v2, v3}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->try(Ljava/lang/String;ILcom/scwang/smartrefresh/header/internal/pathview/do$if;)V

    .line 6
    iget v6, v3, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;->do:I

    if-ge v2, v6, :cond_3

    add-int/lit8 v7, v5, 0x1

    .line 7
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v5

    move v5, v7

    .line 9
    :cond_3
    iget-boolean v2, v3, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;->if:Z

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v6, 0x1

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {v1, v0, v5}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->if([FII)[F

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method private static do(Ljava/util/List;C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/scwang/smartrefresh/header/internal/pathview/do$for;",
            ">;C[F)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/scwang/smartrefresh/header/internal/pathview/do$for;

    invoke-direct {v0, p1, p2}, Lcom/scwang/smartrefresh/header/internal/pathview/do$for;-><init>(C[F)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static else(Ljava/lang/String;I)I
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public static for(Ljava/lang/String;)[Lcom/scwang/smartrefresh/header/internal/pathview/do$for;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 3
    invoke-static {p0, v3}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->else(Ljava/lang/String;I)I

    move-result v3

    .line 4
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 6
    invoke-static {v4}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->case(Ljava/lang/String;)[F

    move-result-object v5

    .line 7
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->do(Ljava/util/List;C[F)V

    :cond_1
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 9
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->do(Ljava/util/List;C[F)V

    :cond_3
    new-array p0, v2, [Lcom/scwang/smartrefresh/header/internal/pathview/do$for;

    .line 10
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/scwang/smartrefresh/header/internal/pathview/do$for;

    return-object p0
.end method

.method public static goto(FFLjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-le v2, v3, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Path;

    .line 6
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 8
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 11
    invoke-static {p3}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->for(Ljava/lang/String;)[Lcom/scwang/smartrefresh/header/internal/pathview/do$for;

    move-result-object p3

    .line 12
    invoke-static {p0, p1, p3}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->break(FF[Lcom/scwang/smartrefresh/header/internal/pathview/do$for;)V

    .line 13
    invoke-static {p3, v0}, Lcom/scwang/smartrefresh/header/internal/pathview/do$for;->new([Lcom/scwang/smartrefresh/header/internal/pathview/do$for;Landroid/graphics/Path;)V

    .line 14
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static if([FII)[F
    .locals 2
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p0

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 2
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public static new(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/scwang/smartrefresh/header/internal/pathview/do;->for(Ljava/lang/String;)[Lcom/scwang/smartrefresh/header/internal/pathview/do$for;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {v1, v0}, Lcom/scwang/smartrefresh/header/internal/pathview/do$for;->new([Lcom/scwang/smartrefresh/header/internal/pathview/do$for;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static this(FFC[F)V
    .locals 18

    move/from16 v0, p2

    move-object/from16 v1, p3

    const/16 v5, 0x54

    const/16 v6, 0x53

    const/16 v7, 0x4d

    const/16 v8, 0x4c

    const/16 v9, 0x76

    const/16 v10, 0x71

    const/16 v11, 0x68

    const/16 v12, 0x63

    const/16 v13, 0x61

    const/16 v14, 0x56

    const/16 v15, 0x51

    const/16 v2, 0x48

    const/16 v3, 0x43

    const/16 v4, 0x41

    const/16 v16, 0x2

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v15, :cond_0

    if-eq v0, v14, :cond_1

    if-eq v0, v13, :cond_3

    if-eq v0, v12, :cond_2

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_4

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_4

    const/16 v5, 0x6c

    if-eq v0, v5, :cond_4

    const/16 v5, 0x6d

    if-eq v0, v5, :cond_4

    const/16 v5, 0x73

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x4

    goto :goto_0

    :cond_1
    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x6

    goto :goto_0

    :cond_3
    const/16 v16, 0x7

    :cond_4
    :goto_0
    const/4 v5, 0x0

    .line 1
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_d

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    if-eq v0, v15, :cond_8

    if-eq v0, v14, :cond_7

    if-eq v0, v13, :cond_b

    if-eq v0, v12, :cond_a

    if-eq v0, v11, :cond_9

    if-eq v0, v10, :cond_8

    if-eq v0, v9, :cond_7

    if-eq v0, v8, :cond_5

    if-eq v0, v7, :cond_5

    const/16 v6, 0x53

    if-eq v0, v6, :cond_c

    const/16 v2, 0x54

    if-eq v0, v2, :cond_6

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_6

    const/16 v2, 0x6d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x73

    if-eq v0, v2, :cond_c

    const/16 v2, 0x74

    if-eq v0, v2, :cond_6

    goto/16 :goto_7

    :cond_5
    const/16 v6, 0x53

    .line 2
    :cond_6
    aget v2, v1, v5

    mul-float v2, v2, p0

    aput v2, v1, v5

    add-int/lit8 v2, v5, 0x1

    .line 3
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    goto/16 :goto_7

    :cond_7
    const/16 v6, 0x53

    goto :goto_2

    :cond_8
    const/16 v6, 0x53

    goto :goto_3

    :cond_9
    const/16 v6, 0x53

    goto :goto_4

    :cond_a
    const/16 v6, 0x53

    goto :goto_5

    :cond_b
    const/16 v6, 0x53

    goto :goto_6

    .line 4
    :goto_2
    aget v2, v1, v5

    mul-float v2, v2, p1

    aput v2, v1, v5

    goto :goto_7

    .line 5
    :cond_c
    :goto_3
    aget v2, v1, v5

    mul-float v2, v2, p0

    aput v2, v1, v5

    add-int/lit8 v2, v5, 0x1

    .line 6
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x2

    .line 7
    aget v17, v1, v2

    mul-float v17, v17, p0

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x3

    .line 8
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    goto :goto_6

    .line 9
    :goto_4
    aget v2, v1, v5

    mul-float v2, v2, p0

    aput v2, v1, v5

    goto :goto_7

    .line 10
    :goto_5
    aget v2, v1, v5

    mul-float v2, v2, p0

    aput v2, v1, v5

    add-int/lit8 v2, v5, 0x1

    .line 11
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x2

    .line 12
    aget v17, v1, v2

    mul-float v17, v17, p0

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x3

    .line 13
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x4

    .line 14
    aget v17, v1, v2

    mul-float v17, v17, p0

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x5

    .line 15
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    goto :goto_7

    .line 16
    :goto_6
    aget v2, v1, v5

    mul-float v2, v2, p0

    aput v2, v1, v5

    add-int/lit8 v2, v5, 0x1

    .line 17
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x5

    .line 18
    aget v17, v1, v2

    mul-float v17, v17, p0

    aput v17, v1, v2

    add-int/lit8 v2, v5, 0x6

    .line 19
    aget v17, v1, v2

    mul-float v17, v17, p1

    aput v17, v1, v2

    :goto_7
    add-int v5, v5, v16

    const/16 v2, 0x48

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method private static try(Ljava/lang/String;ILcom/scwang/smartrefresh/header/internal/pathview/do$if;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p2, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;->if:Z

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const/16 v6, 0x45

    if-eq v5, v6, :cond_2

    const/16 v6, 0x65

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez v3, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_3

    .line 4
    :cond_0
    iput-boolean v7, p2, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;->if:Z

    goto :goto_2

    :pswitch_1
    if-eq v1, p1, :cond_1

    if-nez v2, :cond_1

    .line 5
    iput-boolean v7, p2, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;->if:Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    :pswitch_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_5
    :goto_4
    iput v1, p2, Lcom/scwang/smartrefresh/header/internal/pathview/do$if;->do:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
