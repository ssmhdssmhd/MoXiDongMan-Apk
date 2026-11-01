.class Lfreemarker/ext/beans/interface;
.super Lfreemarker/ext/beans/volatile;
.source "SourceFile"


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/volatile;-><init>(Z)V

    return-void
.end method

.method private class([Ljava/lang/Object;Ljava/util/List;Lfreemarker/ext/beans/this;Lfreemarker/ext/beans/try;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object p3

    .line 2
    array-length v0, p3

    add-int/lit8 v1, v0, -0x1

    .line 3
    aget-object p3, p3, v1

    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    .line 4
    array-length v2, p1

    .line 5
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v0, :cond_2

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int p1, v2, v1

    .line 8
    invoke-static {p3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 9
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/template/TemplateModel;

    invoke-virtual {p4, v4, p3}, Lfreemarker/ext/beans/try;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 10
    sget-object v6, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-ne v4, v6, :cond_0

    add-int/2addr v3, v5

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int v6, v3, v1

    .line 12
    invoke-static {p1, v6, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_1
    aput-object p1, v0, v1

    return-object v0

    .line 14
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfreemarker/template/TemplateModel;

    invoke-virtual {p4, p2, p3}, Lfreemarker/ext/beans/try;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    sget-object p4, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-ne p2, p4, :cond_3

    add-int/2addr v1, v5

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    invoke-static {p3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    .line 18
    invoke-static {p3, v4, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 19
    aput-object p3, p1, v1

    return-object p1
.end method

.method private const(I[Ljava/lang/Class;[I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/volatile;->this()[[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v1, v0

    .line 3
    array-length v2, p2

    .line 4
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 5
    aget-object v5, v0, v4

    aget-object v6, p2, v4

    invoke-virtual {p0, v5, v6}, Lfreemarker/ext/beans/volatile;->new(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    .line 6
    aget-object p2, p2, v3

    :goto_1
    if-ge v2, v1, :cond_2

    .line 7
    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p2}, Lfreemarker/ext/beans/volatile;->new(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-boolean p2, p0, Lfreemarker/ext/beans/volatile;->try:Z

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0, p1, p3}, Lfreemarker/ext/beans/volatile;->break(I[I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public catch(Lfreemarker/ext/beans/this;)[Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 3
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    aput-object v1, p1, v0

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Landroid/support/v4/mc;

    const-string v0, "Only varargs methods should be handled here"

    invoke-direct {p1, v0}, Landroid/support/v4/mc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if([Ljava/lang/Class;[I)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    invoke-virtual {p0}, Lfreemarker/ext/beans/volatile;->this()[[Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_1

    .line 3
    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p0, v3}, Lfreemarker/ext/beans/volatile;->goto(I)[I

    move-result-object v3

    .line 5
    invoke-direct {p0, v0, v4, v3}, Lfreemarker/ext/beans/interface;->const(I[Ljava/lang/Class;[I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, 0x1

    .line 6
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 7
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Lfreemarker/ext/beans/volatile;->goto(I)[I

    move-result-object v5

    .line 9
    invoke-direct {p0, v0, v4, v5}, Lfreemarker/ext/beans/interface;->const(I[Ljava/lang/Class;[I)V

    .line 10
    :cond_2
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 11
    invoke-direct {p0, v3, p1, p2}, Lfreemarker/ext/beans/interface;->const(I[Ljava/lang/Class;[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-lez v0, :cond_4

    .line 12
    invoke-direct {p0, v2, p1, p2}, Lfreemarker/ext/beans/interface;->const(I[Ljava/lang/Class;[I)V

    :cond_4
    return-void
.end method

.method public try(Ljava/util/List;Lfreemarker/ext/beans/try;)Lfreemarker/ext/beans/extends;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez p1, :cond_0

    .line 1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 2
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lfreemarker/ext/beans/volatile;->this()[[Ljava/lang/Class;

    move-result-object v4

    .line 4
    new-array v5, v3, [Ljava/lang/Object;

    add-int/lit8 v6, v3, 0x1

    .line 5
    array-length v7, v4

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v9, 0x0

    :goto_1
    if-ltz v6, :cond_7

    .line 6
    aget-object v10, v4, v6

    if-nez v10, :cond_1

    if-nez v6, :cond_5

    .line 7
    sget-object v1, Lfreemarker/ext/beans/import;->new:Lfreemarker/ext/beans/import;

    return-object v1

    .line 8
    :cond_1
    invoke-virtual {v0, v6}, Lfreemarker/ext/beans/volatile;->goto(I)[I

    move-result-object v9

    .line 9
    sget-object v11, Lfreemarker/ext/beans/volatile;->case:[I

    if-ne v9, v11, :cond_2

    const/4 v9, 0x0

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_7

    if-ge v13, v6, :cond_3

    move v14, v13

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v6, -0x1

    .line 11
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lfreemarker/template/TemplateModel;

    aget-object v7, v10, v14

    if-eqz v9, :cond_4

    aget v14, v9, v14

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 12
    :goto_4
    invoke-virtual {v1, v15, v7, v14}, Lfreemarker/ext/beans/try;->u(Lfreemarker/template/TemplateModel;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    .line 13
    sget-object v14, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-ne v7, v14, :cond_6

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 14
    :cond_6
    aput-object v7, v5, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 15
    :cond_7
    invoke-virtual {v0, v5, v8}, Lfreemarker/ext/beans/volatile;->case([Ljava/lang/Object;Z)Lfreemarker/ext/beans/default;

    move-result-object v3

    .line 16
    instance-of v4, v3, Lfreemarker/ext/beans/this;

    if-eqz v4, :cond_b

    .line 17
    check-cast v3, Lfreemarker/ext/beans/this;

    .line 18
    invoke-direct {v0, v5, v2, v3, v1}, Lfreemarker/ext/beans/interface;->class([Ljava/lang/Object;Ljava/util/List;Lfreemarker/ext/beans/this;Lfreemarker/ext/beans/try;)Ljava/lang/Object;

    move-result-object v1

    .line 19
    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 20
    check-cast v1, [Ljava/lang/Object;

    .line 21
    iget-boolean v2, v0, Lfreemarker/ext/beans/volatile;->try:Z

    if-eqz v2, :cond_8

    if-eqz v9, :cond_9

    .line 22
    invoke-virtual {v3}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v9}, Lfreemarker/ext/beans/volatile;->for([Ljava/lang/Object;[Ljava/lang/Class;[I)V

    goto :goto_5

    .line 23
    :cond_8
    invoke-virtual {v3}, Lfreemarker/ext/beans/this;->for()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lfreemarker/ext/beans/try;->this([Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 24
    :cond_9
    :goto_5
    new-instance v2, Lfreemarker/ext/beans/finally;

    invoke-direct {v2, v3, v1}, Lfreemarker/ext/beans/finally;-><init>(Lfreemarker/ext/beans/this;[Ljava/lang/Object;)V

    return-object v2

    .line 25
    :cond_a
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lfreemarker/ext/beans/import;->case(I)Lfreemarker/ext/beans/import;

    move-result-object v1

    return-object v1

    .line 26
    :cond_b
    check-cast v3, Lfreemarker/ext/beans/while;

    invoke-static {v3, v5}, Lfreemarker/ext/beans/import;->if(Lfreemarker/ext/beans/while;[Ljava/lang/Object;)Lfreemarker/ext/beans/extends;

    move-result-object v1

    return-object v1
.end method
