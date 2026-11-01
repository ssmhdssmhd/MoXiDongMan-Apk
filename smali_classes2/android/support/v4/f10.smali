.class public final Landroid/support/v4/f10;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final for:I

.field private final if:I

.field private final new:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/f10;->do:I

    .line 3
    iput p2, p0, Landroid/support/v4/f10;->if:I

    .line 4
    iput p3, p0, Landroid/support/v4/f10;->for:I

    .line 5
    iput p4, p0, Landroid/support/v4/f10;->new:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/f10;->if:I

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/f10;->do:I

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/f10;->new:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/f10;->for:I

    return v0
.end method
