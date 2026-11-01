.class public Landroid/support/v4/vs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:Ljava/lang/String;

.field private do:I

.field private else:Landroid/support/v4/a90;

.field private for:Landroid/graphics/Bitmap$CompressFormat;

.field private if:I

.field private new:I

.field private try:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;Ljava/lang/String;Landroid/support/v4/a90;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/vs;->do:I

    .line 3
    iput p2, p0, Landroid/support/v4/vs;->if:I

    .line 4
    iput-object p3, p0, Landroid/support/v4/vs;->for:Landroid/graphics/Bitmap$CompressFormat;

    .line 5
    iput p4, p0, Landroid/support/v4/vs;->new:I

    .line 6
    iput-object p5, p0, Landroid/support/v4/vs;->try:Landroid/net/Uri;

    .line 7
    iput-object p6, p0, Landroid/support/v4/vs;->case:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Landroid/support/v4/vs;->else:Landroid/support/v4/a90;

    return-void
.end method


# virtual methods
.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/vs;->do:I

    return v0
.end method

.method public do()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vs;->for:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/vs;->if:I

    return v0
.end method

.method public for()Landroid/support/v4/a90;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vs;->else:Landroid/support/v4/a90;

    return-object v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/vs;->new:I

    return v0
.end method

.method public new()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vs;->try:Landroid/net/Uri;

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vs;->case:Ljava/lang/String;

    return-object v0
.end method
