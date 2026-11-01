.class Lcom/google/android/material/transition/platform/goto$case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# instance fields
.field private final do:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final for:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final if:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final new:Lcom/google/android/material/transition/platform/goto$try;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/transition/platform/goto$try;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/material/transition/platform/goto$case;->do:Lcom/google/android/material/transition/platform/goto$try;

    .line 4
    iput-object p2, p0, Lcom/google/android/material/transition/platform/goto$case;->if:Lcom/google/android/material/transition/platform/goto$try;

    .line 5
    iput-object p3, p0, Lcom/google/android/material/transition/platform/goto$case;->for:Lcom/google/android/material/transition/platform/goto$try;

    .line 6
    iput-object p4, p0, Lcom/google/android/material/transition/platform/goto$case;->new:Lcom/google/android/material/transition/platform/goto$try;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/goto$case;-><init>(Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;Lcom/google/android/material/transition/platform/goto$try;)V

    return-void
.end method

.method public static synthetic do(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/goto$case;->do:Lcom/google/android/material/transition/platform/goto$try;

    return-object p0
.end method

.method public static synthetic for(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/goto$case;->for:Lcom/google/android/material/transition/platform/goto$try;

    return-object p0
.end method

.method public static synthetic if(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/goto$case;->if:Lcom/google/android/material/transition/platform/goto$try;

    return-object p0
.end method

.method public static synthetic new(Lcom/google/android/material/transition/platform/goto$case;)Lcom/google/android/material/transition/platform/goto$try;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/transition/platform/goto$case;->new:Lcom/google/android/material/transition/platform/goto$try;

    return-object p0
.end method
