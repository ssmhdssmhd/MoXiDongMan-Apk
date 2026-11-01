.class public Landroid/support/v4/g32;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:I

.field public if:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/g32;->do:I

    iput-object p2, p0, Landroid/support/v4/g32;->if:[B

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g32;->if:[B

    return-object v0
.end method

.method public if()I
    .locals 1

    iget v0, p0, Landroid/support/v4/g32;->do:I

    return v0
.end method
