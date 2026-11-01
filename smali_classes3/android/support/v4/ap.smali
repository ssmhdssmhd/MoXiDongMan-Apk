.class public Landroid/support/v4/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:[B

.field private final if:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ap;->do:[B

    iput-object p2, p0, Landroid/support/v4/ap;->if:[B

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ap;->if:[B

    return-object v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ap;->do:[B

    return-object v0
.end method
