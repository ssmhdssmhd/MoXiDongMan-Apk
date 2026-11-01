.class public Landroid/support/v4/iw1;
.super Lorg/bouncycastle/math/ec/new$if;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/new$if;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V

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

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/new$if;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;)V

    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 9

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/iw1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/new;->public(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    aget-object v5, v5, v3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v7

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v8

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/for;->if()Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-virtual {v6, v4, v0, v8}, Lorg/bouncycastle/math/ec/for;->const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v2, v8}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Landroid/support/v4/iw1;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-direct {p1, v1, v0, v2, v3}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-object p1

    :cond_6
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v0, v6}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1, v8}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {v0, v6}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v4, v5, p1}, Lorg/bouncycastle/math/ec/for;->const(Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v4

    new-instance v6, Landroid/support/v4/iw1;

    const/4 v0, 0x1

    new-array v5, v0, [Lorg/bouncycastle/math/ec/for;

    aput-object p1, v5, v3

    iget-boolean p1, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v0, v6

    move-object v3, v4

    move-object v4, v5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v6

    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/iw1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method public do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;
    .locals 17

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
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    iget-object v2, v0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    check-cast v2, Landroid/support/v4/hw1;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    check-cast v3, Landroid/support/v4/hw1;

    invoke-virtual {v2}, Landroid/support/v4/hw1;->break()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroid/support/v4/hw1;->break()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/new;->do(Lorg/bouncycastle/math/ec/new;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v5, v0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    check-cast v5, Landroid/support/v4/hw1;

    iget-object v6, v0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Landroid/support/v4/hw1;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v8

    check-cast v8, Landroid/support/v4/hw1;

    invoke-virtual {v1, v7}, Lorg/bouncycastle/math/ec/new;->public(I)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    check-cast v1, Landroid/support/v4/hw1;

    invoke-static {}, Landroid/support/v4/p21;->for()[J

    move-result-object v9

    invoke-static {}, Landroid/support/v4/p21;->for()[J

    move-result-object v10

    invoke-static {}, Landroid/support/v4/p21;->for()[J

    move-result-object v11

    invoke-static {}, Landroid/support/v4/p21;->for()[J

    move-result-object v12

    invoke-virtual {v6}, Landroid/support/v4/hw1;->this()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    iget-object v13, v6, Landroid/support/v4/hw1;->do:[J

    invoke-static {v13}, Landroid/support/v4/gw1;->while([J)[J

    move-result-object v13

    :goto_0
    if-nez v13, :cond_5

    iget-object v15, v3, Landroid/support/v4/hw1;->do:[J

    iget-object v14, v8, Landroid/support/v4/hw1;->do:[J

    goto :goto_1

    :cond_5
    iget-object v14, v3, Landroid/support/v4/hw1;->do:[J

    invoke-static {v14, v13, v10}, Landroid/support/v4/gw1;->super([J[J[J)V

    iget-object v14, v8, Landroid/support/v4/hw1;->do:[J

    invoke-static {v14, v13, v12}, Landroid/support/v4/gw1;->super([J[J[J)V

    move-object v15, v10

    move-object v14, v12

    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/hw1;->this()Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, v1, Landroid/support/v4/hw1;->do:[J

    invoke-static {v1}, Landroid/support/v4/gw1;->while([J)[J

    move-result-object v1

    :goto_2
    iget-object v2, v2, Landroid/support/v4/hw1;->do:[J

    if-nez v1, :cond_7

    iget-object v7, v5, Landroid/support/v4/hw1;->do:[J

    goto :goto_3

    :cond_7
    invoke-static {v2, v1, v9}, Landroid/support/v4/gw1;->super([J[J[J)V

    iget-object v2, v5, Landroid/support/v4/hw1;->do:[J

    invoke-static {v2, v1, v11}, Landroid/support/v4/gw1;->super([J[J[J)V

    move-object v2, v9

    move-object v7, v11

    :goto_3
    invoke-static {v7, v14, v11}, Landroid/support/v4/gw1;->if([J[J[J)V

    invoke-static {v2, v15, v12}, Landroid/support/v4/gw1;->if([J[J[J)V

    invoke-static {v12}, Landroid/support/v4/p21;->goto([J)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v11}, Landroid/support/v4/p21;->goto([J)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/iw1;->synchronized()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    return-object v1

    :cond_8
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    return-object v1

    :cond_9
    invoke-virtual {v3}, Landroid/support/v4/hw1;->break()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    check-cast v2, Landroid/support/v4/hw1;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->native()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/for;->new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v5

    check-cast v5, Landroid/support/v4/hw1;

    invoke-virtual {v5}, Landroid/support/v4/hw1;->break()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v1, Landroid/support/v4/iw1;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    iget-boolean v3, v0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-object v1

    :cond_a
    invoke-virtual {v2, v5}, Landroid/support/v4/hw1;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/for;->new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    check-cast v1, Landroid/support/v4/hw1;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/if;->super(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    check-cast v2, Landroid/support/v4/hw1;

    move-object v6, v1

    goto :goto_4

    :cond_b
    invoke-static {v12, v12}, Landroid/support/v4/gw1;->return([J[J)V

    invoke-static {v11}, Landroid/support/v4/gw1;->while([J)[J

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/support/v4/gw1;->super([J[J[J)V

    invoke-static {v15, v3, v10}, Landroid/support/v4/gw1;->super([J[J[J)V

    new-instance v2, Landroid/support/v4/hw1;

    invoke-direct {v2, v9}, Landroid/support/v4/hw1;-><init>([J)V

    iget-object v7, v2, Landroid/support/v4/hw1;->do:[J

    invoke-static {v9, v10, v7}, Landroid/support/v4/gw1;->const([J[J[J)V

    invoke-virtual {v2}, Landroid/support/v4/hw1;->break()Z

    move-result v7

    if-eqz v7, :cond_c

    new-instance v1, Landroid/support/v4/iw1;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    iget-boolean v5, v0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-object v1

    :cond_c
    new-instance v7, Landroid/support/v4/hw1;

    invoke-direct {v7, v11}, Landroid/support/v4/hw1;-><init>([J)V

    iget-object v8, v7, Landroid/support/v4/hw1;->do:[J

    invoke-static {v12, v3, v8}, Landroid/support/v4/gw1;->super([J[J[J)V

    if-eqz v1, :cond_d

    iget-object v3, v7, Landroid/support/v4/hw1;->do:[J

    invoke-static {v3, v1, v3}, Landroid/support/v4/gw1;->super([J[J[J)V

    :cond_d
    invoke-static {}, Landroid/support/v4/p21;->new()[J

    move-result-object v1

    invoke-static {v10, v12, v12}, Landroid/support/v4/gw1;->if([J[J[J)V

    invoke-static {v12, v1}, Landroid/support/v4/gw1;->static([J[J)V

    iget-object v3, v5, Landroid/support/v4/hw1;->do:[J

    iget-object v5, v6, Landroid/support/v4/hw1;->do:[J

    invoke-static {v3, v5, v12}, Landroid/support/v4/gw1;->if([J[J[J)V

    iget-object v3, v7, Landroid/support/v4/hw1;->do:[J

    invoke-static {v12, v3, v1}, Landroid/support/v4/gw1;->final([J[J[J)V

    new-instance v3, Landroid/support/v4/hw1;

    invoke-direct {v3, v12}, Landroid/support/v4/hw1;-><init>([J)V

    iget-object v5, v3, Landroid/support/v4/hw1;->do:[J

    invoke-static {v1, v5}, Landroid/support/v4/gw1;->import([J[J)V

    if-eqz v13, :cond_e

    iget-object v1, v7, Landroid/support/v4/hw1;->do:[J

    invoke-static {v1, v13, v1}, Landroid/support/v4/gw1;->super([J[J[J)V

    :cond_e
    move-object v5, v2

    move-object v6, v3

    move-object v2, v7

    :goto_4
    new-instance v1, Landroid/support/v4/iw1;

    const/4 v3, 0x1

    new-array v7, v3, [Lorg/bouncycastle/math/ec/for;

    const/4 v3, 0x0

    aput-object v2, v7, v3

    iget-boolean v8, v0, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v1
.end method

.method public goto()Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->super()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->return()Z

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->return()Z

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public native()Lorg/bouncycastle/math/ec/for;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/for;->new(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public new()Lorg/bouncycastle/math/ec/new;
    .locals 4

    new-instance v0, Landroid/support/v4/iw1;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;)V

    return-object v0
.end method

.method public private()Lorg/bouncycastle/math/ec/new;
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v7, Landroid/support/v4/iw1;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/new;->do:Lorg/bouncycastle/math/ec/if;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/bouncycastle/math/ec/for;

    aput-object v1, v5, v2

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v1, v7

    move-object v2, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v7
.end method

.method public synchronized()Lorg/bouncycastle/math/ec/new;
    .locals 10

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->throws()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->this()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/new;->if:Lorg/bouncycastle/math/ec/for;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/if;->throws()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/new;->for:Lorg/bouncycastle/math/ec/for;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/new;->new:[Lorg/bouncycastle/math/ec/for;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/for;->this()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v6

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v7

    :goto_1
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/for;->break()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v0, Landroid/support/v4/iw1;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    invoke-direct {v0, v2, v7, v1, v3}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;Z)V

    return-object v0

    :cond_4
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v8

    if-eqz v5, :cond_5

    move-object v9, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v6}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v9

    :goto_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/for;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v7}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/for;->catch(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/bouncycastle/math/ec/for;->do(Lorg/bouncycastle/math/ec/for;)Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    new-instance v7, Landroid/support/v4/iw1;

    const/4 v1, 0x1

    new-array v5, v1, [Lorg/bouncycastle/math/ec/for;

    aput-object v9, v5, v4

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/new;->try:Z

    move-object v1, v7

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/iw1;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/for;Lorg/bouncycastle/math/ec/for;[Lorg/bouncycastle/math/ec/for;Z)V

    return-object v7
.end method
