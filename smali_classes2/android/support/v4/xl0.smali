.class public Landroid/support/v4/xl0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/graphics/RectF;

.field private for:F

.field private if:Landroid/graphics/RectF;

.field private new:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/xl0;->do:Landroid/graphics/RectF;

    .line 3
    iput-object p2, p0, Landroid/support/v4/xl0;->if:Landroid/graphics/RectF;

    .line 4
    iput p3, p0, Landroid/support/v4/xl0;->for:F

    .line 5
    iput p4, p0, Landroid/support/v4/xl0;->new:F

    return-void
.end method


# virtual methods
.method public do()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xl0;->do:Landroid/graphics/RectF;

    return-object v0
.end method

.method public for()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/xl0;->if:Landroid/graphics/RectF;

    return-object v0
.end method

.method public if()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/xl0;->new:F

    return v0
.end method

.method public new()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/xl0;->for:F

    return v0
.end method
