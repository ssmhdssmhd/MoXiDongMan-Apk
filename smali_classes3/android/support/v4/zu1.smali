.class public Landroid/support/v4/zu1;
.super Lorg/bouncycastle/math/ec/new$for;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/zu1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/new$for;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p2, p1, :cond_2

    iput-boolean p4, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of the field elements is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/new$for;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;)V

    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/zu1;->implements()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/zu1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/zu1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public b(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/bouncycastle/math/ec/for;->public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/bouncycastle/math/ec/for;->public(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public c(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/zu1;->f(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/zu1;->d(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public d(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/zu1;->f(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/zu1;->f(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/zu1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v3

    iget-object v2, v0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    check-cast v2, Landroid/support/v4/yu1;

    iget-object v4, v0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    check-cast v4, Landroid/support/v4/yu1;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    check-cast v5, Landroid/support/v4/yu1;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    check-cast v6, Landroid/support/v4/yu1;

    iget-object v7, v0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Landroid/support/v4/yu1;

    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/new;->public(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    check-cast v1, Landroid/support/v4/yu1;

    const/16 v9, 0x11

    invoke-static {v9}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v10

    invoke-static {v9}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v11

    invoke-static {v9}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v12

    invoke-static {v9}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v13

    invoke-virtual {v7}, Landroid/support/v4/yu1;->this()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v5, v5, Landroid/support/v4/yu1;->do:[I

    iget-object v6, v6, Landroid/support/v4/yu1;->do:[I

    goto :goto_0

    :cond_3
    iget-object v15, v7, Landroid/support/v4/yu1;->do:[I

    invoke-static {v15, v12}, Landroid/support/v4/xu1;->catch([I[I)V

    iget-object v5, v5, Landroid/support/v4/yu1;->do:[I

    invoke-static {v12, v5, v11}, Landroid/support/v4/xu1;->else([I[I[I)V

    iget-object v5, v7, Landroid/support/v4/yu1;->do:[I

    invoke-static {v12, v5, v12}, Landroid/support/v4/xu1;->else([I[I[I)V

    iget-object v5, v6, Landroid/support/v4/yu1;->do:[I

    invoke-static {v12, v5, v12}, Landroid/support/v4/xu1;->else([I[I[I)V

    move-object v5, v11

    move-object v6, v12

    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/yu1;->this()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v2, v2, Landroid/support/v4/yu1;->do:[I

    iget-object v4, v4, Landroid/support/v4/yu1;->do:[I

    goto :goto_1

    :cond_4
    iget-object v8, v1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v8, v13}, Landroid/support/v4/xu1;->catch([I[I)V

    iget-object v2, v2, Landroid/support/v4/yu1;->do:[I

    invoke-static {v13, v2, v10}, Landroid/support/v4/xu1;->else([I[I[I)V

    iget-object v2, v1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v13, v2, v13}, Landroid/support/v4/xu1;->else([I[I[I)V

    iget-object v2, v4, Landroid/support/v4/yu1;->do:[I

    invoke-static {v13, v2, v13}, Landroid/support/v4/xu1;->else([I[I[I)V

    move-object v2, v10

    move-object v4, v13

    :goto_1
    invoke-static {v9}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v8

    invoke-static {v2, v5, v8}, Landroid/support/v4/xu1;->const([I[I[I)V

    invoke-static {v4, v6, v11}, Landroid/support/v4/xu1;->const([I[I[I)V

    invoke-static {v9, v8}, Landroid/support/v4/q21;->synchronized(I[I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v9, v11}, Landroid/support/v4/q21;->synchronized(I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/zu1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    return-object v1

    :cond_6
    invoke-static {v8, v12}, Landroid/support/v4/xu1;->catch([I[I)V

    invoke-static {v9}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v5

    invoke-static {v12, v8, v5}, Landroid/support/v4/xu1;->else([I[I[I)V

    invoke-static {v12, v2, v12}, Landroid/support/v4/xu1;->else([I[I[I)V

    invoke-static {v4, v5, v10}, Landroid/support/v4/xu1;->else([I[I[I)V

    new-instance v4, Landroid/support/v4/yu1;

    invoke-direct {v4, v13}, Landroid/support/v4/yu1;-><init>([I)V

    iget-object v2, v4, Landroid/support/v4/yu1;->do:[I

    invoke-static {v11, v2}, Landroid/support/v4/xu1;->catch([I[I)V

    iget-object v2, v4, Landroid/support/v4/yu1;->do:[I

    invoke-static {v2, v5, v2}, Landroid/support/v4/xu1;->do([I[I[I)V

    iget-object v2, v4, Landroid/support/v4/yu1;->do:[I

    invoke-static {v2, v12, v2}, Landroid/support/v4/xu1;->const([I[I[I)V

    iget-object v2, v4, Landroid/support/v4/yu1;->do:[I

    invoke-static {v2, v12, v2}, Landroid/support/v4/xu1;->const([I[I[I)V

    new-instance v6, Landroid/support/v4/yu1;

    invoke-direct {v6, v5}, Landroid/support/v4/yu1;-><init>([I)V

    iget-object v2, v4, Landroid/support/v4/yu1;->do:[I

    iget-object v5, v6, Landroid/support/v4/yu1;->do:[I

    invoke-static {v12, v2, v5}, Landroid/support/v4/xu1;->const([I[I[I)V

    iget-object v2, v6, Landroid/support/v4/yu1;->do:[I

    invoke-static {v2, v11, v11}, Landroid/support/v4/xu1;->else([I[I[I)V

    iget-object v2, v6, Landroid/support/v4/yu1;->do:[I

    invoke-static {v11, v10, v2}, Landroid/support/v4/xu1;->const([I[I[I)V

    new-instance v2, Landroid/support/v4/yu1;

    invoke-direct {v2, v8}, Landroid/support/v4/yu1;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v5, v2, Landroid/support/v4/yu1;->do:[I

    iget-object v7, v7, Landroid/support/v4/yu1;->do:[I

    invoke-static {v5, v7, v5}, Landroid/support/v4/xu1;->else([I[I[I)V

    :cond_7
    if-nez v15, :cond_8

    iget-object v5, v2, Landroid/support/v4/yu1;->do:[I

    iget-object v1, v1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v5, v1, v5}, Landroid/support/v4/xu1;->else([I[I[I)V

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/bouncycastle/math/ec/for;

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v8, Landroid/support/v4/zu1;

    iget-boolean v7, v0, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v2, v8

    move-object v5, v6

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/zu1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v8
.end method

.method public e(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/zu1;->f(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public f(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;
    .locals 0

    invoke-virtual {p1, p1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    return-object p1
.end method

.method public implements()Lorg/bouncycastle/math/ec/new;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/zu1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public new()Lorg/bouncycastle/math/ec/new;
    .locals 4

    new-instance v0, Landroid/support/v4/zu1;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/support/v4/zu1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V

    return-object v0
.end method

.method public private()Lorg/bouncycastle/math/ec/new;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/support/v4/zu1;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->final()Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/zu1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v0
.end method

.method public synchronized()Lorg/bouncycastle/math/ec/new;
    .locals 13

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    check-cast v0, Landroid/support/v4/yu1;

    invoke-virtual {v0}, Landroid/support/v4/yu1;->break()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    check-cast v1, Landroid/support/v4/yu1;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Landroid/support/v4/yu1;

    const/16 v5, 0x11

    invoke-static {v5}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v6

    invoke-static {v5}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v7

    invoke-static {v5}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v8

    iget-object v9, v0, Landroid/support/v4/yu1;->do:[I

    invoke-static {v9, v8}, Landroid/support/v4/xu1;->catch([I[I)V

    invoke-static {v5}, Landroid/support/v4/q21;->switch(I)[I

    move-result-object v9

    invoke-static {v8, v9}, Landroid/support/v4/xu1;->catch([I[I)V

    invoke-virtual {v3}, Landroid/support/v4/yu1;->this()Z

    move-result v10

    iget-object v11, v3, Landroid/support/v4/yu1;->do:[I

    if-nez v10, :cond_2

    invoke-static {v11, v7}, Landroid/support/v4/xu1;->catch([I[I)V

    move-object v11, v7

    :cond_2
    iget-object v12, v1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v12, v11, v6}, Landroid/support/v4/xu1;->const([I[I[I)V

    iget-object v12, v1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v12, v11, v7}, Landroid/support/v4/xu1;->do([I[I[I)V

    invoke-static {v7, v6, v7}, Landroid/support/v4/xu1;->else([I[I[I)V

    invoke-static {v5, v7, v7, v7}, Landroid/support/v4/q21;->else(I[I[I[I)I

    invoke-static {v7}, Landroid/support/v4/xu1;->break([I)V

    iget-object v1, v1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v8, v1, v8}, Landroid/support/v4/xu1;->else([I[I[I)V

    const/4 v1, 0x2

    invoke-static {v5, v8, v1, v4}, Landroid/support/v4/q21;->y(I[III)I

    invoke-static {v8}, Landroid/support/v4/xu1;->break([I)V

    const/4 v1, 0x3

    invoke-static {v5, v9, v1, v4, v6}, Landroid/support/v4/q21;->B(I[III[I)I

    invoke-static {v6}, Landroid/support/v4/xu1;->break([I)V

    new-instance v5, Landroid/support/v4/yu1;

    invoke-direct {v5, v9}, Landroid/support/v4/yu1;-><init>([I)V

    iget-object v1, v5, Landroid/support/v4/yu1;->do:[I

    invoke-static {v7, v1}, Landroid/support/v4/xu1;->catch([I[I)V

    iget-object v1, v5, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v8, v1}, Landroid/support/v4/xu1;->const([I[I[I)V

    iget-object v1, v5, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v8, v1}, Landroid/support/v4/xu1;->const([I[I[I)V

    new-instance v9, Landroid/support/v4/yu1;

    invoke-direct {v9, v8}, Landroid/support/v4/yu1;-><init>([I)V

    iget-object v1, v5, Landroid/support/v4/yu1;->do:[I

    iget-object v11, v9, Landroid/support/v4/yu1;->do:[I

    invoke-static {v8, v1, v11}, Landroid/support/v4/xu1;->const([I[I[I)V

    iget-object v1, v9, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v7, v1}, Landroid/support/v4/xu1;->else([I[I[I)V

    iget-object v1, v9, Landroid/support/v4/yu1;->do:[I

    invoke-static {v1, v6, v1}, Landroid/support/v4/xu1;->const([I[I[I)V

    new-instance v1, Landroid/support/v4/yu1;

    invoke-direct {v1, v7}, Landroid/support/v4/yu1;-><init>([I)V

    iget-object v0, v0, Landroid/support/v4/yu1;->do:[I

    iget-object v6, v1, Landroid/support/v4/yu1;->do:[I

    invoke-static {v0, v6}, Landroid/support/v4/xu1;->final([I[I)V

    if-nez v10, :cond_3

    iget-object v0, v1, Landroid/support/v4/yu1;->do:[I

    iget-object v3, v3, Landroid/support/v4/yu1;->do:[I

    invoke-static {v0, v3, v0}, Landroid/support/v4/xu1;->else([I[I[I)V

    :cond_3
    new-instance v0, Landroid/support/v4/zu1;

    const/4 v3, 0x1

    new-array v6, v3, [Lorg/bouncycastle/math/ec/for;

    aput-object v1, v6, v4

    iget-boolean v7, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v1, v0

    move-object v3, v5

    move-object v4, v9

    move-object v5, v6

    move v6, v7

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/zu1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v0
.end method
