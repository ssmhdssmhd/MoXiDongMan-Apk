.class Lcom/google/android/material/transition/platform/goto$goto$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/goto$goto;->catch(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/transition/platform/goto$goto;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transition/platform/goto$goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto$goto$if;->do:Lcom/google/android/material/transition/platform/goto$goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/goto$goto$if;->do:Lcom/google/android/material/transition/platform/goto$goto;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/goto$goto;->for(Lcom/google/android/material/transition/platform/goto$goto;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
