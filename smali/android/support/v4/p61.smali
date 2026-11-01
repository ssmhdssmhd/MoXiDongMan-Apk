.class public final Landroid/support/v4/p61;
.super Landroid/support/v4/a60;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/a60;

.field private final if:F


# direct methods
.method public constructor <init>(Landroid/support/v4/a60;F)V
    .locals 0
    .param p1    # Landroid/support/v4/a60;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/support/v4/a60;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/p61;->do:Landroid/support/v4/a60;

    .line 3
    iput p2, p0, Landroid/support/v4/p61;->if:F

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/p61;->do:Landroid/support/v4/a60;

    invoke-virtual {v0}, Landroid/support/v4/a60;->do()Z

    move-result v0

    return v0
.end method

.method public if(FFFLcom/google/android/material/shape/if;)V
    .locals 2
    .param p4    # Lcom/google/android/material/shape/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroid/support/v4/p61;->do:Landroid/support/v4/a60;

    iget v1, p0, Landroid/support/v4/p61;->if:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/a60;->if(FFFLcom/google/android/material/shape/if;)V

    return-void
.end method
