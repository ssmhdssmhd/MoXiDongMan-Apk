.class final Lfreemarker/core/import;
.super Lfreemarker/core/l3;
.source "SourceFile"


# instance fields
.field private final affectedByStringSlicingBug:Z

.field private final rightAdaptive:Z

.field private final size:I

.field private final step:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/core/l3;-><init>(I)V

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2
    :goto_0
    iput v0, p0, Lfreemarker/core/import;->step:I

    sub-int/2addr p2, p1

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, p3

    iput p1, p0, Lfreemarker/core/import;->size:I

    .line 4
    iput-boolean p4, p0, Lfreemarker/core/import;->rightAdaptive:Z

    .line 5
    iput-boolean p3, p0, Lfreemarker/core/import;->affectedByStringSlicingBug:Z

    return-void
.end method


# virtual methods
.method public getStep()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/import;->step:I

    return v0
.end method

.method public isAffectedByStringSlicingBug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/import;->affectedByStringSlicingBug:Z

    return v0
.end method

.method public isRightAdaptive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/core/import;->rightAdaptive:Z

    return v0
.end method

.method public isRightUnbounded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/core/import;->size:I

    return v0
.end method
