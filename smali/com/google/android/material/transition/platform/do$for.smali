.class final Lcom/google/android/material/transition/platform/do$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FFFF)Lcom/google/android/material/transition/platform/if;
    .locals 2

    const/16 p4, 0xff

    const/4 v0, 0x0

    .line 1
    invoke-static {p4, v0, p2, p3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->while(IIFFF)I

    move-result v1

    .line 2
    invoke-static {v0, p4, p2, p3, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->while(IIFFF)I

    move-result p1

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/material/transition/platform/if;->if(II)Lcom/google/android/material/transition/platform/if;

    move-result-object p1

    return-object p1
.end method
