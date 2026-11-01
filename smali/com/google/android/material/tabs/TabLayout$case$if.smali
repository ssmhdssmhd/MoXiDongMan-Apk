.class Lcom/google/android/material/tabs/TabLayout$case$if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$case;->this(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/google/android/material/tabs/TabLayout$case;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$case;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$case$if;->if:Lcom/google/android/material/tabs/TabLayout$case;

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout$case$if;->do:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$case$if;->if:Lcom/google/android/material/tabs/TabLayout$case;

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$case$if;->do:I

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$case;->if:I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$case$if;->if:Lcom/google/android/material/tabs/TabLayout$case;

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$case$if;->do:I

    iput v0, p1, Lcom/google/android/material/tabs/TabLayout$case;->if:I

    return-void
.end method
