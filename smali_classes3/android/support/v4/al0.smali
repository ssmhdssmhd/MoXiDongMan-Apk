.class public Landroid/support/v4/al0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:[B

.field private for:I

.field private if:[B


# direct methods
.method public constructor <init>([B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/al0;->do:[B

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/al0;->if:[B

    iput p3, p0, Landroid/support/v4/al0;->for:I

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/al0;->do:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/al0;->for:I

    return v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/al0;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
