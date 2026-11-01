.class Lcom/google/android/material/progressindicator/if$do;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/if;->while()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/android/material/progressindicator/if;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/progressindicator/if$do;->do:Lcom/google/android/material/progressindicator/if;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/progressindicator/if$do;->do:Lcom/google/android/material/progressindicator/if;

    .line 3
    invoke-static {p1}, Lcom/google/android/material/progressindicator/if;->this(Lcom/google/android/material/progressindicator/if;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/google/android/material/progressindicator/if$do;->do:Lcom/google/android/material/progressindicator/if;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/if;->catch(Lcom/google/android/material/progressindicator/if;)Landroid/support/v4/n7;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/n7;->for:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/if;->break(Lcom/google/android/material/progressindicator/if;I)I

    return-void
.end method
