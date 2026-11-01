.class public Landroid/support/v4/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:[B

.field private for:Landroid/support/v4/gr0;

.field private if:[B

.field private new:I


# direct methods
.method public constructor <init>(Landroid/support/v4/gr0;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/new;-><init>(Landroid/support/v4/gr0;I[B[B)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/gr0;I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/new;->for:Landroid/support/v4/gr0;

    invoke-static {p3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/new;->if:[B

    iput p2, p0, Landroid/support/v4/new;->new:I

    invoke-static {p4}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/new;->do:[B

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/new;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/new;->new:I

    return v0
.end method

.method public if()Landroid/support/v4/gr0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/new;->for:Landroid/support/v4/gr0;

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/new;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
