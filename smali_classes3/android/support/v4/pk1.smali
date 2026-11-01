.class public Landroid/support/v4/pk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private break:I

.field private case:[S

.field private catch:[Landroid/support/v4/ds0;

.field private class:[I

.field private const:[[S

.field private do:Z

.field private else:[[S

.field private final:[[S

.field private for:Landroid/support/v4/ok1;

.field private goto:[[S

.field private if:Ljava/security/SecureRandom;

.field private new:[[S

.field private super:[S

.field private this:[S

.field private try:[[S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/pk1;->do:Z

    return-void
.end method

.method private case()V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/pk1;->class:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v3, S

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Landroid/support/v4/pk1;->else:[[S

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/pk1;->goto:[[S

    new-instance v1, Landroid/support/v4/jq;

    invoke-direct {v1}, Landroid/support/v4/jq;-><init>()V

    :goto_0
    iget-object v3, p0, Landroid/support/v4/pk1;->goto:[[S

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_0

    iget-object v5, p0, Landroid/support/v4/pk1;->else:[[S

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/support/v4/pk1;->if:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/support/v4/pk1;->else:[[S

    invoke-virtual {v1, v3}, Landroid/support/v4/jq;->try([[S)[[S

    move-result-object v3

    iput-object v3, p0, Landroid/support/v4/pk1;->goto:[[S

    goto :goto_0

    :cond_2
    new-array v1, v0, [S

    iput-object v1, p0, Landroid/support/v4/pk1;->this:[S

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/pk1;->this:[S

    iget-object v3, p0, Landroid/support/v4/pk1;->if:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private do([[[S)V
    .locals 10

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    add-int/lit8 v3, v2, 0x1

    mul-int v3, v3, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v0, v4, v1

    const-class v3, S

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, p0, Landroid/support/v4/pk1;->const:[[S

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_1

    iget-object v7, p0, Landroid/support/v4/pk1;->const:[[S

    if-ne v6, v4, :cond_0

    aget-object v7, v7, v3

    aget-object v8, p1, v3

    aget-object v8, v8, v4

    aget-short v8, v8, v6

    aput-short v8, v7, v5

    goto :goto_3

    :cond_0
    aget-object v7, v7, v3

    aget-object v8, p1, v3

    aget-object v8, v8, v4

    aget-short v8, v8, v6

    aget-object v9, p1, v3

    aget-object v9, v9, v6

    aget-short v9, v9, v4

    invoke-static {v8, v9}, Landroid/support/v4/pe0;->do(SS)S

    move-result v8

    aput-short v8, v7, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private goto()V
    .locals 3

    new-instance v0, Landroid/support/v4/ok1;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v1

    new-instance v2, Landroid/support/v4/uk1;

    invoke-direct {v2}, Landroid/support/v4/uk1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ok1;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/uk1;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/pk1;->else(Landroid/support/v4/dr0;)V

    return-void
.end method

.method private if()V
    .locals 22

    move-object/from16 v0, p0

    const-class v1, S

    new-instance v2, Landroid/support/v4/jq;

    invoke-direct {v2}, Landroid/support/v4/jq;-><init>()V

    iget-object v3, v0, Landroid/support/v4/pk1;->class:[I

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v4, v3, v4

    const/4 v6, 0x0

    aget v7, v3, v6

    sub-int/2addr v4, v7

    array-length v7, v3

    sub-int/2addr v7, v5

    aget v3, v3, v7

    const/4 v7, 0x3

    new-array v8, v7, [I

    const/4 v9, 0x2

    aput v3, v8, v9

    aput v3, v8, v5

    aput v4, v8, v6

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[S

    new-array v10, v9, [I

    aput v3, v10, v5

    aput v4, v10, v6

    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[S

    iput-object v10, v0, Landroid/support/v4/pk1;->final:[[S

    new-array v10, v4, [S

    iput-object v10, v0, Landroid/support/v4/pk1;->super:[S

    new-array v10, v3, [S

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    iget-object v12, v0, Landroid/support/v4/pk1;->catch:[Landroid/support/v4/ds0;

    array-length v13, v12

    if-ge v10, v13, :cond_6

    aget-object v12, v12, v10

    invoke-virtual {v12}, Landroid/support/v4/ds0;->do()[[[S

    move-result-object v12

    iget-object v13, v0, Landroid/support/v4/pk1;->catch:[Landroid/support/v4/ds0;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Landroid/support/v4/ds0;->if()[[[S

    move-result-object v13

    iget-object v14, v0, Landroid/support/v4/pk1;->catch:[Landroid/support/v4/ds0;

    aget-object v14, v14, v10

    invoke-virtual {v14}, Landroid/support/v4/ds0;->new()[[S

    move-result-object v14

    iget-object v15, v0, Landroid/support/v4/pk1;->catch:[Landroid/support/v4/ds0;

    aget-object v15, v15, v10

    invoke-virtual {v15}, Landroid/support/v4/ds0;->for()[S

    move-result-object v15

    aget-object v5, v12, v6

    array-length v5, v5

    aget-object v9, v13, v6

    array-length v9, v9

    :goto_1
    if-ge v6, v5, :cond_5

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v16, v1

    if-ge v7, v5, :cond_1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_0

    aget-object v17, v12, v6

    aget-object v17, v17, v7

    move/from16 v18, v4

    aget-short v4, v17, v1

    move/from16 v17, v3

    iget-object v3, v0, Landroid/support/v4/pk1;->else:[[S

    add-int v19, v7, v9

    aget-object v3, v3, v19

    invoke-virtual {v2, v4, v3}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v3

    add-int v4, v11, v6

    move/from16 v20, v10

    aget-object v10, v8, v4

    move-object/from16 v21, v15

    iget-object v15, v0, Landroid/support/v4/pk1;->else:[[S

    aget-object v15, v15, v1

    invoke-virtual {v2, v3, v15}, Landroid/support/v4/jq;->goto([S[S)[[S

    move-result-object v15

    invoke-virtual {v2, v10, v15}, Landroid/support/v4/jq;->do([[S[[S)[[S

    move-result-object v10

    aput-object v10, v8, v4

    iget-object v10, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v10, v10, v1

    invoke-virtual {v2, v10, v3}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v3

    iget-object v10, v0, Landroid/support/v4/pk1;->final:[[S

    aget-object v15, v10, v4

    invoke-virtual {v2, v3, v15}, Landroid/support/v4/jq;->if([S[S)[S

    move-result-object v3

    aput-object v3, v10, v4

    aget-object v3, v12, v6

    aget-object v3, v3, v7

    aget-short v3, v3, v1

    iget-object v10, v0, Landroid/support/v4/pk1;->else:[[S

    aget-object v10, v10, v1

    invoke-virtual {v2, v3, v10}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v3

    iget-object v10, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v10, v10, v19

    invoke-virtual {v2, v10, v3}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v3

    iget-object v10, v0, Landroid/support/v4/pk1;->final:[[S

    aget-object v15, v10, v4

    invoke-virtual {v2, v3, v15}, Landroid/support/v4/jq;->if([S[S)[S

    move-result-object v3

    aput-object v3, v10, v4

    aget-object v3, v12, v6

    aget-object v3, v3, v7

    aget-short v3, v3, v1

    iget-object v10, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v10, v10, v19

    invoke-static {v3, v10}, Landroid/support/v4/pe0;->try(SS)S

    move-result v3

    iget-object v10, v0, Landroid/support/v4/pk1;->super:[S

    aget-short v15, v10, v4

    move-object/from16 v19, v12

    iget-object v12, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v12, v12, v1

    invoke-static {v3, v12}, Landroid/support/v4/pe0;->try(SS)S

    move-result v3

    invoke-static {v15, v3}, Landroid/support/v4/pe0;->do(SS)S

    move-result v3

    aput-short v3, v10, v4

    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v12, v19

    move/from16 v10, v20

    move-object/from16 v15, v21

    goto/16 :goto_3

    :cond_0
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v20, v10

    move-object/from16 v19, v12

    move-object/from16 v21, v15

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_2

    :cond_1
    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v20, v10

    move-object/from16 v19, v12

    move-object/from16 v21, v15

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v9, :cond_2

    aget-object v4, v13, v6

    aget-object v4, v4, v1

    aget-short v4, v4, v3

    iget-object v7, v0, Landroid/support/v4/pk1;->else:[[S

    aget-object v7, v7, v1

    invoke-virtual {v2, v4, v7}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v4

    add-int v7, v11, v6

    aget-object v10, v8, v7

    iget-object v12, v0, Landroid/support/v4/pk1;->else:[[S

    aget-object v12, v12, v3

    invoke-virtual {v2, v4, v12}, Landroid/support/v4/jq;->goto([S[S)[[S

    move-result-object v12

    invoke-virtual {v2, v10, v12}, Landroid/support/v4/jq;->do([[S[[S)[[S

    move-result-object v10

    aput-object v10, v8, v7

    iget-object v10, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v10, v10, v3

    invoke-virtual {v2, v10, v4}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v4

    iget-object v10, v0, Landroid/support/v4/pk1;->final:[[S

    aget-object v12, v10, v7

    invoke-virtual {v2, v4, v12}, Landroid/support/v4/jq;->if([S[S)[S

    move-result-object v4

    aput-object v4, v10, v7

    aget-object v4, v13, v6

    aget-object v4, v4, v1

    aget-short v4, v4, v3

    iget-object v10, v0, Landroid/support/v4/pk1;->else:[[S

    aget-object v10, v10, v3

    invoke-virtual {v2, v4, v10}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v4

    iget-object v10, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v10, v10, v1

    invoke-virtual {v2, v10, v4}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v4

    iget-object v10, v0, Landroid/support/v4/pk1;->final:[[S

    aget-object v12, v10, v7

    invoke-virtual {v2, v4, v12}, Landroid/support/v4/jq;->if([S[S)[S

    move-result-object v4

    aput-object v4, v10, v7

    aget-object v4, v13, v6

    aget-object v4, v4, v1

    aget-short v4, v4, v3

    iget-object v10, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v10, v10, v1

    invoke-static {v4, v10}, Landroid/support/v4/pe0;->try(SS)S

    move-result v4

    iget-object v10, v0, Landroid/support/v4/pk1;->super:[S

    aget-short v12, v10, v7

    iget-object v15, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v15, v15, v3

    invoke-static {v4, v15}, Landroid/support/v4/pe0;->try(SS)S

    move-result v4

    invoke-static {v12, v4}, Landroid/support/v4/pe0;->do(SS)S

    move-result v4

    aput-short v4, v10, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_6
    add-int v3, v9, v5

    if-ge v1, v3, :cond_4

    aget-object v3, v14, v6

    aget-short v3, v3, v1

    iget-object v4, v0, Landroid/support/v4/pk1;->else:[[S

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v3

    iget-object v4, v0, Landroid/support/v4/pk1;->final:[[S

    add-int v7, v11, v6

    aget-object v10, v4, v7

    invoke-virtual {v2, v3, v10}, Landroid/support/v4/jq;->if([S[S)[S

    move-result-object v3

    aput-object v3, v4, v7

    iget-object v3, v0, Landroid/support/v4/pk1;->super:[S

    aget-short v4, v3, v7

    aget-object v10, v14, v6

    aget-short v10, v10, v1

    iget-object v12, v0, Landroid/support/v4/pk1;->this:[S

    aget-short v12, v12, v1

    invoke-static {v10, v12}, Landroid/support/v4/pe0;->try(SS)S

    move-result v10

    invoke-static {v4, v10}, Landroid/support/v4/pe0;->do(SS)S

    move-result v4

    aput-short v4, v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4
    iget-object v1, v0, Landroid/support/v4/pk1;->super:[S

    add-int v3, v11, v6

    aget-short v4, v1, v3

    aget-short v7, v21, v6

    invoke-static {v4, v7}, Landroid/support/v4/pe0;->do(SS)S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v12, v19

    move/from16 v10, v20

    move-object/from16 v15, v21

    const/4 v7, 0x3

    goto/16 :goto_1

    :cond_5
    move-object/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v20, v10

    add-int/2addr v11, v5

    add-int/lit8 v10, v20, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v3, 0x2

    aput v17, v1, v3

    const/4 v4, 0x1

    aput v17, v1, v4

    const/4 v5, 0x0

    aput v18, v1, v5

    move-object/from16 v6, v16

    invoke-static {v6, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    new-array v3, v3, [I

    aput v17, v3, v4

    aput v18, v3, v5

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    move/from16 v4, v18

    new-array v6, v4, [S

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_8

    const/4 v9, 0x0

    :goto_8
    iget-object v10, v0, Landroid/support/v4/pk1;->new:[[S

    array-length v11, v10

    if-ge v9, v11, :cond_7

    aget-object v11, v1, v7

    aget-object v10, v10, v7

    aget-short v10, v10, v9

    aget-object v12, v8, v9

    invoke-virtual {v2, v10, v12}, Landroid/support/v4/jq;->case(S[[S)[[S

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Landroid/support/v4/jq;->do([[S[[S)[[S

    move-result-object v10

    aput-object v10, v1, v7

    aget-object v10, v3, v7

    iget-object v11, v0, Landroid/support/v4/pk1;->new:[[S

    aget-object v11, v11, v7

    aget-short v11, v11, v9

    iget-object v12, v0, Landroid/support/v4/pk1;->final:[[S

    aget-object v12, v12, v9

    invoke-virtual {v2, v11, v12}, Landroid/support/v4/jq;->else(S[S)[S

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/support/v4/jq;->if([S[S)[S

    move-result-object v10

    aput-object v10, v3, v7

    aget-short v10, v6, v7

    iget-object v11, v0, Landroid/support/v4/pk1;->new:[[S

    aget-object v11, v11, v7

    aget-short v11, v11, v9

    iget-object v12, v0, Landroid/support/v4/pk1;->super:[S

    aget-short v12, v12, v9

    invoke-static {v11, v12}, Landroid/support/v4/pe0;->try(SS)S

    move-result v11

    invoke-static {v10, v11}, Landroid/support/v4/pe0;->do(SS)S

    move-result v10

    aput-short v10, v6, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_7
    aget-short v9, v6, v7

    iget-object v10, v0, Landroid/support/v4/pk1;->case:[S

    aget-short v10, v10, v7

    invoke-static {v9, v10}, Landroid/support/v4/pe0;->do(SS)S

    move-result v9

    aput-short v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    iput-object v3, v0, Landroid/support/v4/pk1;->final:[[S

    iput-object v6, v0, Landroid/support/v4/pk1;->super:[S

    invoke-direct {v0, v1}, Landroid/support/v4/pk1;->do([[[S)V

    return-void
.end method

.method private new()V
    .locals 7

    iget v0, p0, Landroid/support/v4/pk1;->break:I

    new-array v0, v0, [Landroid/support/v4/ds0;

    iput-object v0, p0, Landroid/support/v4/pk1;->catch:[Landroid/support/v4/ds0;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v4/pk1;->break:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/pk1;->catch:[Landroid/support/v4/ds0;

    new-instance v2, Landroid/support/v4/ds0;

    iget-object v3, p0, Landroid/support/v4/pk1;->class:[I

    aget v4, v3, v0

    add-int/lit8 v5, v0, 0x1

    aget v3, v3, v5

    iget-object v6, p0, Landroid/support/v4/pk1;->if:Ljava/security/SecureRandom;

    invoke-direct {v2, v4, v3, v6}, Landroid/support/v4/ds0;-><init>(IILjava/security/SecureRandom;)V

    aput-object v2, v1, v0

    move v0, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private this()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/pk1;->try()V

    invoke-direct {p0}, Landroid/support/v4/pk1;->case()V

    invoke-direct {p0}, Landroid/support/v4/pk1;->new()V

    invoke-direct {p0}, Landroid/support/v4/pk1;->if()V

    return-void
.end method

.method private try()V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/pk1;->class:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v0, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v1, v0, v3

    const-class v2, S

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Landroid/support/v4/pk1;->new:[[S

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/pk1;->try:[[S

    new-instance v0, Landroid/support/v4/jq;

    invoke-direct {v0}, Landroid/support/v4/jq;-><init>()V

    :goto_0
    iget-object v2, p0, Landroid/support/v4/pk1;->try:[[S

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Landroid/support/v4/pk1;->new:[[S

    aget-object v5, v5, v2

    iget-object v6, p0, Landroid/support/v4/pk1;->if:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/support/v4/pk1;->new:[[S

    invoke-virtual {v0, v2}, Landroid/support/v4/jq;->try([[S)[[S

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/pk1;->try:[[S

    goto :goto_0

    :cond_2
    new-array v0, v1, [S

    iput-object v0, p0, Landroid/support/v4/pk1;->case:[S

    :goto_3
    if-ge v3, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/pk1;->case:[S

    iget-object v2, p0, Landroid/support/v4/pk1;->if:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method


# virtual methods
.method public else(Landroid/support/v4/dr0;)V
    .locals 0

    check-cast p1, Landroid/support/v4/ok1;

    iput-object p1, p0, Landroid/support/v4/pk1;->for:Landroid/support/v4/ok1;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pk1;->if:Ljava/security/SecureRandom;

    iget-object p1, p0, Landroid/support/v4/pk1;->for:Landroid/support/v4/ok1;

    invoke-virtual {p1}, Landroid/support/v4/ok1;->for()Landroid/support/v4/uk1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/uk1;->new()[I

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pk1;->class:[I

    iget-object p1, p0, Landroid/support/v4/pk1;->for:Landroid/support/v4/ok1;

    invoke-virtual {p1}, Landroid/support/v4/ok1;->for()Landroid/support/v4/uk1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/uk1;->for()I

    move-result p1

    iput p1, p0, Landroid/support/v4/pk1;->break:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/pk1;->do:Z

    return-void
.end method

.method public for()Landroid/support/v4/y3;
    .locals 8

    iget-boolean v0, p0, Landroid/support/v4/pk1;->do:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v4/pk1;->goto()V

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/pk1;->this()V

    new-instance v0, Landroid/support/v4/wk1;

    iget-object v2, p0, Landroid/support/v4/pk1;->try:[[S

    iget-object v3, p0, Landroid/support/v4/pk1;->case:[S

    iget-object v4, p0, Landroid/support/v4/pk1;->goto:[[S

    iget-object v5, p0, Landroid/support/v4/pk1;->this:[S

    iget-object v6, p0, Landroid/support/v4/pk1;->class:[I

    iget-object v7, p0, Landroid/support/v4/pk1;->catch:[Landroid/support/v4/ds0;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/wk1;-><init>([[S[S[[S[S[I[Landroid/support/v4/ds0;)V

    new-instance v1, Landroid/support/v4/zk1;

    iget-object v2, p0, Landroid/support/v4/pk1;->class:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v2, v2, v4

    sub-int/2addr v3, v2

    iget-object v2, p0, Landroid/support/v4/pk1;->const:[[S

    iget-object v4, p0, Landroid/support/v4/pk1;->final:[[S

    iget-object v5, p0, Landroid/support/v4/pk1;->super:[S

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/support/v4/zk1;-><init>(I[[S[[S[S)V

    new-instance v2, Landroid/support/v4/y3;

    invoke-direct {v2, v1, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v2
.end method

.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/pk1;->for()Landroid/support/v4/y3;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/support/v4/dr0;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/pk1;->else(Landroid/support/v4/dr0;)V

    return-void
.end method
