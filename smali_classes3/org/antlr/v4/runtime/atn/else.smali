.class public abstract Lorg/antlr/v4/runtime/atn/else;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static case:I = 0x0

.field public static final synthetic else:Z = false

.field public static final for:Landroid/support/v4/z60;

.field public static final new:I = 0x7fffffff

.field private static final try:I = 0x1


# instance fields
.field public final do:I

.field public final if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/z60;

    invoke-direct {v0}, Landroid/support/v4/z60;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    const/4 v0, 0x0

    .line 2
    sput v0, Lorg/antlr/v4/runtime/atn/else;->case:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lorg/antlr/v4/runtime/atn/else;->case:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/antlr/v4/runtime/atn/else;->case:I

    iput v0, p0, Lorg/antlr/v4/runtime/atn/else;->do:I

    .line 3
    iput p1, p0, Lorg/antlr/v4/runtime/atn/else;->if:I

    return-void
.end method

.method public static case(Lorg/antlr/v4/runtime/atn/else;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/else;",
            ")",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 3
    invoke-static {p0, v0, v1}, Lorg/antlr/v4/runtime/atn/else;->else(Lorg/antlr/v4/runtime/atn/else;Ljava/util/List;Ljava/util/Map;)V

    return-object v0
.end method

.method public static const(Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/else;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Z",
            "Landroid/support/v4/h20<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/else;"
        }
    .end annotation

    if-eq p0, p1, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/support/v4/d02;

    if-eqz v0, :cond_1

    instance-of v1, p1, Landroid/support/v4/d02;

    if-eqz v1, :cond_1

    .line 3
    check-cast p0, Landroid/support/v4/d02;

    check-cast p1, Landroid/support/v4/d02;

    invoke-static {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/else;->throw(Landroid/support/v4/d02;Landroid/support/v4/d02;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p2, :cond_3

    .line 4
    instance-of v1, p0, Landroid/support/v4/z60;

    if-eqz v1, :cond_2

    return-object p0

    .line 5
    :cond_2
    instance-of v1, p1, Landroid/support/v4/z60;

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 6
    new-instance v0, Landroid/support/v4/p3;

    check-cast p0, Landroid/support/v4/d02;

    invoke-direct {v0, p0}, Landroid/support/v4/p3;-><init>(Landroid/support/v4/d02;)V

    move-object p0, v0

    .line 7
    :cond_4
    instance-of v0, p1, Landroid/support/v4/d02;

    if-eqz v0, :cond_5

    .line 8
    new-instance v0, Landroid/support/v4/p3;

    check-cast p1, Landroid/support/v4/d02;

    invoke-direct {v0, p1}, Landroid/support/v4/p3;-><init>(Landroid/support/v4/d02;)V

    move-object p1, v0

    .line 9
    :cond_5
    check-cast p0, Landroid/support/v4/p3;

    check-cast p1, Landroid/support/v4/p3;

    invoke-static {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/else;->final(Landroid/support/v4/p3;Landroid/support/v4/p3;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object p0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public static do()I
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroid/support/v4/y01;->new(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/y01;->do(II)I

    move-result v0

    return v0
.end method

.method public static else(Lorg/antlr/v4/runtime/atn/else;Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Ljava/util/List<",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p2, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lorg/antlr/v4/runtime/atn/else;->else(Lorg/antlr/v4/runtime/atn/else;Ljava/util/List;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final(Landroid/support/v4/p3;Landroid/support/v4/p3;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/p3;",
            "Landroid/support/v4/p3;",
            "Z",
            "Landroid/support/v4/h20<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/else;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_1

    .line 1
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/h20;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/else;

    if-eqz v3, :cond_0

    return-object v3

    .line 2
    :cond_0
    invoke-virtual {v2, v1, v0}, Landroid/support/v4/h20;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/antlr/v4/runtime/atn/else;

    if-eqz v3, :cond_1

    return-object v3

    .line 3
    :cond_1
    iget-object v3, v0, Landroid/support/v4/p3;->this:[I

    array-length v4, v3

    iget-object v5, v1, Landroid/support/v4/p3;->this:[I

    array-length v6, v5

    add-int/2addr v4, v6

    new-array v4, v4, [I

    .line 4
    array-length v3, v3

    array-length v5, v5

    add-int/2addr v3, v5

    new-array v5, v3, [Lorg/antlr/v4/runtime/atn/else;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5
    :goto_0
    iget-object v10, v0, Landroid/support/v4/p3;->this:[I

    array-length v11, v10

    const/4 v12, 0x1

    if-ge v7, v11, :cond_8

    iget-object v11, v1, Landroid/support/v4/p3;->this:[I

    array-length v13, v11

    if-ge v8, v13, :cond_8

    .line 6
    iget-object v13, v0, Landroid/support/v4/p3;->goto:[Lorg/antlr/v4/runtime/atn/else;

    aget-object v13, v13, v7

    .line 7
    iget-object v14, v1, Landroid/support/v4/p3;->goto:[Lorg/antlr/v4/runtime/atn/else;

    aget-object v14, v14, v8

    .line 8
    aget v15, v10, v7

    aget v6, v11, v8

    if-ne v15, v6, :cond_6

    .line 9
    aget v6, v10, v7

    const v10, 0x7fffffff

    if-ne v6, v10, :cond_2

    if-nez v13, :cond_2

    if-nez v14, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-eqz v13, :cond_3

    if-eqz v14, :cond_3

    .line 10
    invoke-virtual {v13, v14}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-nez v10, :cond_5

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v15, p2

    .line 11
    invoke-static {v13, v14, v15, v2}, Lorg/antlr/v4/runtime/atn/else;->const(Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/else;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v10

    .line 12
    aput-object v10, v5, v9

    .line 13
    aput v6, v4, v9

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v15, p2

    .line 14
    aput-object v13, v5, v9

    .line 15
    aput v6, v4, v9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    move/from16 v15, p2

    .line 16
    aget v6, v10, v7

    aget v12, v11, v8

    if-ge v6, v12, :cond_7

    .line 17
    aput-object v13, v5, v9

    .line 18
    aget v6, v10, v7

    aput v6, v4, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 19
    :cond_7
    aput-object v14, v5, v9

    .line 20
    aget v6, v11, v8

    aput v6, v4, v9

    :goto_5
    add-int/lit8 v8, v8, 0x1

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 21
    :cond_8
    array-length v6, v10

    if-ge v7, v6, :cond_9

    .line 22
    :goto_7
    iget-object v6, v0, Landroid/support/v4/p3;->this:[I

    array-length v8, v6

    if-ge v7, v8, :cond_a

    .line 23
    iget-object v8, v0, Landroid/support/v4/p3;->goto:[Lorg/antlr/v4/runtime/atn/else;

    aget-object v8, v8, v7

    aput-object v8, v5, v9

    .line 24
    aget v6, v6, v7

    aput v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 25
    :cond_9
    :goto_8
    iget-object v6, v1, Landroid/support/v4/p3;->this:[I

    array-length v7, v6

    if-ge v8, v7, :cond_a

    .line 26
    iget-object v7, v1, Landroid/support/v4/p3;->goto:[Lorg/antlr/v4/runtime/atn/else;

    aget-object v7, v7, v8

    aput-object v7, v5, v9

    .line 27
    aget v6, v6, v8

    aput v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    if-ge v9, v3, :cond_d

    if-ne v9, v12, :cond_c

    const/4 v3, 0x0

    .line 28
    aget-object v5, v5, v3

    aget v3, v4, v3

    invoke-static {v5, v3}, Landroid/support/v4/d02;->static(Lorg/antlr/v4/runtime/atn/else;I)Landroid/support/v4/d02;

    move-result-object v3

    if-eqz v2, :cond_b

    .line 29
    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object v3

    .line 30
    :cond_c
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [Lorg/antlr/v4/runtime/atn/else;

    .line 31
    invoke-static {v4, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 32
    :cond_d
    new-instance v3, Landroid/support/v4/p3;

    invoke-direct {v3, v5, v4}, Landroid/support/v4/p3;-><init>([Lorg/antlr/v4/runtime/atn/else;[I)V

    .line 33
    invoke-virtual {v3, v0}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v2, :cond_e

    .line 34
    invoke-virtual {v2, v0, v1, v0}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-object v0

    .line 35
    :cond_f
    invoke-virtual {v3, v1}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v2, :cond_10

    .line 36
    invoke-virtual {v2, v0, v1, v1}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v1

    .line 37
    :cond_11
    invoke-static {v5}, Lorg/antlr/v4/runtime/atn/else;->new([Lorg/antlr/v4/runtime/atn/else;)V

    if-eqz v2, :cond_12

    .line 38
    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v3
.end method

.method public static for([Lorg/antlr/v4/runtime/atn/else;[I)I
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroid/support/v4/y01;->new(I)I

    move-result v0

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 3
    invoke-static {v0, v4}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 5
    invoke-static {v0, v3}, Landroid/support/v4/y01;->try(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {v0, p0}, Landroid/support/v4/y01;->do(II)I

    move-result p0

    return p0
.end method

.method public static goto(Lorg/antlr/v4/runtime/atn/else;Landroid/support/v4/ef1;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/else;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Landroid/support/v4/ef1;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/else;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/else;->class()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p2, p0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/else;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {p1, p0}, Landroid/support/v4/ef1;->if(Lorg/antlr/v4/runtime/atn/else;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/else;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_7

    .line 7
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lorg/antlr/v4/runtime/atn/else;->goto(Lorg/antlr/v4/runtime/atn/else;Landroid/support/v4/ef1;Ljava/util/IdentityHashMap;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v4

    if-nez v3, :cond_3

    .line 8
    invoke-virtual {p0, v2}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v6

    if-eq v4, v6, :cond_6

    :cond_3
    if-nez v3, :cond_5

    .line 9
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v0

    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/else;

    const/4 v3, 0x0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 11
    invoke-virtual {p0, v3}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v6

    aput-object v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    .line 12
    :cond_5
    aput-object v4, v0, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    .line 13
    invoke-virtual {p1, p0}, Landroid/support/v4/ef1;->do(Lorg/antlr/v4/runtime/atn/else;)Lorg/antlr/v4/runtime/atn/else;

    .line 14
    invoke-virtual {p2, p0, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 15
    :cond_8
    array-length v2, v0

    if-nez v2, :cond_9

    .line 16
    sget-object v0, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    goto :goto_2

    .line 17
    :cond_9
    array-length v2, v0

    if-ne v2, v5, :cond_a

    .line 18
    aget-object v0, v0, v1

    invoke-virtual {p0, v1}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/d02;->static(Lorg/antlr/v4/runtime/atn/else;I)Landroid/support/v4/d02;

    move-result-object v0

    goto :goto_2

    .line 19
    :cond_a
    move-object v1, p0

    check-cast v1, Landroid/support/v4/p3;

    .line 20
    new-instance v2, Landroid/support/v4/p3;

    iget-object v1, v1, Landroid/support/v4/p3;->this:[I

    invoke-direct {v2, v0, v1}, Landroid/support/v4/p3;-><init>([Lorg/antlr/v4/runtime/atn/else;[I)V

    move-object v0, v2

    .line 21
    :goto_2
    invoke-virtual {p1, v0}, Landroid/support/v4/ef1;->do(Lorg/antlr/v4/runtime/atn/else;)Lorg/antlr/v4/runtime/atn/else;

    .line 22
    invoke-virtual {p2, v0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {p2, p0, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static if(Lorg/antlr/v4/runtime/atn/else;I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Landroid/support/v4/y01;->new(I)I

    move-result v0

    .line 2
    invoke-static {v0, p0}, Landroid/support/v4/y01;->case(ILjava/lang/Object;)I

    move-result p0

    .line 3
    invoke-static {p0, p1}, Landroid/support/v4/y01;->try(II)I

    move-result p0

    const/4 p1, 0x2

    .line 4
    invoke-static {p0, p1}, Landroid/support/v4/y01;->do(II)I

    move-result p0

    return p0
.end method

.method public static import(Lorg/antlr/v4/runtime/atn/else;)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digraph G {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rankdir=LR;\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Lorg/antlr/v4/runtime/atn/else;->case(Lorg/antlr/v4/runtime/atn/else;)Ljava/util/List;

    move-result-object p0

    .line 5
    new-instance v1, Lorg/antlr/v4/runtime/atn/else$do;

    invoke-direct {v1}, Lorg/antlr/v4/runtime/atn/else$do;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "  s"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/else;

    .line 7
    instance-of v6, v2, Landroid/support/v4/d02;

    const-string v7, "$"

    const-string v8, "\"];\n"

    if-eqz v6, :cond_2

    .line 8
    iget v5, v2, Lorg/antlr/v4/runtime/atn/else;->do:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2, v4}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    instance-of v2, v2, Landroid/support/v4/z60;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    const-string v2, " [label=\""

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_2
    check-cast v2, Landroid/support/v4/p3;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lorg/antlr/v4/runtime/atn/else;->do:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " [shape=box, label=\""

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v2, v2, Landroid/support/v4/p3;->this:[I

    array-length v3, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_5

    aget v9, v2, v6

    if-nez v5, :cond_3

    const-string v5, ", "

    .line 18
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const v5, 0x7fffffff

    if-ne v9, v5, :cond_4

    .line 19
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const-string v2, "]"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 23
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/else;

    .line 24
    sget-object v2, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    if-ne v1, v2, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    .line 25
    :goto_5
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 26
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_6

    .line 27
    :cond_9
    iget v6, v1, Lorg/antlr/v4/runtime/atn/else;->do:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "->"

    .line 29
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "s"

    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, v2}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v6

    iget v6, v6, Lorg/antlr/v4/runtime/atn/else;->do:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v6

    if-le v6, v5, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " [label=\"parent["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]\"];\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    const-string v6, ";\n"

    .line 33
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    const-string p0, "}\n"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static new([Lorg/antlr/v4/runtime/atn/else;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 3
    aget-object v3, p0, v2

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 7
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/else;

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static super(Landroid/support/v4/d02;Landroid/support/v4/d02;Z)Lorg/antlr/v4/runtime/atn/else;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    sget-object p2, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    if-ne p0, p2, :cond_0

    return-object p2

    :cond_0
    if-ne p1, p2, :cond_4

    return-object p2

    .line 2
    :cond_1
    sget-object p2, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    if-ne p0, p2, :cond_2

    if-ne p1, p2, :cond_2

    return-object p2

    :cond_2
    const v1, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p0, p2, :cond_3

    new-array p0, v4, [I

    .line 3
    iget p2, p1, Landroid/support/v4/d02;->this:I

    aput p2, p0, v3

    aput v1, p0, v2

    new-array p2, v4, [Lorg/antlr/v4/runtime/atn/else;

    .line 4
    iget-object p1, p1, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    aput-object p1, p2, v3

    aput-object v0, p2, v2

    .line 5
    new-instance p1, Landroid/support/v4/p3;

    invoke-direct {p1, p2, p0}, Landroid/support/v4/p3;-><init>([Lorg/antlr/v4/runtime/atn/else;[I)V

    return-object p1

    :cond_3
    if-ne p1, p2, :cond_4

    new-array p1, v4, [I

    .line 6
    iget p2, p0, Landroid/support/v4/d02;->this:I

    aput p2, p1, v3

    aput v1, p1, v2

    new-array p2, v4, [Lorg/antlr/v4/runtime/atn/else;

    .line 7
    iget-object p0, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    aput-object p0, p2, v3

    aput-object v0, p2, v2

    .line 8
    new-instance p0, Landroid/support/v4/p3;

    invoke-direct {p0, p2, p1}, Landroid/support/v4/p3;-><init>([Lorg/antlr/v4/runtime/atn/else;[I)V

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static throw(Landroid/support/v4/d02;Landroid/support/v4/d02;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/d02;",
            "Landroid/support/v4/d02;",
            "Z",
            "Landroid/support/v4/h20<",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            "Lorg/antlr/v4/runtime/atn/else;",
            ">;)",
            "Lorg/antlr/v4/runtime/atn/else;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    invoke-virtual {p3, p0, p1}, Landroid/support/v4/h20;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/else;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p3, p1, p0}, Landroid/support/v4/h20;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/else;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/else;->super(Landroid/support/v4/d02;Landroid/support/v4/d02;Z)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p3, p0, p1, v0}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0

    .line 5
    :cond_3
    iget v0, p0, Landroid/support/v4/d02;->this:I

    iget v1, p1, Landroid/support/v4/d02;->this:I

    if-ne v0, v1, :cond_7

    .line 6
    iget-object v0, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    iget-object v1, p1, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    invoke-static {v0, v1, p2, p3}, Lorg/antlr/v4/runtime/atn/else;->const(Lorg/antlr/v4/runtime/atn/else;Lorg/antlr/v4/runtime/atn/else;ZLandroid/support/v4/h20;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object p2

    .line 7
    iget-object v0, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    if-ne p2, v0, :cond_4

    return-object p0

    .line 8
    :cond_4
    iget-object v0, p1, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    if-ne p2, v0, :cond_5

    return-object p1

    .line 9
    :cond_5
    iget v0, p0, Landroid/support/v4/d02;->this:I

    invoke-static {p2, v0}, Landroid/support/v4/d02;->static(Lorg/antlr/v4/runtime/atn/else;I)Landroid/support/v4/d02;

    move-result-object p2

    if-eqz p3, :cond_6

    .line 10
    invoke-virtual {p3, p0, p1, p2}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object p2

    :cond_7
    const/4 p2, 0x0

    if-eq p0, p1, :cond_8

    .line 11
    iget-object v0, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    if-eqz v0, :cond_9

    iget-object v1, p1, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    invoke-virtual {v0, v1}, Lorg/antlr/v4/runtime/atn/else;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12
    :cond_8
    iget-object p2, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    :cond_9
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_c

    new-array v3, v0, [I

    .line 13
    iget v4, p0, Landroid/support/v4/d02;->this:I

    aput v4, v3, v2

    iget v5, p1, Landroid/support/v4/d02;->this:I

    aput v5, v3, v1

    if-le v4, v5, :cond_a

    aput v5, v3, v2

    aput v4, v3, v1

    :cond_a
    new-array v0, v0, [Lorg/antlr/v4/runtime/atn/else;

    aput-object p2, v0, v2

    aput-object p2, v0, v1

    .line 14
    new-instance p2, Landroid/support/v4/p3;

    invoke-direct {p2, v0, v3}, Landroid/support/v4/p3;-><init>([Lorg/antlr/v4/runtime/atn/else;[I)V

    if-eqz p3, :cond_b

    .line 15
    invoke-virtual {p3, p0, p1, p2}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object p2

    :cond_c
    new-array p2, v0, [I

    .line 16
    iget v3, p0, Landroid/support/v4/d02;->this:I

    aput v3, p2, v2

    iget v4, p1, Landroid/support/v4/d02;->this:I

    aput v4, p2, v1

    new-array v5, v0, [Lorg/antlr/v4/runtime/atn/else;

    .line 17
    iget-object v6, p0, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    aput-object v6, v5, v2

    iget-object v7, p1, Landroid/support/v4/d02;->goto:Lorg/antlr/v4/runtime/atn/else;

    aput-object v7, v5, v1

    if-le v3, v4, :cond_d

    aput v4, p2, v2

    aput v3, p2, v1

    new-array v5, v0, [Lorg/antlr/v4/runtime/atn/else;

    aput-object v7, v5, v2

    aput-object v6, v5, v1

    .line 18
    :cond_d
    new-instance v0, Landroid/support/v4/p3;

    invoke-direct {v0, v5, p2}, Landroid/support/v4/p3;-><init>([Lorg/antlr/v4/runtime/atn/else;[I)V

    if-eqz p3, :cond_e

    .line 19
    invoke-virtual {p3, p0, p1, v0}, Landroid/support/v4/h20;->try(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-object v0
.end method

.method public static try(Landroid/support/v4/static;Landroid/support/v4/vo1;)Lorg/antlr/v4/runtime/atn/else;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Landroid/support/v4/vo1;->for:Landroid/support/v4/qc1;

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/support/v4/vo1;->do:Landroid/support/v4/vo1;

    if-eqz v0, :cond_2

    sget-object v1, Landroid/support/v4/vo1;->for:Landroid/support/v4/qc1;

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/atn/else;->try(Landroid/support/v4/static;Landroid/support/v4/vo1;)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v0

    .line 4
    iget-object p0, p0, Landroid/support/v4/static;->do:Ljava/util/List;

    iget p1, p1, Landroid/support/v4/vo1;->if:I

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/finally;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v4/finally;->catch(I)Lorg/antlr/v4/runtime/atn/catch;

    move-result-object p0

    check-cast p0, Landroid/support/v4/ap1;

    .line 6
    iget-object p0, p0, Landroid/support/v4/ap1;->throw:Landroid/support/v4/finally;

    iget p0, p0, Landroid/support/v4/finally;->if:I

    invoke-static {v0, p0}, Landroid/support/v4/d02;->static(Lorg/antlr/v4/runtime/atn/else;I)Landroid/support/v4/d02;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    :goto_0
    sget-object p0, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    return-object p0
.end method


# virtual methods
.method public abstract break(I)I
.end method

.method public catch()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public class()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/atn/else;->if:I

    return v0
.end method

.method public native(Lorg/antlr/v4/runtime/this;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public public(Lorg/antlr/v4/runtime/this;I)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/else;->for:Landroid/support/v4/z60;

    invoke-virtual {p0, p1, v0, p2}, Lorg/antlr/v4/runtime/atn/else;->return(Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/atn/else;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public return(Lorg/antlr/v4/runtime/this;Lorg/antlr/v4/runtime/atn/else;I)[Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/this<",
            "**>;",
            "Lorg/antlr/v4/runtime/atn/else;",
            "I)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    move v8, p3

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p0

    .line 4
    :goto_1
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/else;->class()Z

    move-result v9

    if-nez v9, :cond_8

    if-eq v5, p2, :cond_8

    .line 5
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v9

    if-lez v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    shl-int v10, v4, v9

    .line 6
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v11

    if-ge v10, v11, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v10, -0x1

    shr-int v11, v2, v7

    and-int/2addr v10, v11

    .line 7
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v11

    sub-int/2addr v11, v4

    if-lt v10, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    :goto_3
    and-int/2addr v6, v11

    .line 8
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/else;->while()I

    move-result v11

    if-lt v10, v11, :cond_2

    goto :goto_6

    :cond_2
    add-int/2addr v7, v9

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    const/16 v9, 0x20

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-le v11, v4, :cond_4

    .line 10
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_4
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->for()Landroid/support/v4/static;

    move-result-object v9

    .line 12
    iget-object v9, v9, Landroid/support/v4/static;->do:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/finally;

    .line 13
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->class()[Ljava/lang/String;

    move-result-object v9

    iget v8, v8, Landroid/support/v4/finally;->for:I

    aget-object v8, v9, v8

    .line 14
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v8

    const v11, 0x7fffffff

    if-eq v8, v11, :cond_7

    .line 16
    invoke-virtual {v5}, Lorg/antlr/v4/runtime/atn/else;->class()Z

    move-result v8

    if-nez v8, :cond_7

    .line 17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v4, :cond_6

    .line 18
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    :cond_6
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    :cond_7
    :goto_5
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/else;->break(I)I

    move-result v8

    .line 21
    invoke-virtual {v5, v10}, Lorg/antlr/v4/runtime/atn/else;->this(I)Lorg/antlr/v4/runtime/atn/else;

    move-result-object v5

    goto/16 :goto_1

    :cond_8
    const-string v4, "]"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_9

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public abstract this(I)Lorg/antlr/v4/runtime/atn/else;
.end method

.method public abstract while()I
.end method
