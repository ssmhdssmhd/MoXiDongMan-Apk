.class public Lcom/bumptech/glide/request/transition/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/for$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final do:Lcom/bumptech/glide/request/transition/for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/for<",
            "*>;"
        }
    .end annotation
.end field

.field private static final if:Lcom/bumptech/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/transition/for;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/for;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/transition/for;->do:Lcom/bumptech/glide/request/transition/for;

    .line 2
    new-instance v0, Lcom/bumptech/glide/request/transition/for$do;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/for$do;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/transition/for;->if:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/bumptech/glide/request/transition/Transition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/transition/for;->do:Lcom/bumptech/glide/request/transition/for;

    return-object v0
.end method

.method public static if()Lcom/bumptech/glide/request/transition/TransitionFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/transition/TransitionFactory<",
            "TR;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/transition/for;->if:Lcom/bumptech/glide/request/transition/TransitionFactory;

    return-object v0
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
