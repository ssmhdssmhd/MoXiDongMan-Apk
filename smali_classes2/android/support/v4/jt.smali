.class public Landroid/support/v4/jt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cutPath:Ljava/lang/String;

.field private imageHeight:I

.field private imageWidth:I

.field private isCut:Z

.field private offsetX:I

.field private offsetY:I

.field private path:Ljava/lang/String;

.field private resultAspectRatio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/jt;->path:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Landroid/support/v4/jt;->isCut:Z

    return-void
.end method


# virtual methods
.method public getCutPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jt;->cutPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/jt;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/jt;->imageWidth:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/jt;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/jt;->offsetY:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/jt;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getResultAspectRatio()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/jt;->resultAspectRatio:F

    return v0
.end method

.method public isCut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/jt;->isCut:Z

    return v0
.end method

.method public setCut(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/jt;->isCut:Z

    return-void
.end method

.method public setCutPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/jt;->cutPath:Ljava/lang/String;

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/jt;->imageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/jt;->imageWidth:I

    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/jt;->offsetX:I

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/jt;->offsetY:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/jt;->path:Ljava/lang/String;

    return-void
.end method

.method public setResultAspectRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/jt;->resultAspectRatio:F

    return-void
.end method
