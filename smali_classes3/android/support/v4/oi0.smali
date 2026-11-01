.class public Landroid/support/v4/oi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field private final do:[B

.field private final for:[B

.field private final if:Z

.field private final new:[B


# direct methods
.method private constructor <init>([BZ[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/oi0;->do:[B

    iput-boolean p2, p0, Landroid/support/v4/oi0;->if:Z

    if-eqz p3, :cond_1

    array-length p1, p3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/oi0;->for:[B

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/oi0;->for:[B

    :goto_1
    if-nez p4, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/support/v4/oi0;->new:[B

    goto :goto_2

    :cond_2
    invoke-static {p4}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/oi0;->new:[B

    :goto_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IKM (input keying material) should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v4/oi0;-><init>([BZ[B[B)V

    return-void
.end method

.method public static case([B[B)Landroid/support/v4/oi0;
    .locals 3

    new-instance v0, Landroid/support/v4/oi0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/support/v4/oi0;-><init>([BZ[B[B)V

    return-object v0
.end method

.method public static do([B)Landroid/support/v4/oi0;
    .locals 3

    new-instance v0, Landroid/support/v4/oi0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/support/v4/oi0;-><init>([BZ[B[B)V

    return-object v0
.end method


# virtual methods
.method public for()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oi0;->new:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oi0;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oi0;->for:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public try()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/oi0;->if:Z

    return v0
.end method
