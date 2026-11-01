.class public Lorg/bouncycastle/crypto/generators/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/generators/do$if;,
        Lorg/bouncycastle/crypto/generators/do$for;
    }
.end annotation


# static fields
.field private static final break:I = 0x48

.field private static final case:I = 0x400

.field private static final catch:I = 0x4

.field private static final class:I = 0x1

.field private static final const:I = 0x1000000

.field private static final else:I = 0x80

.field private static final final:I = 0x4

.field private static final goto:I = 0x80

.field private static final super:I = 0x1

.field private static final this:I = 0x40


# instance fields
.field private do:[Lorg/bouncycastle/crypto/generators/do$if;

.field private for:I

.field private if:I

.field private new:Lorg/bouncycastle/crypto/params/do;

.field private try:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private abstract(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 6

    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    const/4 v1, 0x6

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/generators/do;->else(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Z)V

    invoke-direct {p0, p1, p3, p3, v0}, Lorg/bouncycastle/crypto/generators/do;->else(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Z)V

    return-void
.end method

.method private break(Lorg/bouncycastle/crypto/generators/do$for;)V
    .locals 13

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/do;->package(Lorg/bouncycastle/crypto/generators/do$for;)Z

    move-result v7

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do;->public(Lorg/bouncycastle/crypto/generators/do$for;)I

    move-result v0

    iget v1, p1, Lorg/bouncycastle/crypto/generators/do$for;->if:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    mul-int v1, v1, v2

    iget v2, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    iget v3, p0, Lorg/bouncycastle/crypto/generators/do;->if:I

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->throw(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v7, :cond_0

    new-instance v4, Lorg/bouncycastle/crypto/generators/do$if;

    invoke-direct {v4, v3}, Lorg/bouncycastle/crypto/generators/do$if;-><init>(Lorg/bouncycastle/crypto/generators/do$do;)V

    new-instance v5, Lorg/bouncycastle/crypto/generators/do$if;

    invoke-direct {v5, v3}, Lorg/bouncycastle/crypto/generators/do$if;-><init>(Lorg/bouncycastle/crypto/generators/do$do;)V

    new-instance v6, Lorg/bouncycastle/crypto/generators/do$if;

    invoke-direct {v6, v3}, Lorg/bouncycastle/crypto/generators/do$if;-><init>(Lorg/bouncycastle/crypto/generators/do$do;)V

    invoke-direct {p0, p1, v5, v6, v4}, Lorg/bouncycastle/crypto/generators/do;->switch(Lorg/bouncycastle/crypto/generators/do$for;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    move-object v8, v4

    move-object v10, v5

    move-object v9, v6

    goto :goto_0

    :cond_0
    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    :goto_0
    iput v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    move v11, v1

    :goto_1
    iget v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/do;->if:I

    if-ge v0, v1, :cond_2

    invoke-direct {p0, v11, v2}, Lorg/bouncycastle/crypto/generators/do;->strictfp(II)I

    move-result v12

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v12

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/generators/do;->while(Lorg/bouncycastle/crypto/generators/do$for;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;IZ)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/generators/do;->native(Lorg/bouncycastle/crypto/generators/do$for;J)I

    move-result v2

    iget v3, p1, Lorg/bouncycastle/crypto/generators/do$for;->if:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, p1, v0, v1, v3}, Lorg/bouncycastle/crypto/generators/do;->import(Lorg/bouncycastle/crypto/generators/do$for;JZ)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    aget-object v3, v1, v12

    iget v5, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    mul-int v5, v5, v2

    add-int/2addr v5, v0

    aget-object v0, v1, v5

    aget-object v1, v1, v11

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/do;->private(Lorg/bouncycastle/crypto/generators/do$for;)Z

    move-result v2

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/generators/do;->else(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Z)V

    iget v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    add-int/2addr v0, v4

    iput v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v2, v12, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private case(Lorg/bouncycastle/crypto/generators/do$if;II)V
    .locals 8

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    aget-wide v1, v0, p2

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    aget-wide v5, v0, p3

    and-long/2addr v3, v5

    mul-long v1, v1, v3

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v3

    aget-wide v4, v3, p2

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object p1

    aget-wide v6, p1, p3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    mul-long v1, v1, v6

    add-long/2addr v4, v1

    aput-wide v4, v0, p2

    return-void
.end method

.method private continue()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/generators/do$if;->try()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do;->try:[B

    invoke-static {v1, v0}, Landroid/support/v4/q3;->c([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/do;->try(Lorg/bouncycastle/crypto/params/do;)V

    return-void
.end method

.method private default(Lorg/bouncycastle/crypto/params/do;I[B)[B
    .locals 2

    new-instance v0, Landroid/support/v4/x9;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Landroid/support/v4/x9;-><init>(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->case()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->new()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->break()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->this()I

    move-result p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-static {v0, p3}, Lorg/bouncycastle/crypto/generators/do;->if(Lorg/bouncycastle/crypto/Digest;[B)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->else()[B

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/do;->if(Lorg/bouncycastle/crypto/Digest;[B)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->goto()[B

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/generators/do;->if(Lorg/bouncycastle/crypto/Digest;[B)V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->if()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/generators/do;->if(Lorg/bouncycastle/crypto/Digest;[B)V

    invoke-virtual {v0}, Landroid/support/v4/x9;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/x9;->doFinal([BI)I

    return-object p1
.end method

.method private do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/do;->case(Lorg/bouncycastle/crypto/generators/do$if;II)V

    const-wide/16 v4, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->volatile(Lorg/bouncycastle/crypto/generators/do$if;IIJ)V

    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/generators/do;->case(Lorg/bouncycastle/crypto/generators/do$if;II)V

    const-wide/16 v4, 0x18

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->volatile(Lorg/bouncycastle/crypto/generators/do$if;IIJ)V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/generators/do;->case(Lorg/bouncycastle/crypto/generators/do$if;II)V

    const-wide/16 v4, 0x10

    move v2, p5

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->volatile(Lorg/bouncycastle/crypto/generators/do$if;IIJ)V

    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/generators/do;->case(Lorg/bouncycastle/crypto/generators/do$if;II)V

    const-wide/16 v4, 0x3f

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->volatile(Lorg/bouncycastle/crypto/generators/do$if;IIJ)V

    return-void
.end method

.method private else(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Z)V
    .locals 22

    move-object/from16 v0, p3

    new-instance v1, Lorg/bouncycastle/crypto/generators/do$if;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/do$if;-><init>(Lorg/bouncycastle/crypto/generators/do$do;)V

    new-instance v4, Lorg/bouncycastle/crypto/generators/do$if;

    invoke-direct {v4, v2}, Lorg/bouncycastle/crypto/generators/do$if;-><init>(Lorg/bouncycastle/crypto/generators/do$do;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/generators/do$if;->do(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    invoke-static {v4, v1}, Lorg/bouncycastle/crypto/generators/do$if;->if(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v15, 0x8

    if-ge v3, v15, :cond_0

    mul-int/lit8 v20, v3, 0x10

    move/from16 v5, v20

    add-int/lit8 v6, v20, 0x1

    add-int/lit8 v7, v20, 0x2

    add-int/lit8 v8, v20, 0x3

    add-int/lit8 v9, v20, 0x4

    add-int/lit8 v10, v20, 0x5

    add-int/lit8 v11, v20, 0x6

    add-int/lit8 v12, v20, 0x7

    add-int/lit8 v13, v20, 0x8

    add-int/lit8 v14, v20, 0x9

    add-int/lit8 v15, v20, 0xa

    add-int/lit8 v16, v20, 0xb

    add-int/lit8 v17, v20, 0xc

    add-int/lit8 v18, v20, 0xd

    add-int/lit8 v19, v20, 0xe

    add-int/lit8 v20, v20, 0xf

    move/from16 v21, v3

    move-object/from16 v3, p0

    move-object/from16 p1, v4

    invoke-direct/range {v3 .. v20}, Lorg/bouncycastle/crypto/generators/do;->interface(Lorg/bouncycastle/crypto/generators/do$if;IIIIIIIIIIIIIIII)V

    add-int/lit8 v3, v21, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 p1, v4

    :goto_1
    if-ge v2, v15, :cond_1

    mul-int/lit8 v3, v2, 0x2

    move v5, v3

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v3, 0x10

    add-int/lit8 v8, v3, 0x11

    add-int/lit8 v9, v3, 0x20

    add-int/lit8 v10, v3, 0x21

    add-int/lit8 v11, v3, 0x30

    add-int/lit8 v12, v3, 0x31

    add-int/lit8 v13, v3, 0x40

    add-int/lit8 v14, v3, 0x41

    add-int/lit8 v4, v3, 0x50

    const/16 v21, 0x8

    move v15, v4

    add-int/lit8 v16, v3, 0x51

    add-int/lit8 v17, v3, 0x60

    add-int/lit8 v18, v3, 0x61

    add-int/lit8 v19, v3, 0x70

    add-int/lit8 v20, v3, 0x71

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v20}, Lorg/bouncycastle/crypto/generators/do;->interface(Lorg/bouncycastle/crypto/generators/do$if;IIIIIIIIIIIIIIII)V

    add-int/lit8 v2, v2, 0x1

    const/16 v15, 0x8

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    if-eqz p4, :cond_2

    invoke-virtual {v0, v1, v2, v0}, Lorg/bouncycastle/crypto/generators/do$if;->break(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    goto :goto_2

    :cond_2
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/do$if;->do(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    :goto_2
    return-void
.end method

.method private extends([BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/crypto/generators/do;->default(Lorg/bouncycastle/crypto/params/do;I[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/do;->goto([B)V

    return-void
.end method

.method private finally(I)J
    .locals 4

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static for(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    int-to-byte v0, p1

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method private goto([B)V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/generators/do;->super([B[B)[B

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/generators/do;->super([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/16 v3, 0x44

    invoke-static {v2, v1, v3}, Landroid/support/v4/ib1;->break(I[BI)V

    invoke-static {v2, p1, v3}, Landroid/support/v4/ib1;->break(I[BI)V

    const/16 v3, 0x400

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/generators/do;->return([BI)[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    iget v6, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    mul-int v6, v6, v2

    add-int/2addr v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Lorg/bouncycastle/crypto/generators/do$if;->else([B)V

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/generators/do;->return([BI)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    iget v5, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    mul-int v5, v5, v2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Lorg/bouncycastle/crypto/generators/do$if;->else([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static if(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/generators/do;->for(Lorg/bouncycastle/crypto/Digest;I)V

    :goto_0
    return-void
.end method

.method private import(Lorg/bouncycastle/crypto/generators/do$for;JZ)I
    .locals 5

    iget v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->do:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    iget p4, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/do;->if:I

    mul-int p4, p4, v0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    add-int/2addr p4, p1

    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_0
    iget p4, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    iget v0, p0, Lorg/bouncycastle/crypto/generators/do;->if:I

    mul-int p4, p4, v0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p4, v1

    goto :goto_3

    :cond_2
    iget v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/bouncycastle/crypto/generators/do;->if:I

    mul-int v0, v0, v3

    iget v4, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    rem-int/2addr v0, v4

    sub-int/2addr v4, v3

    iget p1, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    if-eqz p4, :cond_3

    add-int/2addr v4, p1

    add-int/lit8 p4, v4, -0x1

    :goto_1
    move v2, v0

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    add-int p4, v4, v1

    goto :goto_1

    :goto_3
    const-wide v0, 0xffffffffL

    and-long/2addr p2, v0

    mul-long p2, p2, p2

    const/16 p1, 0x20

    ushr-long/2addr p2, p1

    add-int/lit8 v0, p4, -0x1

    int-to-long v0, v0

    int-to-long v3, p4

    mul-long v3, v3, p2

    ushr-long p1, v3, p1

    sub-long/2addr v0, p1

    int-to-long p1, v2

    add-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    rem-int/2addr p2, p1

    return p2
.end method

.method private interface(Lorg/bouncycastle/crypto/generators/do$if;IIIIIIIIIIIIIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p6

    move/from16 v4, p10

    move/from16 v5, p14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    move v2, p3

    move v3, p7

    move/from16 v4, p11

    move/from16 v5, p15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    move v2, p4

    move v3, p8

    move/from16 v4, p12

    move/from16 v5, p16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    move v2, p5

    move v3, p9

    move/from16 v4, p13

    move/from16 v5, p17

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    move v2, p2

    move v3, p7

    move/from16 v4, p12

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    move v2, p3

    move v3, p8

    move/from16 v4, p13

    move/from16 v5, p14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    move v2, p4

    move v3, p9

    move/from16 v4, p10

    move/from16 v5, p15

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    move v2, p5

    move v3, p6

    move/from16 v4, p11

    move/from16 v5, p16

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/generators/do;->do(Lorg/bouncycastle/crypto/generators/do$if;IIII)V

    return-void
.end method

.method private native(Lorg/bouncycastle/crypto/generators/do$for;J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v0

    int-to-long v0, v0

    rem-long/2addr p2, v0

    long-to-int p3, p2

    iget p2, p1, Lorg/bouncycastle/crypto/generators/do$for;->do:I

    if-nez p2, :cond_0

    iget p2, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    if-nez p2, :cond_0

    iget p3, p1, Lorg/bouncycastle/crypto/generators/do$for;->if:I

    :cond_0
    return p3
.end method

.method private new(I)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    iget v1, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget v3, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    mul-int v4, v1, v3

    sub-int/2addr v3, v2

    add-int/2addr v4, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/generators/do$if;->new(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/do$if;->goto()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/generators/do;->return([BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/do;->try:[B

    return-void
.end method

.method private package(Lorg/bouncycastle/crypto/generators/do$for;)Z
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/do;->this()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/do;->this()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->do:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private private(Lorg/bouncycastle/crypto/generators/do$for;)Z
    .locals 1

    iget p1, p1, Lorg/bouncycastle/crypto/generators/do$for;->do:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->break()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static public(Lorg/bouncycastle/crypto/generators/do$for;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/generators/do$for;->do:I

    if-nez v0, :cond_0

    iget p0, p0, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private return([BI)[B
    .locals 8

    new-array v0, p2, [B

    invoke-static {p2}, Landroid/support/v4/ib1;->class(I)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-gt p2, v3, :cond_0

    new-instance v3, Landroid/support/v4/x9;

    mul-int/lit8 p2, p2, 0x8

    invoke-direct {v3, p2}, Landroid/support/v4/x9;-><init>(I)V

    array-length p2, v1

    invoke-virtual {v3, v1, v2, p2}, Landroid/support/v4/x9;->update([BII)V

    array-length p2, p1

    invoke-virtual {v3, p1, v2, p2}, Landroid/support/v4/x9;->update([BII)V

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/x9;->doFinal([BI)I

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/support/v4/x9;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Landroid/support/v4/x9;-><init>(I)V

    new-array v5, v3, [B

    array-length v6, v1

    invoke-virtual {v4, v1, v2, v6}, Landroid/support/v4/x9;->update([BII)V

    array-length v1, p1

    invoke-virtual {v4, p1, v2, v1}, Landroid/support/v4/x9;->update([BII)V

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/x9;->doFinal([BI)I

    const/16 p1, 0x20

    invoke-static {v5, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p2, 0x1f

    div-int/2addr v1, p1

    const/4 v6, 0x2

    sub-int/2addr v1, v6

    const/16 v7, 0x20

    :goto_0
    if-gt v6, v1, :cond_1

    invoke-virtual {v4, v5, v2, v3}, Landroid/support/v4/x9;->update([BII)V

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/x9;->doFinal([BI)I

    invoke-static {v5, v2, v0, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x20

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x20

    sub-int/2addr p2, v1

    new-instance p1, Landroid/support/v4/x9;

    mul-int/lit8 p2, p2, 0x8

    invoke-direct {p1, p2}, Landroid/support/v4/x9;-><init>(I)V

    invoke-virtual {p1, v5, v2, v3}, Landroid/support/v4/x9;->update([BII)V

    invoke-virtual {p1, v0, v7}, Landroid/support/v4/x9;->doFinal([BI)I

    :goto_1
    return-object v0
.end method

.method private strictfp(II)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    rem-int v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p1, -0x1

    :cond_0
    return p2
.end method

.method private super([B[B)[B
    .locals 3

    const/16 v0, 0x48

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x4

    invoke-static {p2, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private switch(Lorg/bouncycastle/crypto/generators/do$for;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V
    .locals 4

    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    iget v1, p1, Lorg/bouncycastle/crypto/generators/do$for;->do:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->finally(I)J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    iget v1, p1, Lorg/bouncycastle/crypto/generators/do$for;->if:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->finally(I)J

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    iget v1, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->finally(I)J

    move-result-wide v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    array-length v1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->finally(I)J

    move-result-wide v1

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/do;->new()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->finally(I)J

    move-result-wide v1

    const/4 v3, 0x4

    aput-wide v1, v0, v3

    invoke-static {p3}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/do;->this()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/generators/do;->finally(I)J

    move-result-wide v1

    const/4 v3, 0x5

    aput-wide v1, v0, v3

    iget v0, p1, Lorg/bouncycastle/crypto/generators/do$for;->do:I

    if-nez v0, :cond_0

    iget p1, p1, Lorg/bouncycastle/crypto/generators/do$for;->for:I

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/do;->abstract(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    :cond_0
    return-void
.end method

.method private this()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/do;->new()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Lorg/bouncycastle/crypto/generators/do$for;

    invoke-direct {v4, v1, v3, v2, v0}, Lorg/bouncycastle/crypto/generators/do$for;-><init>(IIII)V

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/generators/do;->break(Lorg/bouncycastle/crypto/generators/do$for;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private throw(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    rem-int v1, p1, v0

    if-nez v1, :cond_0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private throws(I)V
    .locals 3

    new-array p1, p1, [Lorg/bouncycastle/crypto/generators/do$if;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/generators/do$if;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/do$if;-><init>(Lorg/bouncycastle/crypto/generators/do$do;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private try(Lorg/bouncycastle/crypto/params/do;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->case()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/generators/do;->if:I

    mul-int/lit8 v1, v0, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/generators/do;->for:I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    mul-int v0, v0, p1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/generators/do;->throws(I)V

    return-void
.end method

.method private volatile(Lorg/bouncycastle/crypto/generators/do$if;IIJ)V
    .locals 7

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    aget-wide v1, v0, p2

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object v0

    aget-wide v3, v0, p3

    xor-long/2addr v1, v3

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object p1

    long-to-int p3, p4

    ushr-long v3, v1, p3

    const-wide/16 v5, 0x40

    sub-long/2addr v5, p4

    long-to-int p3, v5

    shl-long p3, v1, p3

    or-long/2addr p3, v3

    aput-wide p3, p1, p2

    return-void
.end method

.method private while(Lorg/bouncycastle/crypto/generators/do$for;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;IZ)J
    .locals 0

    if-eqz p6, :cond_1

    iget p5, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    rem-int/lit16 p5, p5, 0x80

    if-nez p5, :cond_0

    invoke-direct {p0, p4, p3, p2}, Lorg/bouncycastle/crypto/generators/do;->abstract(Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;Lorg/bouncycastle/crypto/generators/do$if;)V

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object p2

    iget p1, p1, Lorg/bouncycastle/crypto/generators/do$for;->new:I

    rem-int/lit16 p1, p1, 0x80

    aget-wide p1, p2, p1

    return-wide p1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/do;->do:[Lorg/bouncycastle/crypto/generators/do$if;

    aget-object p1, p1, p5

    invoke-static {p1}, Lorg/bouncycastle/crypto/generators/do$if;->for(Lorg/bouncycastle/crypto/generators/do$if;)[J

    move-result-object p1

    const/4 p2, 0x0

    aget-wide p2, p1, p2

    return-wide p2
.end method


# virtual methods
.method public catch([B[B)I
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/bouncycastle/crypto/generators/do;->class([B[BII)I

    move-result p1

    return p1
.end method

.method public class([B[BII)I
    .locals 1

    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    invoke-direct {p0, p1, p4}, Lorg/bouncycastle/crypto/generators/do;->extends([BI)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/do;->this()V

    invoke-direct {p0, p4}, Lorg/bouncycastle/crypto/generators/do;->new(I)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/do;->try:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/do;->continue()V

    return p4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "output length less than 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public const([C[B)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/do;->for()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/do;->catch([B[B)I

    move-result p1

    return p1
.end method

.method public final([C[BII)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/do;->for()Lorg/bouncycastle/crypto/CharToByteConverter;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/generators/do;->class([B[BII)I

    move-result p1

    return p1
.end method

.method public static(Lorg/bouncycastle/crypto/params/do;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/do;->new:Lorg/bouncycastle/crypto/params/do;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v0

    const/high16 v2, 0x1000000

    if-gt v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->case()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->new()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/do;->try(Lorg/bouncycastle/crypto/params/do;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "iterations is less than: 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory is less than: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/do;->try()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be less than 16777216"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lanes must be greater than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
