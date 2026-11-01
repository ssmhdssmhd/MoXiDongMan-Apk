.class public Landroid/support/v4/xq1;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private final for:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    const/16 v0, 0x2100

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/xq1;->for:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public for()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xq1;->for:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method
