.class public final Landroid/support/v4/jq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# static fields
.field private static final case:I = -0x1


# instance fields
.field private final do:[B

.field private final for:Z

.field private final if:[B

.field private final new:I

.field private final try:[B


# direct methods
.method private constructor <init>([B[B[BIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/jq0;->do:[B

    const/4 p1, 0x0

    if-nez p3, :cond_0

    new-array p3, p1, [B

    iput-object p3, p0, Landroid/support/v4/jq0;->try:[B

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p3

    iput-object p3, p0, Landroid/support/v4/jq0;->try:[B

    :goto_0
    iput p4, p0, Landroid/support/v4/jq0;->new:I

    if-nez p2, :cond_1

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/support/v4/jq0;->if:[B

    goto :goto_1

    :cond_1
    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/jq0;->if:[B

    :goto_1
    iput-boolean p5, p0, Landroid/support/v4/jq0;->for:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A KDF requires Ki (a seed) as input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static do([B[B[BI)Landroid/support/v4/jq0;
    .locals 7

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x10

    if-eq p3, v0, :cond_1

    const/16 v0, 0x18

    if-eq p3, v0, :cond_1

    const/16 v0, 0x20

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of counter should be 8, 16, 24 or 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v6, Landroid/support/v4/jq0;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/jq0;-><init>([B[B[BIZ)V

    return-object v6
.end method

.method public static if([B[B[B)Landroid/support/v4/jq0;
    .locals 7

    new-instance v6, Landroid/support/v4/jq0;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/jq0;-><init>([B[B[BIZ)V

    return-object v6
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/jq0;->new:I

    return v0
.end method

.method public else()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/jq0;->for:Z

    return v0
.end method

.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jq0;->try:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jq0;->if:[B

    return-object v0
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jq0;->do:[B

    return-object v0
.end method
