.class public Landroid/support/v4/ry0;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private for:Landroid/support/v4/uy0;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Landroid/support/v4/uy0;)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Landroid/support/v4/ry0;->for:Landroid/support/v4/uy0;

    return-void
.end method


# virtual methods
.method public for()Landroid/support/v4/uy0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ry0;->for:Landroid/support/v4/uy0;

    return-object v0
.end method
