.class public Landroid/support/v4/xt;
.super Landroid/support/v4/tt;
.source "SourceFile"


# static fields
.field private static final for:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/tt;-><init>()V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 5

    iget v0, p0, Landroid/support/v4/rl;->if:I

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Landroid/support/v4/rl;->do:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1}, Landroid/support/v4/ut;->for([B)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    invoke-static {v1, v2, v0}, Landroid/support/v4/yt;->else([BII)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1, v2}, Landroid/support/v4/yt;->case([BI)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-static {v1, v2, v0}, Landroid/support/v4/yt;->else([BII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1, v2}, Landroid/support/v4/yt;->case([BI)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to generate DES-EDE key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method

.method public if(Landroid/support/v4/dr0;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v4/dr0;->do()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/rl;->do:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/dr0;->if()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/support/v4/rl;->if:I

    const/16 v0, 0x18

    if-eqz p1, :cond_3

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    const/16 v2, 0x10

    if-ne p1, v1, :cond_1

    iput v2, p0, Landroid/support/v4/rl;->if:I

    goto :goto_1

    :cond_1
    if-eq p1, v0, :cond_4

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DESede key must be 192 or 128 bits long."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput v0, p0, Landroid/support/v4/rl;->if:I

    :cond_4
    :goto_1
    return-void
.end method
