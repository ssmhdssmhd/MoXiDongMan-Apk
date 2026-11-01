.class public Lorg/antlr/v4/runtime/atn/this;
.super Lorg/antlr/v4/runtime/atn/new;
.source "SourceFile"


# instance fields
.field public default:Landroid/support/v4/au;

.field public extends:I

.field public final public:[Landroid/support/v4/ix;

.field public return:I

.field public static:I

.field public switch:I

.field public throws:I


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/goto;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/atn/new;

    iget-object v0, v0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v1

    check-cast v1, Lorg/antlr/v4/runtime/atn/new;

    iget-object v1, v1, Lorg/antlr/v4/runtime/atn/new;->else:[Lorg/antlr/v4/runtime/dfa/do;

    invoke-virtual {p1}, Lorg/antlr/v4/runtime/this;->this()Landroid/support/v4/extends;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/atn/new;

    iget-object v2, v2, Landroid/support/v4/extends;->if:Landroid/support/v4/ef1;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/antlr/v4/runtime/atn/new;-><init>(Lorg/antlr/v4/runtime/goto;Landroid/support/v4/static;[Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/ef1;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/extends;->do:Landroid/support/v4/static;

    iget-object p1, p1, Landroid/support/v4/static;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/atn/this;->return:I

    .line 3
    new-array p1, p1, [Landroid/support/v4/ix;

    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget v0, p0, Lorg/antlr/v4/runtime/atn/this;->return:I

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    new-instance v1, Landroid/support/v4/ix;

    invoke-direct {v1, p1}, Landroid/support/v4/ix;-><init>(I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public default(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;I)Landroid/support/v4/au;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/new;->default(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;I)Landroid/support/v4/au;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lorg/antlr/v4/runtime/atn/this;->default:Landroid/support/v4/au;

    return-object p1
.end method

.method public l(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    const/4 v1, 0x0

    if-eqz v9, :cond_0

    .line 1
    invoke-virtual {v9, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/support/v4/throws;->case()Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 3
    :goto_0
    iget-boolean v2, v10, Landroid/support/v4/throws;->goto:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lorg/antlr/v4/runtime/atn/this;->extends:I

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v1, v1, v2

    iget-object v7, v1, Landroid/support/v4/ix;->class:Ljava/util/List;

    new-instance v8, Landroid/support/v4/ir;

    iget-object v4, v0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    move-object v1, v8

    move-object/from16 v3, p7

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/ir;-><init>(ILandroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object v1, v0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v2, v0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v1, v1, v2

    iget-object v11, v1, Landroid/support/v4/ix;->final:Ljava/util/List;

    new-instance v12, Landroid/support/v4/m1;

    iget-object v5, v0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    iget-boolean v8, v10, Landroid/support/v4/throws;->goto:Z

    move-object v1, v12

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Landroid/support/v4/m1;-><init>(ILandroid/support/v4/throws;Ljava/util/BitSet;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-super/range {p0 .. p7}, Lorg/antlr/v4/runtime/atn/new;->l(Lorg/antlr/v4/runtime/dfa/do;Landroid/support/v4/au;IIZLjava/util/BitSet;Landroid/support/v4/throws;)V

    return-void
.end method

.method public m(Lorg/antlr/v4/runtime/dfa/do;Ljava/util/BitSet;Landroid/support/v4/throws;II)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/this;->extends:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/support/v4/throws;->case()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/this;->extends:I

    .line 3
    :goto_0
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v0, v0, v1

    iget-wide v1, v0, Landroid/support/v4/ix;->import:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/support/v4/ix;->import:J

    .line 4
    invoke-super/range {p0 .. p5}, Lorg/antlr/v4/runtime/atn/new;->m(Lorg/antlr/v4/runtime/dfa/do;Ljava/util/BitSet;Landroid/support/v4/throws;II)V

    return-void
.end method

.method public n(Lorg/antlr/v4/runtime/dfa/do;ILandroid/support/v4/throws;II)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/antlr/v4/runtime/atn/this;->extends:I

    if-eq p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/v4/ix;->class:Ljava/util/List;

    new-instance v7, Landroid/support/v4/ir;

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    move-object v1, v7

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/ir;-><init>(ILandroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;II)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/antlr/v4/runtime/atn/new;->n(Lorg/antlr/v4/runtime/dfa/do;ILandroid/support/v4/throws;II)V

    return-void
.end method

.method public package(Lorg/antlr/v4/runtime/atn/break;Landroid/support/v4/qc1;IZ)Z
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/antlr/v4/runtime/atn/new;->package(Lorg/antlr/v4/runtime/atn/break;Landroid/support/v4/qc1;IZ)Z

    move-result p2

    .line 2
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/break$new;

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lorg/antlr/v4/runtime/atn/this;->switch:I

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lorg/antlr/v4/runtime/atn/this;->static:I

    :goto_1
    move v4, v0

    .line 5
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v1, p0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v0, v0, v1

    iget-object v9, v0, Landroid/support/v4/ix;->super:Ljava/util/List;

    new-instance v10, Landroid/support/v4/df1;

    iget-object v2, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    iget v3, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    move-object v0, v10

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/df1;-><init>(ILorg/antlr/v4/runtime/TokenStream;IILorg/antlr/v4/runtime/atn/break;ZIZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return p2
.end method

.method public protected(Landroid/support/v4/au;I)Landroid/support/v4/au;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/this;->static:I

    .line 2
    invoke-super {p0, p1, p2}, Lorg/antlr/v4/runtime/atn/new;->protected(Landroid/support/v4/au;I)Landroid/support/v4/au;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v2, p0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v1, v0, v2

    iget-wide v3, v1, Landroid/support/v4/ix;->while:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Landroid/support/v4/ix;->while:J

    .line 4
    sget-object v1, Landroid/support/v4/extends;->try:Landroid/support/v4/au;

    if-ne p2, v1, :cond_0

    .line 5
    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/support/v4/ix;->const:Ljava/util/List;

    new-instance v8, Landroid/support/v4/i80;

    iget-object v3, p1, Landroid/support/v4/au;->if:Landroid/support/v4/throws;

    iget-object v4, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    iget v5, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    iget v6, p0, Lorg/antlr/v4/runtime/atn/this;->static:I

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/i80;-><init>(ILandroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iput-object p2, p0, Lorg/antlr/v4/runtime/atn/this;->default:Landroid/support/v4/au;

    return-object p2
.end method

.method public r()Landroid/support/v4/au;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/this;->default:Landroid/support/v4/au;

    return-object v0
.end method

.method public s()[Landroid/support/v4/ix;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    return-object v0
.end method

.method public super(Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    const/4 v10, -0x1

    .line 1
    :try_start_0
    iput v10, v1, Lorg/antlr/v4/runtime/atn/this;->static:I

    .line 2
    iput v10, v1, Lorg/antlr/v4/runtime/atn/this;->switch:I

    .line 3
    iput v0, v1, Lorg/antlr/v4/runtime/atn/this;->throws:I

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 5
    invoke-super/range {p0 .. p3}, Lorg/antlr/v4/runtime/atn/new;->super(Lorg/antlr/v4/runtime/TokenStream;ILandroid/support/v4/qc1;)I

    move-result v11

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 7
    iget-object v6, v1, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    aget-object v7, v6, v0

    iget-wide v8, v7, Landroid/support/v4/ix;->for:J

    sub-long/2addr v4, v2

    add-long/2addr v8, v4

    iput-wide v8, v7, Landroid/support/v4/ix;->for:J

    .line 8
    aget-object v2, v6, v0

    iget-wide v3, v2, Landroid/support/v4/ix;->if:J

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iput-wide v3, v2, Landroid/support/v4/ix;->if:J

    .line 9
    iget v2, v1, Lorg/antlr/v4/runtime/atn/this;->static:I

    iget v3, v1, Lorg/antlr/v4/runtime/atn/new;->catch:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 10
    aget-object v3, v6, v0

    iget-wide v4, v3, Landroid/support/v4/ix;->new:J

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v3, Landroid/support/v4/ix;->new:J

    .line 11
    aget-object v2, v6, v0

    aget-object v3, v6, v0

    iget-wide v3, v3, Landroid/support/v4/ix;->try:J

    const-wide/16 v12, 0x0

    cmp-long v5, v3, v12

    if-nez v5, :cond_0

    move-wide v3, v7

    goto :goto_0

    :cond_0
    aget-object v3, v6, v0

    iget-wide v3, v3, Landroid/support/v4/ix;->try:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_0
    iput-wide v3, v2, Landroid/support/v4/ix;->try:J

    .line 12
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    aget-object v3, v2, v0

    iget-wide v3, v3, Landroid/support/v4/ix;->case:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_1

    .line 13
    aget-object v3, v2, v0

    iput-wide v7, v3, Landroid/support/v4/ix;->case:J

    .line 14
    aget-object v14, v2, v0

    new-instance v15, Landroid/support/v4/dw0;

    const/4 v4, 0x0

    iget v7, v1, Lorg/antlr/v4/runtime/atn/new;->catch:I

    iget v8, v1, Lorg/antlr/v4/runtime/atn/this;->static:I

    const/4 v9, 0x0

    move-object v2, v15

    move/from16 v3, p2

    move v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Landroid/support/v4/dw0;-><init>(ILandroid/support/v4/throws;ILorg/antlr/v4/runtime/TokenStream;IIZ)V

    iput-object v15, v14, Landroid/support/v4/ix;->else:Landroid/support/v4/dw0;

    .line 15
    :cond_1
    iget v2, v1, Lorg/antlr/v4/runtime/atn/this;->switch:I

    if-ltz v2, :cond_3

    .line 16
    iget v3, v1, Lorg/antlr/v4/runtime/atn/new;->catch:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 17
    iget-object v3, v1, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    aget-object v4, v3, v0

    iget-wide v5, v4, Landroid/support/v4/ix;->goto:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/support/v4/ix;->goto:J

    .line 18
    aget-object v2, v3, v0

    aget-object v4, v3, v0

    iget-wide v4, v4, Landroid/support/v4/ix;->this:J

    cmp-long v6, v4, v12

    if-nez v6, :cond_2

    move-wide v3, v7

    goto :goto_1

    :cond_2
    aget-object v3, v3, v0

    iget-wide v3, v3, Landroid/support/v4/ix;->this:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_1
    iput-wide v3, v2, Landroid/support/v4/ix;->this:J

    .line 19
    iget-object v2, v1, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    aget-object v3, v2, v0

    iget-wide v3, v3, Landroid/support/v4/ix;->break:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_3

    .line 20
    aget-object v3, v2, v0

    iput-wide v7, v3, Landroid/support/v4/ix;->break:J

    .line 21
    aget-object v12, v2, v0

    new-instance v13, Landroid/support/v4/dw0;

    const/4 v4, 0x0

    iget v7, v1, Lorg/antlr/v4/runtime/atn/new;->catch:I

    iget v8, v1, Lorg/antlr/v4/runtime/atn/this;->switch:I

    const/4 v9, 0x1

    move-object v2, v13

    move/from16 v3, p2

    move v5, v11

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v9}, Landroid/support/v4/dw0;-><init>(ILandroid/support/v4/throws;ILorg/antlr/v4/runtime/TokenStream;IIZ)V

    iput-object v13, v12, Landroid/support/v4/ix;->catch:Landroid/support/v4/dw0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_3
    iput v10, v1, Lorg/antlr/v4/runtime/atn/this;->throws:I

    return v11

    :catchall_0
    move-exception v0

    iput v10, v1, Lorg/antlr/v4/runtime/atn/this;->throws:I

    throw v0
.end method

.method public switch(Landroid/support/v4/throws;IZ)Landroid/support/v4/throws;
    .locals 9

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    invoke-interface {v0}, Lorg/antlr/v4/runtime/IntStream;->index()I

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/atn/this;->switch:I

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/atn/new;->switch(Landroid/support/v4/throws;IZ)Landroid/support/v4/throws;

    move-result-object p2

    const-wide/16 v0, 0x1

    if-eqz p3, :cond_2

    .line 3
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v3, p0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v2, p3, v3

    iget-wide v4, v2, Landroid/support/v4/ix;->native:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Landroid/support/v4/ix;->native:J

    if-eqz p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget-object p3, p3, v3

    iget-object p3, p3, Landroid/support/v4/ix;->const:Ljava/util/List;

    new-instance v0, Landroid/support/v4/i80;

    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    iget v6, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    iget v7, p0, Lorg/antlr/v4/runtime/atn/this;->switch:I

    const/4 v8, 0x1

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/i80;-><init>(ILandroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    iget-object p3, p0, Lorg/antlr/v4/runtime/atn/this;->public:[Landroid/support/v4/ix;

    iget v3, p0, Lorg/antlr/v4/runtime/atn/this;->throws:I

    aget-object v2, p3, v3

    iget-wide v4, v2, Landroid/support/v4/ix;->throw:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Landroid/support/v4/ix;->throw:J

    if-eqz p2, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    aget-object p3, p3, v3

    iget-object p3, p3, Landroid/support/v4/ix;->const:Ljava/util/List;

    new-instance v0, Landroid/support/v4/i80;

    iget-object v5, p0, Lorg/antlr/v4/runtime/atn/new;->break:Lorg/antlr/v4/runtime/TokenStream;

    iget v6, p0, Lorg/antlr/v4/runtime/atn/new;->catch:I

    iget v7, p0, Lorg/antlr/v4/runtime/atn/this;->static:I

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/i80;-><init>(ILandroid/support/v4/throws;Lorg/antlr/v4/runtime/TokenStream;IIZ)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p2
.end method
