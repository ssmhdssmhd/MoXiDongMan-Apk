.class public Landroid/support/v4/ze0;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Lorg/bouncycastle/pqc/crypto/gmss/do;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/do;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/ze0;->for:Lorg/bouncycastle/pqc/crypto/gmss/do;

    return-void
.end method


# virtual methods
.method public for()Lorg/bouncycastle/pqc/crypto/gmss/do;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ze0;->for:Lorg/bouncycastle/pqc/crypto/gmss/do;

    return-object v0
.end method
