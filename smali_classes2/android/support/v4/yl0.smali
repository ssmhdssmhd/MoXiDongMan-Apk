.class public Landroid/support/v4/yl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private centerX:F

.field private centerY:F

.field private orientation:I

.field private scale:F


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/support/v4/yl0;->scale:F

    .line 3
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iput p1, p0, Landroid/support/v4/yl0;->centerX:F

    .line 4
    iget p1, p2, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/support/v4/yl0;->centerY:F

    .line 5
    iput p3, p0, Landroid/support/v4/yl0;->orientation:I

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/support/v4/yl0;->centerX:F

    iget v2, p0, Landroid/support/v4/yl0;->centerY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/yl0;->orientation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/yl0;->scale:F

    return v0
.end method
