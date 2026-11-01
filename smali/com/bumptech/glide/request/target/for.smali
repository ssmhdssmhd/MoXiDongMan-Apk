.class public final Lcom/bumptech/glide/request/target/for;
.super Landroid/support/v4/ht;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/ht<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final case:Landroid/os/Handler;

.field private static final try:I = 0x1


# instance fields
.field private final new:Lcom/bumptech/glide/goto;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/target/for$do;

    invoke-direct {v2}, Lcom/bumptech/glide/request/target/for$do;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/request/target/for;->case:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/goto;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/support/v4/ht;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/request/target/for;->new:Lcom/bumptech/glide/goto;

    return-void
.end method

.method public static if(Lcom/bumptech/glide/goto;II)Lcom/bumptech/glide/request/target/for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/goto;",
            "II)",
            "Lcom/bumptech/glide/request/target/for<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/target/for;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/target/for;-><init>(Lcom/bumptech/glide/goto;II)V

    return-object v0
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/for;->new:Lcom/bumptech/glide/goto;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/goto;->this(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lcom/bumptech/glide/request/target/for;->case:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
