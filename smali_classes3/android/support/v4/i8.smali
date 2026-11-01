.class public Landroid/support/v4/i8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsPSKIdentity;


# instance fields
.field public do:[B

.field public if:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/for;->class(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/i8;->do:[B

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/i8;->if:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/i8;->do:[B

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/i8;->if:[B

    return-void
.end method


# virtual methods
.method public getPSK()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i8;->if:[B

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i8;->do:[B

    return-object v0
.end method

.method public notifyIdentityHint([B)V
    .locals 0

    return-void
.end method

.method public skipIdentityHint()V
    .locals 0

    return-void
.end method
