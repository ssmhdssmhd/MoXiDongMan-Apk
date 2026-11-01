.class public Landroid/support/v4/zk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private case:Z

.field private do:[B

.field private for:I

.field private if:[B

.field private new:I

.field private try:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 7

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/zk0;-><init>([B[BII[BZ)V

    return-void
.end method

.method public constructor <init>([B[BII[B)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/zk0;-><init>([B[BII[BZ)V

    return-void
.end method

.method public constructor <init>([B[BII[BZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/support/v4/zk0;->do:[B

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroid/support/v4/zk0;->do:[B

    :goto_0
    if-eqz p2, :cond_1

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/support/v4/zk0;->if:[B

    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroid/support/v4/zk0;->if:[B

    :goto_1
    iput p3, p0, Landroid/support/v4/zk0;->for:I

    iput p4, p0, Landroid/support/v4/zk0;->new:I

    invoke-static {p5}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/zk0;->try:[B

    iput-boolean p6, p0, Landroid/support/v4/zk0;->case:Z

    return-void
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/zk0;->case:Z

    return v0
.end method

.method public do()I
    .locals 1

    iget v0, p0, Landroid/support/v4/zk0;->new:I

    return v0
.end method

.method public else(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/zk0;->case:Z

    return-void
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zk0;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zk0;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Landroid/support/v4/zk0;->for:I

    return v0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zk0;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
