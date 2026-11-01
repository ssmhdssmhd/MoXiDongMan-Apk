.class public Landroid/support/v4/ec;
.super Landroid/support/v4/a60;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final break:I = 0xb4

.field private static final catch:F = 1.75f

.field private static final else:I = 0x5a

.field private static final goto:I = 0xb4

.field private static final this:I = 0x10e


# instance fields
.field private case:F

.field private do:F

.field private for:F

.field private if:F

.field private new:F

.field private try:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/a60;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Landroid/support/v4/ec;->case:F

    .line 3
    iput p1, p0, Landroid/support/v4/ec;->if:F

    .line 4
    iput p2, p0, Landroid/support/v4/ec;->do:F

    .line 5
    invoke-virtual {p0, p3}, Landroid/support/v4/ec;->break(F)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroid/support/v4/ec;->try:F

    return-void
.end method


# virtual methods
.method public break(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1
    iput p1, p0, Landroid/support/v4/ec;->new:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cradleVerticalOffset must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public case()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ec;->if:F

    return v0
.end method

.method public catch(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/ec;->case:F

    return-void
.end method

.method public class(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/ec;->if:F

    return-void
.end method

.method public const(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/ec;->do:F

    return-void
.end method

.method public else()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ec;->do:F

    return v0
.end method

.method public final(F)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iput p1, p0, Landroid/support/v4/ec;->for:F

    return-void
.end method

.method public goto()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/ec;->for:F

    return v0
.end method

.method public if(FFFLcom/google/android/material/shape/if;)V
    .locals 23
    .param p4    # Lcom/google/android/material/shape/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v9, p4

    .line 1
    iget v2, v0, Landroid/support/v4/ec;->for:F

    const/4 v10, 0x0

    cmpl-float v3, v2, v10

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/if;->final(FF)V

    return-void

    .line 3
    :cond_0
    iget v3, v0, Landroid/support/v4/ec;->if:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v3, v3, v11

    add-float/2addr v3, v2

    div-float v12, v3, v11

    .line 4
    iget v3, v0, Landroid/support/v4/ec;->do:F

    mul-float v13, p3, v3

    .line 5
    iget v3, v0, Landroid/support/v4/ec;->try:F

    add-float v14, p2, v3

    .line 6
    iget v3, v0, Landroid/support/v4/ec;->new:F

    mul-float v3, v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p3

    mul-float v5, v5, v12

    add-float/2addr v3, v5

    div-float v5, v3, v12

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_1

    .line 7
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/if;->final(FF)V

    return-void

    .line 8
    :cond_1
    iget v4, v0, Landroid/support/v4/ec;->case:F

    mul-float v15, v4, p3

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_3

    mul-float v4, v4, v11

    sub-float/2addr v4, v2

    .line 9
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    const/16 v16, 0x1

    :goto_1
    if-nez v16, :cond_4

    const/high16 v2, 0x3fe00000    # 1.75f

    const/16 v17, 0x0

    goto :goto_2

    :cond_4
    move/from16 v17, v3

    const/4 v2, 0x0

    :goto_2
    add-float v3, v12, v13

    mul-float v3, v3, v3

    add-float v4, v17, v13

    mul-float v5, v4, v4

    sub-float/2addr v3, v5

    float-to-double v5, v3

    .line 10
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    sub-float v5, v14, v3

    add-float v18, v14, v3

    div-float/2addr v3, v4

    float-to-double v3, v3

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v8, v3

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v3, v8

    add-float v19, v3, v2

    .line 12
    invoke-virtual {v9, v5, v10}, Lcom/google/android/material/shape/if;->final(FF)V

    sub-float v3, v5, v13

    const/4 v4, 0x0

    add-float/2addr v5, v13

    mul-float v20, v13, v11

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p4

    move/from16 v6, v20

    move/from16 v21, v8

    .line 13
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/if;->do(FFFFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v16, :cond_5

    sub-float v3, v14, v12

    neg-float v4, v12

    sub-float v4, v4, v17

    add-float v5, v14, v12

    sub-float v6, v12, v17

    sub-float v7, v2, v19

    mul-float v19, v19, v11

    sub-float v8, v19, v2

    move-object/from16 v2, p4

    .line 14
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/if;->do(FFFFFF)V

    goto :goto_3

    .line 15
    :cond_5
    iget v3, v0, Landroid/support/v4/ec;->if:F

    mul-float v16, v15, v11

    add-float v4, v3, v16

    sub-float v5, v14, v12

    add-float v6, v15, v3

    neg-float v6, v6

    add-float v7, v5, v4

    add-float v8, v3, v15

    sub-float v17, v2, v19

    mul-float v3, v19, v11

    sub-float/2addr v3, v2

    div-float v22, v3, v11

    move-object/from16 v2, p4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move/from16 v7, v17

    move/from16 v8, v22

    .line 16
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/if;->do(FFFFFF)V

    add-float v5, v14, v12

    .line 17
    iget v2, v0, Landroid/support/v4/ec;->if:F

    div-float v3, v2, v11

    add-float/2addr v3, v15

    sub-float v3, v5, v3

    add-float/2addr v2, v15

    invoke-virtual {v9, v3, v2}, Lcom/google/android/material/shape/if;->final(FF)V

    .line 18
    iget v2, v0, Landroid/support/v4/ec;->if:F

    add-float v16, v16, v2

    sub-float v3, v5, v16

    add-float v4, v15, v2

    neg-float v4, v4

    add-float v6, v2, v15

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float v8, v19, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/if;->do(FFFFFF)V

    :goto_3
    sub-float v3, v18, v13

    const/4 v4, 0x0

    add-float v5, v18, v13

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v21

    move-object/from16 v2, p4

    move/from16 v6, v20

    move/from16 v8, v21

    .line 19
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/if;->do(FFFFFF)V

    .line 20
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/if;->final(FF)V

    return-void
.end method

.method public new()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ec;->new:F

    return v0
.end method

.method public super(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/ec;->try:F

    return-void
.end method

.method public this()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroid/support/v4/ec;->try:F

    return v0
.end method

.method public try()F
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/ec;->case:F

    return v0
.end method
