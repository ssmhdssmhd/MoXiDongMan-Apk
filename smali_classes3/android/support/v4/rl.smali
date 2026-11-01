.class public Landroid/support/v4/rl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Ljava/security/SecureRandom;

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 2

    iget v0, p0, Landroid/support/v4/rl;->if:I

    new-array v0, v0, [B

    iget-object v1, p0, Landroid/support/v4/rl;->do:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public if(Landroid/support/v4/dr0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/rl;->do:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->if()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/support/v4/rl;->if:I

    return-void
.end method
