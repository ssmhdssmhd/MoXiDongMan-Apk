.class public final Landroid/support/v4/hi2;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private final for:Lorg/bouncycastle/pqc/crypto/xmss/public;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p1, p0, Landroid/support/v4/hi2;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-void
.end method


# virtual methods
.method public for()Lorg/bouncycastle/pqc/crypto/xmss/public;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hi2;->for:Lorg/bouncycastle/pqc/crypto/xmss/public;

    return-object v0
.end method
