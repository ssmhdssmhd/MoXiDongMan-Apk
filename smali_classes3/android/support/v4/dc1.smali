.class public Landroid/support/v4/dc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private do:Lorg/bouncycastle/crypto/CipherParameters;

.field private if:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dc1;->do:Lorg/bouncycastle/crypto/CipherParameters;

    iput-object p2, p0, Landroid/support/v4/dc1;->if:[B

    return-void
.end method


# virtual methods
.method public do()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dc1;->do:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dc1;->if:[B

    return-object v0
.end method
