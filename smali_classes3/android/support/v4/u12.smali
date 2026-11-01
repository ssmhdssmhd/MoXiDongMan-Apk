.class public Landroid/support/v4/u12;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final break:Lorg/apache/commons/lang3/text/new;

.field public static final else:C = '$'

.field public static final goto:Lorg/apache/commons/lang3/text/new;

.field public static final this:Lorg/apache/commons/lang3/text/new;


# instance fields
.field private case:Z

.field private do:C

.field private for:Lorg/apache/commons/lang3/text/new;

.field private if:Lorg/apache/commons/lang3/text/new;

.field private new:Lorg/apache/commons/lang3/text/new;

.field private try:Lorg/apache/commons/lang3/text/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/for<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "${"

    .line 1
    invoke-static {v0}, Lorg/apache/commons/lang3/text/new;->const(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;

    move-result-object v0

    sput-object v0, Landroid/support/v4/u12;->goto:Lorg/apache/commons/lang3/text/new;

    const-string v0, "}"

    .line 2
    invoke-static {v0}, Lorg/apache/commons/lang3/text/new;->const(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;

    move-result-object v0

    sput-object v0, Landroid/support/v4/u12;->this:Lorg/apache/commons/lang3/text/new;

    const-string v0, ":-"

    .line 3
    invoke-static {v0}, Lorg/apache/commons/lang3/text/new;->const(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;

    move-result-object v0

    sput-object v0, Landroid/support/v4/u12;->break:Lorg/apache/commons/lang3/text/new;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Landroid/support/v4/u12;->goto:Lorg/apache/commons/lang3/text/new;

    sget-object v1, Landroid/support/v4/u12;->this:Lorg/apache/commons/lang3/text/new;

    const/4 v2, 0x0

    const/16 v3, 0x24

    invoke-direct {p0, v2, v0, v1, v3}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;Lorg/apache/commons/lang3/text/new;Lorg/apache/commons/lang3/text/new;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lorg/apache/commons/lang3/text/for;->if(Ljava/util/Map;)Lorg/apache/commons/lang3/text/for;

    move-result-object p1

    sget-object v0, Landroid/support/v4/u12;->goto:Lorg/apache/commons/lang3/text/new;

    sget-object v1, Landroid/support/v4/u12;->this:Lorg/apache/commons/lang3/text/new;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;Lorg/apache/commons/lang3/text/new;Lorg/apache/commons/lang3/text/new;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang3/text/for;->if(Ljava/util/Map;)Lorg/apache/commons/lang3/text/for;

    move-result-object p1

    const/16 v0, 0x24

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/commons/lang3/text/for;->if(Ljava/util/Map;)Lorg/apache/commons/lang3/text/for;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lorg/apache/commons/lang3/text/for;->if(Ljava/util/Map;)Lorg/apache/commons/lang3/text/for;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/for;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;)V"
        }
    .end annotation

    .line 6
    sget-object v0, Landroid/support/v4/u12;->goto:Lorg/apache/commons/lang3/text/new;

    sget-object v1, Landroid/support/v4/u12;->this:Lorg/apache/commons/lang3/text/new;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;Lorg/apache/commons/lang3/text/new;Lorg/apache/commons/lang3/text/new;C)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/for;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->instanceof(Lorg/apache/commons/lang3/text/for;)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/support/v4/u12;->transient(Ljava/lang/String;)Landroid/support/v4/u12;

    .line 10
    invoke-virtual {p0, p3}, Landroid/support/v4/u12;->a(Ljava/lang/String;)Landroid/support/v4/u12;

    .line 11
    invoke-virtual {p0, p4}, Landroid/support/v4/u12;->continue(C)V

    .line 12
    sget-object p1, Landroid/support/v4/u12;->break:Lorg/apache/commons/lang3/text/new;

    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->interface(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/for;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->instanceof(Lorg/apache/commons/lang3/text/for;)V

    .line 15
    invoke-virtual {p0, p2}, Landroid/support/v4/u12;->transient(Ljava/lang/String;)Landroid/support/v4/u12;

    .line 16
    invoke-virtual {p0, p3}, Landroid/support/v4/u12;->a(Ljava/lang/String;)Landroid/support/v4/u12;

    .line 17
    invoke-virtual {p0, p4}, Landroid/support/v4/u12;->continue(C)V

    .line 18
    invoke-virtual {p0, p5}, Landroid/support/v4/u12;->volatile(Ljava/lang/String;)Landroid/support/v4/u12;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/for;Lorg/apache/commons/lang3/text/new;Lorg/apache/commons/lang3/text/new;C)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;",
            "Lorg/apache/commons/lang3/text/new;",
            "Lorg/apache/commons/lang3/text/new;",
            "C)V"
        }
    .end annotation

    .line 19
    sget-object v5, Landroid/support/v4/u12;->break:Lorg/apache/commons/lang3/text/new;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;Lorg/apache/commons/lang3/text/new;Lorg/apache/commons/lang3/text/new;CLorg/apache/commons/lang3/text/new;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/for;Lorg/apache/commons/lang3/text/new;Lorg/apache/commons/lang3/text/new;CLorg/apache/commons/lang3/text/new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;",
            "Lorg/apache/commons/lang3/text/new;",
            "Lorg/apache/commons/lang3/text/new;",
            "C",
            "Lorg/apache/commons/lang3/text/new;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->instanceof(Lorg/apache/commons/lang3/text/for;)V

    .line 22
    invoke-virtual {p0, p2}, Landroid/support/v4/u12;->implements(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    .line 23
    invoke-virtual {p0, p3}, Landroid/support/v4/u12;->b(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    .line 24
    invoke-virtual {p0, p4}, Landroid/support/v4/u12;->continue(C)V

    .line 25
    invoke-virtual {p0, p5}, Landroid/support/v4/u12;->interface(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    return-void
.end method

.method private c(Lorg/apache/commons/lang3/text/if;IILjava/util/List;)I
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/if;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/u12;->new()Lorg/apache/commons/lang3/text/new;

    move-result-object v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/u12;->case()Lorg/apache/commons/lang3/text/new;

    move-result-object v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/u12;->if()C

    move-result v6

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/u12;->for()Lorg/apache/commons/lang3/text/new;

    move-result-object v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/u12;->else()Z

    move-result v8

    if-nez p4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 6
    :goto_0
    iget-object v12, v1, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int v13, v2, v3

    move v15, v2

    move v14, v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v12

    move-object/from16 v12, p4

    :goto_1
    if-ge v15, v14, :cond_f

    .line 7
    invoke-virtual {v4, v13, v15, v2, v14}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result v18

    if-nez v18, :cond_1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_9

    :cond_1
    if-le v15, v2, :cond_2

    add-int/lit8 v10, v15, -0x1

    .line 8
    aget-char v9, v13, v10

    if-ne v9, v6, :cond_2

    .line 9
    invoke-virtual {v1, v10}, Lorg/apache/commons/lang3/text/if;->deleteCharAt(I)Lorg/apache/commons/lang3/text/if;

    .line 10
    iget-object v9, v1, Lorg/apache/commons/lang3/text/if;->buffer:[C

    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object v13, v9

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x1

    goto/16 :goto_9

    :cond_2
    add-int v9, v15, v18

    move v10, v9

    const/16 v19, 0x0

    :goto_2
    if-ge v10, v14, :cond_e

    if-eqz v8, :cond_3

    .line 11
    invoke-virtual {v4, v13, v10, v2, v14}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result v20

    if-eqz v20, :cond_3

    add-int/lit8 v19, v19, 0x1

    add-int v10, v10, v20

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v5, v13, v10, v2, v14}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result v20

    if-nez v20, :cond_4

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    if-nez v19, :cond_d

    move-object/from16 v21, v5

    .line 13
    new-instance v5, Ljava/lang/String;

    sub-int v19, v10, v15

    move/from16 v22, v6

    sub-int v6, v19, v18

    invoke-direct {v5, v13, v9, v6}, Ljava/lang/String;-><init>([CII)V

    if-eqz v8, :cond_5

    .line 14
    new-instance v6, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v6, v5}, Lorg/apache/commons/lang3/text/if;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v5

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9, v5}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 16
    invoke-virtual {v6}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    add-int v10, v10, v20

    if-eqz v7, :cond_9

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    move/from16 v23, v11

    const/4 v6, 0x0

    .line 18
    :goto_3
    array-length v11, v9

    if-ge v6, v11, :cond_8

    if-nez v8, :cond_6

    .line 19
    array-length v11, v9

    invoke-virtual {v4, v9, v6, v6, v11}, Lorg/apache/commons/lang3/text/new;->else([CIII)I

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_4

    .line 20
    :cond_6
    invoke-virtual {v7, v9, v6}, Lorg/apache/commons/lang3/text/new;->case([CI)I

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v24, v4

    const/4 v4, 0x0

    .line 21
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/2addr v6, v11

    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v9

    goto :goto_6

    :cond_7
    move-object/from16 v24, v4

    const/4 v4, 0x0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v24

    goto :goto_3

    :cond_8
    :goto_4
    move-object/from16 v24, v4

    goto :goto_5

    :cond_9
    move-object/from16 v24, v4

    move/from16 v23, v11

    :goto_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_6
    if-nez v12, :cond_a

    .line 23
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v13, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_a
    invoke-direct {v0, v5, v12}, Landroid/support/v4/u12;->do(Ljava/lang/String;Ljava/util/List;)V

    .line 26
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v0, v5, v1, v15, v10}, Landroid/support/v4/u12;->private(Ljava/lang/String;Lorg/apache/commons/lang3/text/if;II)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move-object v6, v5

    :goto_7
    if-eqz v6, :cond_c

    .line 28
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 29
    invoke-virtual {v1, v15, v10, v6}, Lorg/apache/commons/lang3/text/if;->replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/if;

    .line 30
    invoke-direct {v0, v1, v15, v5, v12}, Landroid/support/v4/u12;->c(Lorg/apache/commons/lang3/text/if;IILjava/util/List;)I

    move-result v6

    add-int/2addr v6, v5

    sub-int v5, v10, v15

    sub-int/2addr v6, v5

    add-int/2addr v10, v6

    add-int/2addr v14, v6

    add-int v16, v16, v6

    .line 31
    iget-object v13, v1, Lorg/apache/commons/lang3/text/if;->buffer:[C

    move v15, v10

    const/16 v17, 0x1

    goto :goto_8

    :cond_c
    move v15, v10

    .line 32
    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v12, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    add-int/lit8 v19, v19, -0x1

    add-int v10, v10, v20

    move/from16 v6, v22

    move-object/from16 v4, v24

    goto/16 :goto_2

    :cond_e
    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v11

    const/4 v4, 0x0

    const/4 v6, 0x1

    move v15, v10

    :goto_9
    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v11, v23

    move-object/from16 v4, v24

    goto/16 :goto_1

    :cond_f
    move/from16 v23, v11

    if-eqz v23, :cond_10

    return v17

    :cond_10
    return v16
.end method

.method public static catch(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/u12;

    invoke-direct {v0, p1}, Landroid/support/v4/u12;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Landroid/support/v4/u12;->break(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static class(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/u12;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/u12;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/support/v4/u12;->break(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static const(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0, v0}, Landroid/support/v4/u12;->catch(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private do(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lorg/apache/commons/lang3/text/if;

    const/16 v0, 0x100

    invoke-direct {p1, v0}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    const-string v0, "Infinite loop in property interpolation of "

    .line 3
    invoke-virtual {p1, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    const-string v0, ": "

    .line 5
    invoke-virtual {p1, v0}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    const-string v0, "->"

    .line 6
    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/lang3/text/if;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/if;

    .line 7
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static package(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/u12;

    invoke-static {}, Lorg/apache/commons/lang3/text/for;->new()Lorg/apache/commons/lang3/text/for;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/u12;-><init>(Lorg/apache/commons/lang3/text/for;)V

    invoke-virtual {v0, p0}, Landroid/support/v4/u12;->break(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/u12;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/text/new;->const(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->b(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable suffix must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/u12;->case:Z

    return-void
.end method

.method public b(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/support/v4/u12;->for:Lorg/apache/commons/lang3/text/new;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable suffix matcher must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public break(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/if;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public case()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/u12;->for:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public continue(C)V
    .locals 0

    .line 1
    iput-char p1, p0, Landroid/support/v4/u12;->do:C

    return-void
.end method

.method public d(Lorg/apache/commons/lang3/text/if;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/u12;->c(Lorg/apache/commons/lang3/text/if;IILjava/util/List;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public default(Ljava/lang/StringBuilder;II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/if;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1, v0, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/2addr p3, p2

    .line 3
    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/u12;->case:Z

    return v0
.end method

.method public extends(Lorg/apache/commons/lang3/text/if;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    move-result p1

    return p1
.end method

.method public final(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/if;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public finally(Lorg/apache/commons/lang3/text/if;II)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    move-result p1

    return p1
.end method

.method public for()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/u12;->new:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public goto(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/u12;->this(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public if()C
    .locals 1

    .line 1
    iget-char v0, p0, Landroid/support/v4/u12;->do:C

    return v0
.end method

.method public implements(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Landroid/support/v4/u12;->if:Lorg/apache/commons/lang3/text/new;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable prefix matcher must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public import(Lorg/apache/commons/lang3/text/if;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/if;->append(Lorg/apache/commons/lang3/text/if;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public instanceof(Lorg/apache/commons/lang3/text/for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/u12;->try:Lorg/apache/commons/lang3/text/for;

    return-void
.end method

.method public interface(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/u12;->new:Lorg/apache/commons/lang3/text/new;

    return-object p0
.end method

.method public native(Lorg/apache/commons/lang3/text/if;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Lorg/apache/commons/lang3/text/if;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public new()Lorg/apache/commons/lang3/text/new;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/u12;->if:Lorg/apache/commons/lang3/text/new;

    return-object v0
.end method

.method public private(Ljava/lang/String;Lorg/apache/commons/lang3/text/if;II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/u12;->try()Lorg/apache/commons/lang3/text/for;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/commons/lang3/text/for;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public protected(C)Landroid/support/v4/u12;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/text/new;->do(C)Lorg/apache/commons/lang3/text/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->implements(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    move-result-object p1

    return-object p1
.end method

.method public public([C)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/if;->append([C)Lorg/apache/commons/lang3/text/if;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    array-length p1, p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public return([CII)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append([CII)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/StringBuffer;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/u12;->switch(Ljava/lang/StringBuffer;II)Z

    move-result p1

    return p1
.end method

.method public strictfp(C)Landroid/support/v4/u12;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/text/new;->do(C)Lorg/apache/commons/lang3/text/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->interface(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/if;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/2addr p3, p2

    .line 3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public switch(Ljava/lang/StringBuffer;II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/if;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1, v0, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/2addr p3, p2

    .line 3
    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    return p1
.end method

.method public synchronized(C)Landroid/support/v4/u12;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/text/new;->do(C)Lorg/apache/commons/lang3/text/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->b(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    move-result-object p1

    return-object p1
.end method

.method public this(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public throws(Ljava/lang/StringBuilder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/u12;->default(Ljava/lang/StringBuilder;II)Z

    move-result p1

    return p1
.end method

.method public transient(Ljava/lang/String;)Landroid/support/v4/u12;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/text/new;->const(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->implements(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable prefix must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public try()Lorg/apache/commons/lang3/text/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/for<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/u12;->try:Lorg/apache/commons/lang3/text/for;

    return-object v0
.end method

.method public volatile(Ljava/lang/String;)Landroid/support/v4/u12;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->interface(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/text/new;->const(Ljava/lang/String;)Lorg/apache/commons/lang3/text/new;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/u12;->interface(Lorg/apache/commons/lang3/text/new;)Landroid/support/v4/u12;

    move-result-object p1

    return-object p1
.end method

.method public while(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/if;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/if;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/if;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/if;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/u12;->d(Lorg/apache/commons/lang3/text/if;II)Z

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/if;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
