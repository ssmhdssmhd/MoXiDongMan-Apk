.class public Landroid/support/v4/mi1;
.super Landroid/support/v4/dr0;
.source "SourceFile"


# instance fields
.field private final for:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Landroid/support/v4/dr0;-><init>(Ljava/security/SecureRandom;I)V

    invoke-static {p1}, Landroid/support/v4/ri1;->if(I)I

    iput p1, p0, Landroid/support/v4/mi1;->for:I

    return-void
.end method


# virtual methods
.method public for()I
    .locals 1

    iget v0, p0, Landroid/support/v4/mi1;->for:I

    return v0
.end method
